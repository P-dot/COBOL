# Part 2 — REDEFINES

`REDEFINES` provides an alternative description of the same storage; it does not copy the data.

The lab defines `WS-DATE-RAW PIC X(8)` containing `20260828` and overlays it with:
- YEAR `X(4)`
- MONTH `X(2)`
- DAY `X(2)`

Both descriptions occupy the same eight positions: `8 = 4 + 2 + 2`.

## Validated output
```text
--- REDEFINES ---
RAW DATE : 20260828
YEAR     : 2026
MONTH    : 08
DAY      : 28
```

The final execution also preserved the Part 1 GROUP MOVE output, with no regression. The compiler reported no statements flagged and return code 0.
