# Troubleshooting — RC=12

An intermediate compile returned RC=12. The first severe diagnostic identified an invalid `VALUE` clause in fixed-format source. The declaration was rewritten on a single line:

```cobol
01  WS-DEPARTMENT PIC X(3) VALUE 'SYS'.
```

The later executions succeeded. The lesson is to diagnose the first root compiler error before treating later parser-recovery messages as independent faults.
