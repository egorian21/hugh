pubs = require( "src/content/pubs" )

require( "src/xform/util" )
require( "src/xform/pub-to-bib" )

papers = filter( pubs, function( p ) return isMember( {"inbook", "article", "inproceedings", "proceedings", "phdthesis", "mastersthesis"}, p.type ) end )
bibtex = "<pre>\n"..table.concat( map( papers, function( p ) return pubToBib( p ) end )).."\n</pre>"

print( bibtex )