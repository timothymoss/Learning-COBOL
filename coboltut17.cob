       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut17.
AUTHOR. Timothy Moss.
DATE-WRITTEN. December 21st 2022
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
       01 CustTable.
              02 CustName OCCURS 5 TIMES.
                     03 FName PIC X(15).
                     03 LName PIC X(15).
PROCEDURE DIVISION.
       MOVE "Tom" TO FName(1).
       MOVE "Freeman" TO LName(1).
       MOVE "Betty" TO FName(2).
       MOVE "White" TO LName(2).
       DISPLAY CustName(2).
       Display CustTable.

STOP RUN.
