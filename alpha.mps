************************************************************************        
*                                                                               
*  The data in this file represents the following problem:                      
*                                                                               
*  Minimize or maximize Z = x1 + 2x5 - x8                                       
*                                                                               
*  Subject to:                                                                  
*                                                                               
*  2.5 <=   3x1 +  x2         -  2x4 - x5               -    x8                 
*                 2x2 + 1.1x3                                   <=  2.1         
*                          x3              +  x6                 =  4.0         
*  1.8 <=                      2.8x4             -1.2x7         <=  5.0         
*  3.0 <= 5.6x1                      + x5               + 1.9x8 <= 15.0         
*                                                                               
*  where:                                                                       
*                                                                               
*  2.5 <= x1                                                                    
*    0 <= x2 <= 4.1                                                             
*    0 <= x3                                                                    
*    0 <= x4                                                                    
*  0.5 <= x5 <= 4.0                                                             
*    0 <= x6                                                                    
*    0 <= x7                                                                    
*    0 <= x8 <= 4.3                                                             
*                                                                               
*  x3, x4 are 0,1 variables.                                                    
*                                                                               
************************************************************************        
NAME          EXAMPLE                                                           
ROWS                                                                            
 N  OBJ                                                                         
 E  ROW01                                                                       
 L  ROW02                                                                       
 L  ROW03                                                                       
 L  ROW04                                                                       
 E  ROW05                                                                       
 E  ROW11                                                                       
 E  ROW22                                                                       
 E  ROW33                                                                       
 E  ROW44                                                                       
 E  ROW55                                                                       
COLUMNS   
    INT1      'MARKER'                 'INTORG'
    X12     OBJ                1     ROW22              -1      
    X12     ROW11              1     ROW01              1
    X23     ROW02              1     ROW33              -1                   
    X23     OBJ                2     ROW22              1
    X24     OBJ                1     ROW02              1   
    X24     ROW44             -1     ROW22              1
    X35     OBJ                1     ROW33              1
    X35     ROW03              1     ROW55              -1
    X45     OBJ                3     ROW44              1
    X45     ROW04              1     ROW55              -1     
    X51     OBJ                1     ROW55              1
    X51     ROW11              -1    ROW05              1
    INT1END   'MARKER'                 'INTEND'                                 

*                                                                               
*  Mark COL03 and COL04 as integer variables.                                   
*                                                                               
*    INT1      'MARKER'                 'INTORG'                                 
*    COL03     ROW02              1.1   ROW03              1.0                   
*    COL04     ROW01             -2.0   ROW04              2.8                   
*    INT1END   'MARKER'                 'INTEND'                                 
*                                                                               
RHS                                                                             
    RHS1      ROW01              1                                            
    RHS1      ROW02              1                                            
    RHS1      ROW03              1                                            
    RHS1      ROW04              1                                            
    RHS1      ROW05              1                                            
    RHS1      ROW11              0
    RHS1      ROW22              0
    RHS1      ROW33              0
    RHS1      ROW44              0
    RHS1      ROW55              0
RANGES                                                                          
    RNG1      ROW02              1                                            
    RNG1      ROW03              1                                            
    RNG1      ROW04              1                                            
*BOUNDS                                                                          
* LO BND1      COL01              2.5                                            
* UP BND1      COL02              4.1                                            
* LO BND1      COL05              0.5                                            
* UP BND1      COL05              4.0                                            
* UP BND1      COL08              4.3                                            
ENDATA         
