       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut06.
AUTHOR. Timothy Moss.
DATE-WRITTEN. December 20th 2022
ENVIRONMENT DIVISION.

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
       01 Num1       PIC 9 VALUE 5.
       01 Num2       PIC 9 VALUE 4.
       01 Sum1       PIC 99.
PROCEDURE DIVISION.
CALL 'coboltut06getsum' USING Num1, Num2, Sum1.
DISPLAY Num1 " + " Num2 " = " Sum1

STOP RUN.
