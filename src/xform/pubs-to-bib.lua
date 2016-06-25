pubs = require( "src/data/pubs" )

require( "src/xform/util" )
require( "src/xform/pub-to-bib" )

papers = filter( pubs, function( p ) return isMember( {"article", "inproceedings", "phdthesis", "mastersthesis"}, p.type ) end )
bibtex = table.concat( map( papers, pubToBib ))

print( bibtex )