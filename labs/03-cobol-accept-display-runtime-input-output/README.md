# Lab 03 — COBOL ACCEPT and DISPLAY: Runtime Input and Output

## Objective

Demonstrate runtime input with `ACCEPT`, runtime output with `DISPLAY`, and the separation between compile/link-edit and execution.

## Members

```text
IBMUSER.COBOL.SRC(INPUT03)
IBMUSER.COBOL.JCL(CMPIN03)
IBMUSER.COBOL.JCL(RUNIN03)
IBMUSER.COBOL.LOAD(INPUT03)
```

## Build

`CMPIN03` uses `IGYWCL` to compile and link-edit `INPUT03`. Compilation completed with return code 0 and no statements flagged.

## Execution

`RUNIN03` executes `PGM=INPUT03` from `IBMUSER.COBOL.LOAD`.

First run:

```text
INPUT RECEIVED: MAINFRAME
```

Second run, without recompilation:

```text
INPUT RECEIVED: COBOL LAB 03
```

## Key lesson

The source and load module did not change between runs. Only runtime input changed.

## Evidence

See `evidence/screenshots/`.

## Theory

See `docs/class-03.md`.
