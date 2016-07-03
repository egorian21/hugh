projects = require( "src/content/projects" )

require( "src/xform/util" )

local template = [[
.sub-sections
    h2 %s
.content
    .container
        %s
        
%s

        %s
]]
local function projectToPug( p, i )
    local title = p.title
    if p.acronym then title = p.acronym.." - "..title end
    if p.funder then
        local fundtmpl = "\n    p Project supported by: <a href='%s'><img src='images/logo/%s' title='%s'/></a>"
        local fund= fundtmpl:format( p.funder.web or "#void", p.funder.logo or "", p.funder.name )
        title = title..fund
    end
    local function person( d )
        local link = string.format( "<a href='#%s'>%s %s</a>", d.id, d.forename, d.surname )
        return "<li>"..link
    end
    local people = "<ul>"..table.concat( map( p.people, person ))
    local body = table.concat( map( p.desc, function( d ) return "        p.\n"..d end ), "\n" )
    local site = p.web and string.format( "a( href='%s') Website", p.web ) or ""
    return template:format( title, people, body, site )
end

jade = table.concat( map( projects, projectToPug ), "\n" )

print( jade )
