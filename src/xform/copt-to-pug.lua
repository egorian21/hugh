package.path = package.path..";"..( arg[ 1 ] or "/Users/hughleat/Documents/university/courses/copt" ).."/?.lua"
info = require( "info" )
require( "src/xform/util" )

local template = [[
.sub-sections
    h2 UG4 and MSc - Compiler Optimisation - %d
.content
    a( href="http://www.inf.ed.ac.uk/teaching/courses/copt/") Course page
    p.
        This course introduces students to modern techniques in efficient implementation of programming languages. Modern
        processors and systems are designed based on the assumption that a compiler will be able to effectively exploit
        architectural resources. This course will examine in detail techniques to exploit instruction level parallelism, memory
        hierarchy and higher level parallelism. It will examine classic static analysis approaches to these problems and introduce
        newer feedback directed and dynamic approaches to optimisation. The course work will require students to implement selected
        optimisations in a research compiler.

%s
    table.teaching
        tr
            th( colspan = 5 ) Timetable Semester %d
        tr 
            td( width="80") <b>Day</b>
            td <b>Start</b>
            td <b>Finish</b>
            td <b>Building</b>
            td <b>Room</b>
        %s
    
    table.teaching
        tr
            th( colspan = 2 ) Coursework
        tr 
            td <b>Deadline</b>
            td %s
        tr 
            td <b>Feedback</b>
            td %s
        tr
            th( colspan = 2 ) Lecture Notes
    table.teaching
        tr
            td %s
]]

local function timetable()
    local buf = ""
    for i,v in ipairs( info.timetable ) do
        local function cell( s ) return "<td>"..s.."</td>" end
        local bldg = ([[<a href="%s">%s</a>]]):format( v.buildingURL, v.building )
        buf = buf .. "<tr>"..cell(v.day)..cell(v.start)..cell(v.finish)..cell(bldg)..cell(v.room).."</tr>"
    end
    return buf
end

local function slides( n, incomplete )
    local template = [[<td><a href="lecture-%d.pdf">%d</a></td>]]
    local links = {}
    for i = 1, n do table.insert( links, template:format( i, i )) end
    return table.concat( links )
end

local function notice()
    local template = [[
    table.teaching
        tr.notice
            th Notice
        tr.notice
            td %s
    ]]
    if info.notice and info.notice.web then
        return template:format( info.notice.web )
    else
        return ""
    end
end

local html = 
    "<!-- File generated from index.lua and index.html -->\n"..
    template:format(
        info.year,
        notice(),
        info.semester, 
        timetable(),
        info.coursework.deadline, 
        info.coursework.feedback,
        slides( info.slides.count, info.slides.incomplete )
    )

print( html )