       IDENTIFICATION DIVISION.
       PROGRAM-ID. GROUP05.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-EMPLOYEE.
           05 WS-EMP-ID       PIC X(5)  VALUE '00001'.
           05 WS-EMP-NAME     PIC X(20) VALUE 'MAINFRAME OPERATOR'.
           05 WS-EMP-DEPT     PIC X(3)  VALUE 'SYS'.
       01  WS-EMPLOYEE-COPY.
           05 WS-COPY-ID      PIC X(5).
           05 WS-COPY-NAME    PIC X(20).
           05 WS-COPY-DEPT    PIC X(3).
       01  WS-DATE-RAW        PIC X(8) VALUE '20260828'.
       01  WS-DATE-PARTS REDEFINES WS-DATE-RAW.
           05 WS-DATE-YEAR    PIC X(4).
           05 WS-DATE-MONTH   PIC X(2).
           05 WS-DATE-DAY     PIC X(2).
       PROCEDURE DIVISION.
           DISPLAY '--- ORIGINAL RECORD ---'.
           DISPLAY 'ID   : ' WS-EMP-ID.
           DISPLAY 'NAME : ' WS-EMP-NAME.
           DISPLAY 'DEPT : ' WS-EMP-DEPT.
           MOVE WS-EMPLOYEE TO WS-EMPLOYEE-COPY.
           DISPLAY '--- COPIED RECORD ---'.
           DISPLAY 'ID   : ' WS-COPY-ID.
           DISPLAY 'NAME : ' WS-COPY-NAME.
           DISPLAY 'DEPT : ' WS-COPY-DEPT.
           DISPLAY '--- REDEFINES ---'.
           DISPLAY 'RAW DATE : ' WS-DATE-RAW.
           DISPLAY 'YEAR     : ' WS-DATE-YEAR.
           DISPLAY 'MONTH    : ' WS-DATE-MONTH.
           DISPLAY 'DAY      : ' WS-DATE-DAY.
           STOP RUN.
