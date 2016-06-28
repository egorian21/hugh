sections = require( "src/content/sections" )

require( "src/xform/util" )

function sectionToItem( s )
    local tmplt = "li\n    a(href='#%s') %s\n" 
    return tmplt:format( s.id, s.title )
end

jade = table.concat( map( sections, sectionToItem ))

print( jade )
