sections = require( "src/content/sections" )

require( "src/xform/util" )

local template = [[
#%s.sections
    h2 %s
    p.binary %s
    
include %s.pug
]]
function sectionToInclude( p, i )
    return template:format( p.id, p.title, numberToString( i, 2 ), p.id )
end

jade = table.concat( map( sections, sectionToInclude ), "\n" )

print( jade )
