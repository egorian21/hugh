team = require( "src/content/team" )

require( "src/xform/util" )

function nameCompare( a, b )
    if a.surname == b.surname 
        then return a.forename < b.forename 
        else return a.surname < b.surname
    end
end

function memberJade( indent )
    return function( p )
        indent = indent or ""
        local jade = indent..".member#"..p.id.."\n"
        jade = jade..indent..string.format("    .intro-face(style='background-image: url(images/photo/%s')\n", p.photo )
        jade = jade..indent..string.format("    a(href='%s') %s %s\n", p.web, p.forename, p.surname)
        jade = jade..indent..string.format("    p %s\n", p.type )
        jade = jade..indent..string.format("    p %s\n", p.subject or "" )
        jade = jade..indent..string.format("    p %s\n", p.now or "" )
        return jade
    end
end


current = sort( toSeq( team ), nameCompare )

jade = [[
//- .sub-sections
//-    h2 Current Crop

.content
    .container]].."\n"..
        table.concat( map( current, memberJade( "        " )))

old = [[
.sub-sections
    h2 Onwards and Upwards

.content
    .container
        #blank.current-icon
        .current-name
            a(href="javascript:void(0)") John Doe
        .current-bio
            p Wisi et et quis gothica zzril. Illum tempor parum quis sed vulputate. Facit parum litterarum formas anteposuerit typi. Hendrerit dolore lorem in vel dynamicus. Aliquam nam praesent sequitur nobis enim. Doming claritatem quod formas congue etiam. Accumsan ut aliquip id quam esse. Mirum lobortis non imperdiet sequitur luptatum. Et nulla facer quarta adipiscing legentis. Autem humanitatis nobis typi dolore at. Dynamicus quarta quinta lectorum accumsan vel. Ullamcorper clari duis modo commodo habent. Enim lobortis at ea congue nunc. Volutpat processus esse claritatem et in. Dignissim assum consequat futurum liber aliquam.
        
        .spacer
    
        #blank.current-icon
        .current-name
            a(href="javascript:void(0)") Jane Snow
        .current-bio
            p Wisi et et quis gothica zzril. Illum tempor parum quis sed vulputate. Facit parum litterarum formas anteposuerit typi. Hendrerit dolore lorem in vel dynamicus. Aliquam nam praesent sequitur nobis enim. Doming claritatem quod formas congue etiam. Accumsan ut aliquip id quam esse. Mirum lobortis non imperdiet sequitur luptatum. Et nulla facer quarta adipiscing legentis. Autem humanitatis nobis typi dolore at. Dynamicus quarta quinta lectorum accumsan vel. Ullamcorper clari duis modo commodo habent. Enim lobortis at ea congue nunc. Volutpat processus esse claritatem et in. Dignissim assum consequat futurum liber aliquam.
]]

print( jade )
