       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut16.
AUTHOR. Timothy Moss.
DATE-WRITTEN. December 21st 2022
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
       01 Table1.
              02 Friend PIC X(15) OCCURS 4 TIMES.
PROCEDURE DIVISION.
       MOVE "Tom" TO Friend(1).
       MOVE "Mary" TO Friend(2).
       MOVE "Larry" TO Friend(3).
       DISPLAY Friend(2).
       Display Table1.

STOP RUN.