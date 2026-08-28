# Lab 05 — COBOL Structured Records, GROUP MOVE and REDEFINES

## Status
**Parts 1 and 2 completed and validated. Parts 3 and 4 pending.**

> Parts 3 and 4 are intentionally not mixed into this checkpoint. When added later, Part 1 and Part 2 must remain separate and preserved.

## Part 1 — Structured Records and GROUP MOVE
### Scope
- Level numbers 01 / 05
- Group items
- Elementary items
- 28-position record layout
- GROUP MOVE

### Verified result
```text
ORIGINAL: 00001 / MAINFRAME OPERATOR / SYS
COPIED  : 00001 / MAINFRAME OPERATOR / SYS
```

Theory: `docs/part-01-theory.md`  
Evidence: `evidence/part-01/`

## Part 2 — REDEFINES
### Scope
- Alternative descriptions of the same storage
- REDEFINES
- Compatible storage lengths

### Verified result
```text
RAW DATE : 20260828
YEAR     : 2026
MONTH    : 08
DAY      : 28
```

Theory: `docs/part-02-theory.md`  
Evidence: `evidence/part-02/`

## z/OS members
```text
IBMUSER.COBOL.SRC(GROUP05)
IBMUSER.COBOL.JCL(GROUP05)
IBMUSER.COBOL.LOAD(GROUP05)
```

## Validation
```text
COBOL compilation : RC=0000
Link-edit          : RC=0000
Execution          : RC=0000
```

## Pending
Part 3 and Part 4 will be developed next and later added as separate sections/evidence directories without replacing Parts 1 or 2.
