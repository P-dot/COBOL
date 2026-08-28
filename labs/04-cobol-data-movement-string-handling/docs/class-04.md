# Class 04 — Data Movement, String Handling and Conditions

## Part 1
Covers `MOVE`, reference modification, `STRING`, and `UNSTRING`.

`MOVE` transfers content between compatible data items. Reference modification uses `(start:length)` to select positions from a fixed-layout field. `STRING` combines sending items into one receiver; `UNSTRING` separates a sending item into receivers based on delimiters.

Validated examples:
```text
2026-08-28 -> 2026 / 08 / 28
28 + / + 08 + / + 2026 -> 28/08/2026
2026-08-28 --UNSTRING '-'--> 2026 / 08 / 28
```

## Part 2
Covers `EVALUATE`, `WHEN OTHER`, level-88 condition-names, and `SET ... TO TRUE`.

`EVALUATE` performs multi-way selection. The lab demonstrated both a direct match (`SYS -> SYSTEMS`) and the default route (`XYZ -> UNKNOWN`).

Level-88 items do not allocate separate storage. They give semantic names to values of the parent field:

```cobol
01 WS-EMP-STATUS PIC X VALUE 'I'.
   88 EMP-ACTIVE   VALUE 'A'.
   88 EMP-INACTIVE VALUE 'I'.
```

`SET EMP-ACTIVE TO TRUE` writes the associated value (`A`) into the parent item. The final execution proved:

```text
STATUS BEFORE SET : I
STATUS AFTER SET  : A
EMPLOYEE STATUS   : ACTIVE
```

## Troubleshooting
An intermediate compile produced RC=12 because a `VALUE` clause was positioned incorrectly in fixed-format source. The compiler listing identified `VALUE` as invalid. Rewriting the full declaration on one safe source line corrected the issue without any JCL change.
