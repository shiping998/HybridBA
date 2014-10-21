module ANNEXSUBCLAUSELIBRARY-SYNTAX

  syntax AnnexSubclause ::=  Mannex  AnnexId AnnexSubclauseAssocDef  MSemicolon 
  syntax AnnexId ::= Id
  syntax AnnexSubclauseAssocDef ::=  MAsteriskBrace1  AnnexSpecLangConstructs  MAsteriskBrace2 
                                  |  MAsteriskBrace1  AnnexSpecLangConstructs  MAsteriskBrace2  InModes
                                  | NoneStatement
                                  | NoneStatement InModes

  syntax AnnexLibrary ::=  Mannex  AnnexId AnnexLibraryAssocDef  MSemicolon 
  syntax AnnexLibraryAssocDef ::=  MAsteriskBrace1  AnnexSpecReusableConstructs  MAsteriskBrace2 
                                |  MAsteriskBrace1  AnnexSpecReusableConstructs  MAsteriskBrace2  InModes
                                | NoneStatement 
								| NoneStatement InModes
								
  syntax AnnexSpecReusableConstructs ::= NODEF
                
  syntax AnnexSpecLangConstructsElem ::= Mstate Mvariables
                                       | Mstate Mvariables BehaviorVariableDeclList   
                                       | Mstates BehaviorStateList
                                       | Minitially AssignmentList
                                       | Mtransitions BehaviorStateTransitionList
                                       | Mmode Mtransitions BehaviorStateTransitionList
                                       | CompositeDeclList    
  
  syntax AnnexSpecLangConstructs ::= AnnexSpecLangConstructsElem
                                   | AnnexSpecLangConstructsElem AnnexSpecLangConstructs
  
  
  syntax BehaviorVariableDeclList ::= BehaviorVariableDecl
                                    | BehaviorVariableDecl BehaviorVariableDeclList
                                    
  syntax BehaviorStateList ::= BehaviorState                                  
                             | BehaviorState BehaviorStateList      
                                    
  syntax AssignmentList ::= Assignment                                   
                          | Assignment AssignmentList           
                                     
  syntax BehaviorStateTransitionList ::= BehaviorStateTransition                                   
                                       | BehaviorStateTransition BehaviorStateTransitionList                                  
   
  syntax CompositeDeclList ::= CompositeDecl                                   
                             | CompositeDecl CompositeDeclList     
   
                                    
endmodule

