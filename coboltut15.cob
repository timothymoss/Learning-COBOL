       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut15.
AUTHOR. Timothy Moss.
DATE-WRITTEN. December 21st 2022
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
       SELECT CustomerFile ASSIGN TO "Customer3.dat"
              ORGANIZATION IS INDEXED
              ACCESS MODE IS RANDOM
              RECORD KEY IS IDNum.
DATA DIVISION.
FILE SECTION.
FD CustomerFile.
       01 CustomerData.
              02 IDNum PIC 99.
              02 FirstName PIC X(15).
              02 LastName PIC X(15).
WORKING-STORAGE SECTION.
       01 Choice PIC 9.
       01 StayOpen PIC X VALUE "Y".
       01 CustExists PIC X.

PROCEDURE DIVISION.
       StartPara.
              OPEN I-O CustomerFile.
              PERFORM UNTIL StayOpen="N"
                     DISPLAY " "
                     DISPLAY "CUSTOMER RECORDS"
                     DISPLAY "1 : Add Customer"
                     DISPLAY "2 : Delete Customer"
                     DISPLAY "3 : Update Customer"
                     DISPLAY "4 : Get Customer"
                     DISPLAY "0 : Quit"
                     DISPLAY ": " WITH NO ADVANCING
                     ACCEPT Choice
                     EVALUATE Choice
                            WHEN 1 PERFORM AddCust
                            WHEN 2 PERFORM DeleteCust
                            WHEN 3 PERFORM UpdateCust
                            WHEN 4 PERFORM GetCust
                            WHEN OTHER MOVE "N" TO StayOpen
                     END-EVALUATE
              END-PERFORM
              CLOSE CustomerFile.
              STOP RUN.

AddCust.
       DISPLAY " "
       DISPLAY "Enter ID : " WITH NO ADVANCING.
       ACCEPT IDNum.
       DISPLAY "Enter First Name : " WITH NO ADVANCING.
       ACCEPT FirstName.
       DISPLAY "Enter Last Name : " WITH NO ADVANCING.
       ACCEPT LastName.
       DISPLAY " "
       WRITE CustomerData
              INVALID KEY DISPLAY "ID is Taken"
       END-WRITE.


DeleteCust.
       DISPLAY " "
       DISPLAY "Enter Customer ID to Delete : " WITH NO ADVANCING.
       ACCEPT IDNum.
       DELETE CustomerFile
              INVALID KEY DISPLAY "ID doesn't exist."
       END-DELETE.

UpdateCust.
       MOVE "Y" TO CustExists.
       DISPLAY " "
       DISPLAY "Enter ID to update : " WITH NO ADVANCING.
       ACCEPT IDNum.
       READ CustomerFile
              INVALID KEY MOVE "N" TO CustExists
       END-READ.
       IF CustExists="N"
              DISPLAY "Customer doesn't exist."
       ELSE
              DISPLAY "Enter new first name : " WITH NO ADVANCING
              ACCEPT FirstName
              DISPLAY "Enter new last name : " WITH NO ADVANCING
              ACCEPT LastName
       END-IF.
       REWRITE CustomerData
              INVALID KEY DISPLAY "Customer wasn't updated."
       END-REWRITE.

GetCust.
       MOVE "Y" TO CustExists.
       DISPLAY " "
       DISPLAY "Enter customer ID to find : " WITH NO ADVANCING.
       ACCEPT IDNum.
       READ CustomerFile
              INVALID KEY MOVE "N" TO CustExists
       END-READ
       IF CustExists="N"
              DISPLAY "Customer doesn't exist."
       ELSE
              DISPLAY "ID : " IDNum
              DISPLAY "First name : " FirstName
              DISPLAY "Last name : " LastName
       END-IF.
