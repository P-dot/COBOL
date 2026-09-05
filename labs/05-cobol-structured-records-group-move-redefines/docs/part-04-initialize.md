# Lab 05 — Part 4: INITIALIZE and Final Regression Validation

## Objective
Complete Lab 05 by using `INITIALIZE` on the target group and validating the complete Parts 1–4 program in one final run.

## Starting state
After Part 3, `WS-TARGET-REC` contains:

```text
CORR-ID   = 00002
CORR-NAME = COBOL DEVELOPER
CORR-DEPT = DEV
```

## Key statement
```cobol
INITIALIZE WS-TARGET-REC.
```

The target is a group containing three alphanumeric elementary items. The final execution demonstrates that their contents are reset to spaces.

## Visible field boundaries
The program places `>` and `<` around the fields so the spaces remain visible in SYSOUT.

Before:
```text
--- BEFORE INITIALIZE ---
ID   : >00002<
NAME : >COBOL DEVELOPER     <
DEPT : >DEV<
```

After:
```text
--- AFTER INITIALIZE ---
ID   : >     <
NAME : >                    <
DEPT : >   <
```

The fields retain their defined lengths of 5, 20, and 3 positions.

## Final cumulative validation
The final execution preserved all previous functions:

```text
Part 1 — GROUP MOVE
00001 / MAINFRAME OPERATOR / SYS

Part 2 — REDEFINES
20260828 -> 2026 / 08 / 28

Part 3 — MOVE CORRESPONDING
00002 / COBOL DEVELOPER / DEV

Part 4 — INITIALIZE
target values -> spaces
```

The final compiler listing reports:
- Source records: 58
- Data Division statements: 22
- Procedure Division statements: 29
- Statements flagged: none
- Return code: 0

The message summary contains no terminal, severe, error, or warning messages. Compilation, link-edit, and GO all complete with condition code 0000.

## Result
Part 4 completes the technical scope of Lab 05. No additional COBOL changes are required.

## Evidence
See `evidence/part-04/`.
