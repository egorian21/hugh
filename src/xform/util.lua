------------------------------------------------------------------------------
-- List functions
------------------------------------------------------------------------------

-- Map elements - f takes ( v, i )
function map( xs, f )
    local acc = {}
    for i,v in ipairs( xs ) do
        table.insert( acc, f( v, i ))
    end
    return acc
end
-- Filter elements - f takes ( v, i )
function filter( xs, f )
    local acc = {}
    for i,v in ipairs( xs ) do
        if f( v, i ) then table.insert( acc, v ) end
    end
    return acc
end    
-- Sort elements - f takes ( v, i )
function sort( xs, f )
    local acc = {}
    f = f or ( function( a, b ) return a < b end )
    for i,v in ipairs( xs ) do
        table.insert( acc, v )
    end
    table.sort( acc, f )
    return acc
end
-- Create list from table (just values)
function toSeq( tbl )
    local acc = {}
    for _,v in pairs( tbl ) do
        table.insert( acc, v )
    end
    return acc
end
-- Check if a value is in a list
function isMember( xs, x ) 
    for _,v in ipairs( xs ) do
        if v == x then return true end
    end
    return false
end
            

------------------------------------------------------------------------------
-- List functions
------------------------------------------------------------------------------

-- Check that a file exists
function fileExists( name )
   local f = io.open( name, "r" )
   if f ~= nil then io.close( f ) return true else return false end
end