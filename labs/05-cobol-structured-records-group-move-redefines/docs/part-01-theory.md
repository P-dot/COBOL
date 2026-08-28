# Part 1 — Structured Records and GROUP MOVE

## Level hierarchy
`01` defines the complete record/group. The subordinate `05` entries describe elementary fields inside that group.

`WS-EMPLOYEE` contains `X(5) + X(20) + X(3) = 28` positions.

## GROUP MOVE
`MOVE WS-EMPLOYEE TO WS-EMPLOYEE-COPY` moves the complete group as one alphanumeric area. It does not match subordinate fields by name.

## Validated output
```text
--- ORIGINAL RECORD ---
ID   : 00001
NAME : MAINFRAME OPERATOR
DEPT : SYS
--- COPIED RECORD ---
ID   : 00001
NAME : MAINFRAME OPERATOR
DEPT : SYS
```

Compilation, link-edit and execution were validated with return code 0.
