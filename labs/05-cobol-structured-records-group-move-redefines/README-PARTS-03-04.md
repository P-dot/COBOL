# Lab 05 — Parts 3 and 4 Continuation

## Status
**Parts 3 and 4 completed and validated. Lab 05 is technically complete.**

This package is an additive continuation of the already published Parts 1 and 2. It must not delete or overwrite their documentation or evidence.

## Part 3 — MOVE CORRESPONDING
Scope:
- Structured source and target groups
- `MOVE CORRESPONDING`
- Repeated subordinate data-names
- Qualification with `OF`
- Source-only field with no target correspondence

Verified:
```text
ID   : 00002
NAME : COBOL DEVELOPER
DEPT : DEV
```

Documentation: `docs/part-03-move-corresponding.md`  
Evidence: `evidence/part-03/`

## Part 4 — INITIALIZE
Scope:
- `INITIALIZE` on a group item
- Before/after validation
- Visible field boundaries
- Final regression validation of Parts 1–4

Verified:
```text
BEFORE: 00002 / COBOL DEVELOPER / DEV
AFTER : spaces / spaces / spaces
```

Documentation: `docs/part-04-initialize.md`  
Evidence: `evidence/part-04/`

## Final Lab 05 progression
```text
Part 1 -> Structured records + GROUP MOVE
Part 2 -> REDEFINES
Part 3 -> MOVE CORRESPONDING + qualified data-names
Part 4 -> INITIALIZE + final regression validation
```

## Final execution
```text
COBOL compilation : RC=0000
Link-edit          : RC=0000
Execution / GO     : RC=0000
Statements flagged : none
Warnings           : none
Errors             : none
```

## z/OS members
```text
IBMUSER.COBOL.SRC(GROUP05)
IBMUSER.COBOL.JCL(GROUP05)
IBMUSER.COBOL.LOAD(GROUP05)
```

`cobol/GROUP05-final.cbl` contains the final cumulative Parts 1–4 source.

## Preservation rule
When installing this continuation, preserve:
```text
README.md
docs/part-01-theory.md
docs/part-02-theory.md
evidence/part-01/
evidence/part-02/
PART-01-COMPLETED.txt
PART-02-COMPLETED.txt
```
Parts 3 and 4 are added alongside them; they do not replace them.
