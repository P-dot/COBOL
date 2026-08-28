# Lab 04 — COBOL Data Movement, String Handling and Conditions

## Status
**Completed and validated.**

## Scope
- MOVE
- Reference modification
- STRING
- UNSTRING
- EVALUATE / WHEN OTHER
- Level-88 condition-names
- SET condition-name TO TRUE

## z/OS members
```text
IBMUSER.COBOL.SRC(MOVE04)
IBMUSER.COBOL.JCL(MOVE04)
IBMUSER.COBOL.LOAD(MOVE04)
```

## Verified results
```text
MOVE: MAINFRAME -> MAINFRAME
Reference modification: 2026-08-28 -> 2026 / 08 / 28
STRING: 28/08/2026
UNSTRING: 2026 / 08 / 28
EVALUATE: SYS -> SYSTEMS
WHEN OTHER: XYZ -> UNKNOWN
88 level: A -> ACTIVE; I -> INACTIVE
SET EMP-ACTIVE TO TRUE: I -> A -> ACTIVE
```

## Troubleshooting
A real RC=12 caused by fixed-format placement of `VALUE` was diagnosed from the compiler listing and corrected. See `docs/troubleshooting-rc12.md`.

## Evidence
See `evidence/screenshots/`.

## Theory
See `docs/class-04.md`.
