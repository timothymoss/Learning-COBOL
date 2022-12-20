       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut11.
AUTHOR. Timothy Moss.
DATE-WRITTEN. December 20th 2022
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
       SELECT CustomerFile ASSIGN TO "Customer.dat"
              ORGANIZATION IS LINE SEQUENTIAL
              ACCESS IS SEQUENTIAL.
DATA DIVISION.
FILE SECTION.
FD CustomerFile.
       01 CustomerData.
              02 IDNum PIC 9(5).
              02 CustomerName.
                     03 FirstName PIC X(15).
                     03 LastName PIC X(15).
WORKING-STORAGE SECTION.
01 WSCustomer.
              02 WSIDNum PIC 9(5).
              02 WSCustomerName.
                     03 WSFirstName PIC X(15).
                     03 WSLastName PIC X(15).

PROCEDURE DIVISION.
OPEN OUTPUT CustomerFile.
       MOVE 00001 TO IDNum.
       MOVE "Doug" TO FirstName.
       MOVE "Thomas" TO LastName.
       WRITE CustomerData
       END-WRITE.
CLOSE CustomerFile.


STOP RUN.
