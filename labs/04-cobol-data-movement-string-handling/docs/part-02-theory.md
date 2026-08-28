# Lab 04 — Part 2: Conditions and Decision Logic

## Scope

Part 2 covers:

- EVALUATE
- WHEN OTHER
- Level-88 condition-names
- SET condition-name TO TRUE

## EVALUATE

`EVALUATE` performs multi-way selection.

The lab validates two paths:

```text
SYS -> SYSTEMS
XYZ -> WHEN OTHER -> UNKNOWN
```

`WHEN OTHER` acts as the fallback for values not matched by an earlier `WHEN`.

## Level-88 condition-names

A level-88 item does not allocate independent storage. It gives a semantic name to a value of its parent item.

```cobol
01 WS-EMP-STATUS PIC X VALUE 'I'.
   88 EMP-ACTIVE   VALUE 'A'.
   88 EMP-INACTIVE VALUE 'I'.
```

Validated behavior:

```text
A -> ACTIVE
I -> INACTIVE
```

## SET ... TO TRUE

`SET EMP-ACTIVE TO TRUE` uses the VALUE associated with `EMP-ACTIVE` and updates the parent field.

Validated output:

```text
STATUS BEFORE SET : I
STATUS AFTER SET  : A
EMPLOYEE STATUS   : ACTIVE
```

## Troubleshooting

An intermediate compile returned RC=12 because a VALUE clause was incorrectly positioned in fixed-format COBOL source. The compiler listing identified the root problem. The declaration was rewritten on one safe source line and the program was recompiled successfully.
