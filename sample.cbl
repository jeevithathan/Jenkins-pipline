IDENTIFICATION DIVISION.                                       
       PROGRAM-ID. PRG25.                                             
       ENVIRONMENT DIVISION.                                          
       DATA DIVISION.                                                 
       WORKING-STORAGE SECTION.                                       
       01 MAX-NUM.                                                    
           05 NUM                       PIC 9(2) OCCURS 5 TIMES.                     
       77 IDX                           PIC 9(2) VALUE 1.                            
       77 MAX                           PIC 9(2) VALUE 0.                            
       PROCEDURE DIVISION.                                            
       MAIN-PARA.                                                     
           PERFORM ACCEPT-PARA.                                       
           PERFORM COMP-PARA.                                         
           STOP RUN.                                                  
       ACCEPT-PARA.                                                   
           PERFORM VARYING IDX FROM 1 BY 1 UNTIL IDX > 5              
              ACCEPT NUM(IDX)                                         
           END-PERFORM.                                               
       COMP-PARA.                                                     
           PERFORM VARYING IDX FROM 1 BY 1 UNTIL IDX > 5              
              IF NUM(IDX) > MAX                                       
                 MOVE NUM(IDX) TO MAX                                 
              END-IF   
              IF NUM(IDX) < MAX
                 DISPLAY 'IT IS NOT MAX'
              END-IF
              IF NUM(IDX) < MAX
                 DISPLAY 'New Block from Feature1'
              END-IF
           END-PERFORM.                                               
           DISPLAY MAX. 
