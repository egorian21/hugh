require( "src/xform/util" )

function pubToBib( p, indent )
    local lines = {}

    indent = indent or ""
    table.insert( lines, indent..string.format( "    author = {%s}", table.concat( p.authors or {}, " and " )))
    
    for k,v in pairs( p ) do
        if not( isMember( {"type", "authors", "bibtex", "files", "abstract", "notes"}, k )) then
            table.insert( lines, indent..string.format( "    %s = {%s}", k, v ))
        end
    end
    
    return 
        indent..string.format( "@%s{ %s,\n", p.type, p.bibtex or "" )..
        table.concat( lines, ",\n" ).."\n"..
        indent.."}\n"
end
