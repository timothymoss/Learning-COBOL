       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut.
AUTHOR. Timothy Moss.
DATE-WRITTEN. December 20th 2022
ENVIRONMENT DIVISION.

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.

PROCEDURE DIVISION.
SubOne.
       DISPLAY "In paragraph 1"
       PERFORM SubTwo
       DISPLAY "Returned to Paragraph 1"
       Perform SubFour 2 TIMES
       DISPLAY "Repeat"
       STOP RUN.
SubThree.
       DISPLAY "In paragraph 3".

SubTwo.
       DISPLAY "In paragraph 2"
       PERFORM SubThree
       DISPLAY "Returned to paragraph 2".

SubFour.
       DISPLAY "Repeat".

STOP RUN.
