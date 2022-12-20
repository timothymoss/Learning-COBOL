       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut04.
AUTHOR. Timothy Moss.
DATE-WRITTEN. December 20th 2022
ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
SPECIAL-NAMES.
       CLASS PassingScore IS "A" THRU "C", "D".

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 Age PIC 99 VALUE 0.
01 Grade PIC 99 VALUE 0.
01 Score PIc x(1) VALUE "B".
01 CanVoteFlag PIC 9 VALUE 0.
       88 CanVote VALUE 1.
       88 CantVote VALUE 0.
01 TestNumber PIC X.
       88 IsPrime    VALUE "1", "3", "5", "7".
       88 IsOdd      VALUE "1", "3", "5", "7", "9".
       88 IsEven     VALUE "2", "4", "6", "8".
       88 LessThan5  VALUE "1" THRU "4".
       88 ANumber    VALUE "0" THRU "9".
PROCEDURE DIVISION.
DISPLAY "Enter age : " WITH NO ADVANCING
ACCEPT Age
*> > GREATER THAN
*> < LESS THAN
*> = EQUAL TO
*> NOTE EQUAL TO
*> <=
*> >=
IF Age > 17 THEN
       DISPLAY "You can vote"
ELSE
       DISPLAY "You can't vote"
END-IF
IF Age LESS THAN 5 THEN
       DISPLAY "Stay home"
END-IF
IF Age = 5 THEN
       DISPLAY "Go to Kindergarten"
END-IF
IF Age GREATER THAN 5 AND LESS THAN 18 THEN
       COMPUTE Grade = Age - 5
       DISPLAY "Go to grade " Grade
END-IF
IF Age >= 18
       DISPLAY "Go to college"
END-IF

IF Score IS PassingScore THEN
       DISPLAY "You passed"
ELSE
       DISPLAY "You failed"
END-IF
*> Built in classes
*> NUMERIC ALPHABETIC ALPHABETIC-LOWER ALPHABETIC-UPPER
IF Score IS NOT NUMERIC THEN
       DISPLAY "Not a number"
END-IF
IF Age > 17 THEN
       SET CanVote TO TRUE
ELSE
       SET CantVote TO TRUE
END-IF
DISPLAY "Vote " CanVoteFlag

DISPLAY "Enter single number or X to exit"
ACCEPT TestNumber
PERFORM UNTIL NOT ANumber
       EVALUATE TRUE
              WHEN IsPrime DISPLAY "Prime"
              WHEN IsOdd DISPLAY "Odd"
              WHEN IsEven DISPLAY "Even"
              WHEN LessThan5 DISPLAY "Less than 5"
              WHEN OTHER DISPLAY "Default Action"
       END-EVALUATE
       ACCEPT TestNumber
END-PERFORM

STOP RUN.
