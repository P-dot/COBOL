# Lab 04 — Part 1 theory

Part 1 covers `MOVE`, reference modification, `STRING` and `UNSTRING`.

## MOVE
Transfers content from a sending item to a receiving item. The source remains available.

## Reference modification
`WS-DATE(1:4)`, `(6:2)` and `(9:2)` select year, month and day from the fixed layout `2026-08-28`. This is positional, so a future layout change can create a logical error even if compilation succeeds.

## STRING
Combines the extracted components into `28/08/2026`. `DELIMITED BY SIZE` uses the complete sending-item size. The X(10) receiver exactly fits the result.

## UNSTRING
Splits `2026-08-28` using `-` as delimiter into year, month and day fields. This contrasts delimiter-based separation with positional reference modification.

## Validated output
```text
ORIGINAL NAME : MAINFRAME
COPIED NAME   : MAINFRAME
ORIGINAL DATE : 2026-08-28
YEAR          : 2026
MONTH         : 08
DAY           : 28
NEW DATE      : 28/08/2026
UNSTRING YEAR  : 2026
UNSTRING MONTH : 08
UNSTRING DAY   : 28
```

Part 1 ends here. The next concepts from the training material are reserved for Part 2.
