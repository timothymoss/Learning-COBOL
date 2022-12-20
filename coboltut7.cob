       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut7.
AUTHOR. Timothy Moss.
DATE-WRITTEN. December 20th 2022
ENVIRONMENT DIVISION.

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
       01 Ind PIC 9(1) VALUE 0.
PROCEDURE DIVISION.
PERFORM OutputData WITH TEST AFTER UNTIL IND > 5
       GO TO ForLoop.

OutputData.
       DISPLAY Ind.
       Add 1 TO Ind.

ForLoop.
       PERFORM OutputData2 VARYING Ind FROM 1 BY 1 UNTIL Ind=5
       STOP RUN.

OutputData2.
       DISPLAY Ind.

