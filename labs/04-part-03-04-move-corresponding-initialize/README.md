# Lab 04 — Parts 3 and 4 Continuation

## Status
**Parts 3 and 4 completed and validated. Lab 04 is technically complete.**

This directory contains Parts 3 and 4 of Lab 04 as a separate publication unit. Parts 1 and 2 remain unchanged in the original Lab 04 directory.

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

## Final Lab 04 progression
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

## Separation rule
Parts 1 and 2 remain in the separate original Lab 04 directory:
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


This directory must not be merged into the Part 1+2 directory.


---
### Continue learning

**Previous:** [04-cobol-data-movement-string-handling](../04-cobol-data-movement-string-handling/)  
**Course:** [Course home](../../README.md)  
**Next:** [Choose the next Academy course](https://github.com/P-dot/P-dot/blob/main/docs/COURSES.md)  
**Academy:** [z/OS Engineering Academy](https://github.com/P-dot/P-dot/blob/main/docs/ACADEMY.md) · [Curriculum](https://github.com/P-dot/P-dot/blob/main/docs/CURRICULUM.md)
