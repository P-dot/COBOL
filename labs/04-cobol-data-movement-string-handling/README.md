# Lab 04 — COBOL Data Movement and String Handling

## Status
**Part 1 completed and validated. Lab 04 remains open for Part 2.**

## Objective
Demonstrate COBOL data manipulation with `MOVE`, reference modification, `STRING`, and `UNSTRING`.

## Members
```text
IBMUSER.COBOL.SRC(MOVE04)
IBMUSER.COBOL.JCL(MOVE04)
IBMUSER.COBOL.LOAD(MOVE04)
```

## Flow
```text
MOVE -> positional extraction -> STRING -> UNSTRING
```

The JCL uses the already validated `IGYWCLG` procedure with `LNGPRFX='IGY420'`.

## Validation
The supplied SDSF evidence shows successful build/execution and the final output confirms:
- `MAINFRAME` copied correctly.
- `2026-08-28` split positionally into `2026`, `08`, `28`.
- `STRING` produced `28/08/2026`.
- `UNSTRING` recovered `2026`, `08`, `28` using `-`.

## Evidence
See `evidence/screenshots/`.

## Theory
See `docs/part-01-theory.md`.

## Continuation
Part 2 will continue the same Lab 04 with the next concepts from the source material.
