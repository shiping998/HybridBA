module  NETCOMPONENTACCESS-SYNTAX

    syntax DataAccessSpec ::= Id Mcolon Mprovides Mnet Maccess NetUniCmpClassifierRef
			                | Id Mcolon Mrequires Mnet Maccess NetUniCmpClassifierRef 
			                | Id Mcolon Mprovides Mnet Maccess Id 
			                | Id Mcolon Mrequires Mnet Maccess Id 
    syntax DataAccessRefinement ::= Id Mcolon Mrefined Mto Mprovides Mnet Maccess NetUniCmpClassifierRef 
			                | Id Mcolon Mrefined Mto Mrequires Mnet Maccess NetUniCmpClassifierRef 
			                | Id Mcolon Mrefined Mto Mprovides Mnet Maccess Id 
			                | Id Mcolon Mrefined Mto Mrequires Mnet Maccess Id
			                
    syntax NetUniCmpClassifierRef ::= UniCmpClassifierRef
endmodule
