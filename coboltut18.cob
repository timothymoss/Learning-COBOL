       >>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut18.
AUTHOR. Timothy Moss.
DATE-WRITTEN. December 21st 2022
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
       01 OrderTable.
              02 Product OCCURS 2 TIMES INDEXED BY I.
                     03 ProdName PIC X(10).
                     03 ProdSize OCCURS 3 TIMES INDEXED BY J.
                            04 SizeType PIC A.
PROCEDURE DIVISION.
       SET I J TO 1.
       MOVE "Blue Shirt" TO Product(I).
       MOVE "S" TO ProdSize(I,J).
       SET J UP BY 1.
       MOVE "M" TO ProdSize(I,J).
       SET J DOWN BY 1.
       MOVE "Blue ShirtSMLRed Shirt SML" TO OrderTable.
       PERFORM GetProd VARYING I FROM 1 BY 1 UNTIL I>2.
       GO TO LookUp.

       GetProd.
              DISPLAY Product(I).
              PERFORM GetSizes VARYING J FROM 1 BY 1 UNTIL J>3.
       GetSizes.
              DISPLAY ProdSize(I,J).
       LookUp.
              SET I TO 1.
              SEARCH Product
                     AT END DISPLAY "Product not found."
                     WHEN ProdName (I) = "Red Shirt"
                            DISPLAY "Red shirt found."
              END-SEARCH.
STOP RUN.
