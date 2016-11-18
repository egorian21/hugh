require( "src/xform/util" )

function pubToBib( p, indent )
    local function namelist( list ) 
        return table.concat( list or {}, " and " )
    end
    
    local lines = {}

    indent = indent or ""
    if p.authors then 
        table.insert( lines, indent..string.format( "    author = {%s}", namelist( p.authors )))
    end
    if p.editors then 
        table.insert( lines, indent..string.format( "    editor = {%s}", namelist( p.editors )))
    end
    
    for k,v in pairs( p ) do
        if not( isMember( {"type", "authors", "editors", "bibtex", "files", "abstract", "notes"}, k )) then
            table.insert( lines, indent..string.format( "    %s = {%s}", k, v ))
        end
    end
    
    return 
        indent..string.format( "@%s{ %s,\n", p.type, p.bibtex or "" )..
        table.concat( lines, ",\n" ).."\n"..
        indent.."}\n"
end
