# Lab 04 — Part 1: Data Movement and String Handling

## Scope

Part 1 covers:

- MOVE
- Reference modification
- STRING
- UNSTRING

## MOVE

`MOVE` transfers the contents of a sending item into a receiving item. The source remains available after the transfer.

In the lab:

```text
MAINFRAME -> MAINFRAME
```

## Reference modification

Reference modification uses `(start:length)` to address only part of a field.

For:

```text
2026-08-28
```

the lab extracts:

```text
(1:4) -> 2026
(6:2) -> 08
(9:2) -> 28
```

This technique depends on the positional layout remaining stable.

## STRING

`STRING` combines several values into a single receiving field.

Validated result:

```text
28/08/2026
```

`DELIMITED BY SIZE` uses the complete defined size of each sending item.

## UNSTRING

`UNSTRING` performs the complementary operation. The lab splits:

```text
2026-08-28
```

using `-` as delimiter and obtains:

```text
2026
08
28
```

## Part 1 validated output

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
