pubs = require( "src/content/pubs" )

require( "src/xform/util" )
require( "src/xform/pub-to-bib" )

papers = filter( pubs, function( p ) return isMember( {"inbook", "article", "inproceedings", "phdthesis", "mastersthesis"}, p.type ) end )
bibtex = table.concat( map( papers, function( p ) return pubToBib( p ) end ))

print( bibtex )