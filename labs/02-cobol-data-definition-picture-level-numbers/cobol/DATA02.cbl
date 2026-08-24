       IDENTIFICATION DIVISION.
       PROGRAM-ID. DATA02.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-EMPLOYEE.
           05 WS-EMP-ID       PIC 9(5)
                              VALUE 10001.
           05 WS-EMP-NAME     PIC X(20)
                              VALUE 'MAINFRAME OPERATOR'.
           05 WS-DEPARTMENT   PIC X(10)
                              VALUE 'SYSTEMS'.
           05 WS-SALARY       PIC 9(5)V99
                              VALUE 32500.50.

       PROCEDURE DIVISION.

           DISPLAY 'EMPLOYEE ID   : ' WS-EMP-ID.
           DISPLAY 'EMPLOYEE NAME : ' WS-EMP-NAME.
           DISPLAY 'DEPARTMENT    : ' WS-DEPARTMENT.
           DISPLAY 'SALARY RAW    : ' WS-SALARY.

           STOP RUN.
