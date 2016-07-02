pubs = require( "src/content/pubs" )

require( "src/xform/util" )
require( "src/xform/pub-to-bib" )

local elkey = 0
function pubToPug( indent )
    return function( p, i )
        elkey = elkey + 1
        indent = indent or ""
        
        local jade = indent..".pub.active\n"
        jade = jade..indent..string.format("    b %d %s\n", i, p.title )

        local authors = table.concat( p.authors or {}, ", " )
        jade = jade..indent..string.format("    p %s\n", authors )

        local book = (p.booktitle or "").." "..(p.journal or "").." "..(p.volume or "").." "..(p.pages or "").." "..(p.venue or "").." "..(p.school or "")
        jade = jade..indent..string.format("    p %s\n", book)

        jade = jade..indent..string.format("    p %s %s %s %s\n", p.day or "", p.month or "", p.year or "", p.location or "" )


        local links = map( p.files or {}, function( f ) return string.format( "<a href='publications/%s'>%s</a>", f.path, f.name ) end )
        if p.abstract then 
            table.insert( links, 1, string.format( [[<a href="javascript:toggleRadio('abs%s')">abstract</a>]], elkey )) 
        end
        if p.bibtex then 
            table.insert( links, 1, string.format( [[<a href="javascript:toggleRadio('%s')">bibtex</a>]], "bib"..elkey )) 
        end
        if #links > 0 then 
            jade = jade..indent.."    p "..table.concat( links, " | " ).."\n"
        end

        if p.abstract then 
            jade = jade..indent..string.format( "    p#abs%s.abstract(hidden) %s\n", elkey, string.gsub( p.abstract, "\n", "" ))
        end
        if p.bibtex then 
            jade = jade..indent..string.format( "    p#bib%s.bibtex(hidden)\n", elkey )
            jade = jade..pubToBib( p, indent.."        |" )
        end
        return jade
    end    
end

papers = filter( pubs, function( p ) return isMember( {"inbook", "article", "inproceedings"}, p.type ) end )
talks = filter( pubs, function( p ) return p.type=="talk" end )
theses = filter( pubs, function( p ) return isMember( {"phdthesis", "mastersthesis"}, p.type ) end )

jade = [[
.content
    .container
        .head 
            a( href = 'leather.bib' ) Full BibTex
        .head
            b Papers
]]..        table.concat( map( papers, pubToPug( "        " )))..[[
        .head
            b Theses
]]..        table.concat( map( theses, pubToPug( "        " )))..[[
        .head
            b Invited Talks
]]..        table.concat( map( talks, pubToPug( "        " )))..[[
        .head 
            a( href = 'leather.bib' ) Full BibTex
]]
        

print( jade )
