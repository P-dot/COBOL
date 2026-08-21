# Lab 01 — Basic COBOL Program Structure and Working-Storage

## Objective

Compile, link-edit and execute a basic COBOL program on z/OS while introducing a variable defined in `WORKING-STORAGE`.

## Environment

- IBM z/OS ADCD 1.11
- TSO/ISPF
- JES2 / SDSF
- COBOL compiler libraries under `IGY420`
- Cataloged procedure `IGYWCLG`

## z/OS data sets used

- Source: `IBMUSER.COBOL.SRC(COBLAB01)`
- JCL: `IBMUSER.ML.JCL(COBLAB01)`
- Load module: `IBMUSER.COBOL.LOAD(COBLAB01)`

## COBOL concepts demonstrated

- `IDENTIFICATION DIVISION`
- `PROGRAM-ID`
- `DATA DIVISION`
- `WORKING-STORAGE SECTION`
- `PIC X(30)`
- `VALUE`
- `PROCEDURE DIVISION`
- `DISPLAY`
- `STOP RUN`

## JCL flow

The job invokes `IGYWCLG` with `LNGPRFX='IGY420'` and performs:

`COMPILE -> LINK-EDIT -> EXECUTE`

The source is read from `IBMUSER.COBOL.SRC(COBLAB01)`, the load module is written to `IBMUSER.COBOL.LOAD(COBLAB01)`, and the program output is written to `SYSOUT` for review in SDSF.

## Verified result

The supplied SDSF evidence shows the COBOL, link-edit and GO-related output data sets and the executed program output:

```text
FIRST COBOL PROGRAM LAB
```

This confirms that the source was processed through the compile/link/run workflow and that `DISPLAY WS-MESSAGE` produced the expected value.

## Evidence

- `01-cobol-source.png` — COBOL source in ISPF.
- `02-jcl.png` — JCL member using `IGYWCLG`.
- `03-sdsf-dd-list.png` — SDSF job output data set list.
- `04-program-output.png` — final program output.

## Difference from the companion portfolio

The companion repository focuses on establishing and validating the COBOL/DB2/CICS development environment. This repository starts from that working environment and focuses on progressively learning COBOL syntax and program structure.
