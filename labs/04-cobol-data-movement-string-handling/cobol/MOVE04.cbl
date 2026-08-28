       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVE04.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-NAME          PIC X(10)
                            VALUE 'MAINFRAME'.
       01  WS-NAME-COPY     PIC X(10).

       01  WS-DATE          PIC X(10)
                            VALUE '2026-08-28'.

       01  WS-YEAR          PIC X(4).
       01  WS-MONTH         PIC X(2).
       01  WS-DAY           PIC X(2).

       01  WS-NEW-DATE      PIC X(10).

       01  WS-YEAR-2        PIC X(4).
       01  WS-MONTH-2       PIC X(2).
       01  WS-DAY-2         PIC X(2).

       01  WS-DEPARTMENT    PIC X(3) VALUE 'XYZ'.
       01  WS-DEPT-NAME     PIC X(20).

       01  WS-EMP-STATUS    PIC X VALUE 'I'.
           88  EMP-ACTIVE       VALUE 'A'.
           88  EMP-INACTIVE     VALUE 'I'.

       PROCEDURE DIVISION.

           MOVE WS-NAME TO WS-NAME-COPY.

           MOVE WS-DATE(1:4) TO WS-YEAR.
           MOVE WS-DATE(6:2) TO WS-MONTH.
           MOVE WS-DATE(9:2) TO WS-DAY.

           STRING
               WS-DAY   DELIMITED BY SIZE
               '/'      DELIMITED BY SIZE
               WS-MONTH DELIMITED BY SIZE
               '/'      DELIMITED BY SIZE
               WS-YEAR  DELIMITED BY SIZE
               INTO WS-NEW-DATE
           END-STRING.

           MOVE SPACES TO WS-YEAR-2.
           MOVE SPACES TO WS-MONTH-2.
           MOVE SPACES TO WS-DAY-2.

           UNSTRING WS-DATE
               DELIMITED BY '-'
               INTO WS-YEAR-2
                    WS-MONTH-2
                    WS-DAY-2
           END-UNSTRING.

           EVALUATE WS-DEPARTMENT
               WHEN 'SYS'
                   MOVE 'SYSTEMS' TO WS-DEPT-NAME
               WHEN 'HR '
                   MOVE 'HUMAN RESOURCES' TO WS-DEPT-NAME
               WHEN 'FIN'
                   MOVE 'FINANCE' TO WS-DEPT-NAME
               WHEN OTHER
                   MOVE 'UNKNOWN' TO WS-DEPT-NAME
           END-EVALUATE.

           IF EMP-ACTIVE
               DISPLAY 'EMPLOYEE STATUS : ACTIVE'
           ELSE
               DISPLAY 'EMPLOYEE STATUS : INACTIVE'
           END-IF.

           DISPLAY 'STATUS BEFORE SET : ' WS-EMP-STATUS.

           SET EMP-ACTIVE TO TRUE.

           DISPLAY 'STATUS AFTER SET  : ' WS-EMP-STATUS.

           IF EMP-ACTIVE
               DISPLAY 'EMPLOYEE STATUS : ACTIVE'
           ELSE
               DISPLAY 'EMPLOYEE STATUS : INACTIVE'
           END-IF.

           DISPLAY 'ORIGINAL NAME : ' WS-NAME.
           DISPLAY 'COPIED NAME   : ' WS-NAME-COPY.
           DISPLAY 'ORIGINAL DATE : ' WS-DATE.
           DISPLAY 'YEAR          : ' WS-YEAR.
           DISPLAY 'MONTH         : ' WS-MONTH.
           DISPLAY 'DAY           : ' WS-DAY.
           DISPLAY 'NEW DATE      : ' WS-NEW-DATE.
           DISPLAY 'UNSTRING YEAR  : ' WS-YEAR-2.
           DISPLAY 'UNSTRING MONTH : ' WS-MONTH-2.
           DISPLAY 'UNSTRING DAY   : ' WS-DAY-2.
           DISPLAY 'DEPARTMENT CODE : ' WS-DEPARTMENT.
           DISPLAY 'DEPARTMENT NAME : ' WS-DEPT-NAME.

           STOP RUN.
