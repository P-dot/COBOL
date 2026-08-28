# Troubleshooting — RC=12 fixed-format VALUE clause

## Symptom

An intermediate COBOL compilation returned RC=12 / highest severity 12.

## Root cause

The `VALUE` clause for `WS-DEPARTMENT` was not parsed correctly because of fixed-format source positioning.

## Correction

The declaration was rewritten on a single source line:

```cobol
01  WS-DEPARTMENT PIC X(3) VALUE 'SYS'.
```

No JCL change was required.

## Lesson

In fixed-format COBOL, incorrect positioning can cause the parser to misread a clause and then emit secondary recovery messages. Diagnose the earliest severe message first.
