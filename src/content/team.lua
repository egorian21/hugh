local team = {
    skyle = {
        forename = "Stephen",
        surname = "Kyle",
        web = "http://homepages.inf.ed.ac.uk/s0562338/",
        photo = "skyle.jpeg",
        type = "PhD - Graduated 2015",
        subject = "Virtual Machines",
        now = "Researcher at ARM Ltd."
    },

    vseeker = {
        forename = "Volker",
        surname = "Seeker",
        web = "http://homepages.inf.ed.ac.uk/s1160444/",
        photo = "vseeker.jpeg",
        subject = "Low Energy Mobile Systems",
        type = "PhD Student"
    },	

    wogilvie = {
        forename = "William",
        surname = "Ogilvie",
        web = "http://homepages.inf.ed.ac.uk/s0198982/",
        photo = "wogilvie.jpeg",
        subject = "Active Learning for Compilers",
        type = "PhD Student"
    },

    cverbowski = {
        forename = "Chad",
        surname = "Verbowski",
        web = "https://www.linkedin.com/in/verbowski",
        photo = "cverbowski.jpeg",
        subject = "Self Optimising Data Centres",
        type = "PhD Student"
    },	

    ccummins = {
        forename = "Chris",
        surname = "Cummins",
        web = "http://www.inf.ed.ac.uk/people/students/Christopher_Cummins.html",
        photo = "ccummins.jpeg",
        subject = "Deep Learning Over Programs",
        type = "PhD Student"
    },

    pmpeis = {
        forename = "Paschalis",
        surname = "Mpeis",
        web = "http://paschalis.mp/",
        photo = "pmpeis.jpeg",
        subject = "Interactive Iterative Compilation",
        type = "PhD Student"
    },
    
    ppetoumenos = {
        forename = "Pavlos",
        surname = "Petoumenos",
        web = "http://homepages.inf.ed.ac.uk/ppetoume/",
        photo = "ppetoumenos.jpeg",
        subject = "Energy Accounting",
        type = "Post Doc"
    },
    
    oergin = {
        forename = "Oğuz",
        surname = "Ergin",
        web = "http://oergin.kasirgalabs.com/?lang=en",
        photo = "oergin.jpeg",
        type = "Post Doc - Finished 2016",
        subject = "Vertical Data Centre Integration",
        now = "Associate Professor"
    },
    
    rrocha = {
        forename = "Rodrigo",
        surname = "Caetano Rocha",
        web = "http://rcor.me/",
        photo = "rrocha.png",
        subject = "Auto paralellisation",
        type = "PhD Student"
    },
    
}
for k,v in pairs( team ) do
    v.id = k
end
return team
