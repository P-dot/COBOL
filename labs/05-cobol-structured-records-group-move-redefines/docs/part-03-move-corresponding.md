# Lab 05 — Part 3: MOVE CORRESPONDING and Qualified Data-Names

## Objective
Continue the structured-record work from Parts 1 and 2 by demonstrating field-level transfer between group items with `MOVE CORRESPONDING`.

## Structures
The source group contains `CORR-ID`, `CORR-NAME`, `CORR-DEPT`, and an additional `CORR-STATUS`. The target contains only the first three corresponding items.

```text
WS-SOURCE-REC                 WS-TARGET-REC
CORR-ID       ------------->  CORR-ID
CORR-NAME     ------------->  CORR-NAME
CORR-DEPT     ------------->  CORR-DEPT
CORR-STATUS   ----- no corresponding target item
```

## Key statement
```cobol
MOVE CORRESPONDING WS-SOURCE-REC
    TO WS-TARGET-REC.
```

Unlike the Part 1 GROUP MOVE, this operation is based on corresponding subordinate data-names rather than treating the whole group as one alphanumeric area.

## Qualified data-names
Because both groups contain repeated names, the target fields are explicitly qualified:

```cobol
CORR-ID OF WS-TARGET-REC
CORR-NAME OF WS-TARGET-REC
CORR-DEPT OF WS-TARGET-REC
```

This removes ambiguity and identifies the required occurrence.

## Verified output
```text
--- MOVE CORRESPONDING ---
ID   : 00002
NAME : COBOL DEVELOPER
DEPT : DEV
```

## Validation
- COBOL compilation: RC=0000
- Link-edit: RC=0000
- Execution: RC=0000
- Compiler statements flagged: none
- Previous GROUP MOVE and REDEFINES behavior remained valid

## Evidence
See `evidence/part-03/`.
