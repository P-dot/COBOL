# Class 01 — Basic COBOL Program Structure and Working-Storage

## Objective

Create and execute a small COBOL program that introduces the basic program structure and one alphanumeric variable in `WORKING-STORAGE`.

## Concepts

### IDENTIFICATION DIVISION
Identifies the source program. `PROGRAM-ID. COBLAB01.` gives this program its logical name.

### DATA DIVISION
Describes data used by the program.

### WORKING-STORAGE SECTION
Defines internal data that exists while the program runs.

### PIC X(30)
`PIC` describes the data item. `X(30)` reserves 30 alphanumeric character positions.

### VALUE
Initializes `WS-MESSAGE` with the text `FIRST COBOL PROGRAM LAB`.

### PROCEDURE DIVISION
Contains executable statements.

### DISPLAY
Writes the value of `WS-MESSAGE` to the program output.

### STOP RUN
Terminates the COBOL program.

## Execution flow

`COBOL source -> IGYWCLG -> compile -> link-edit -> execute -> SYSOUT/SDSF`

The JCL uses the already available `IGYWCLG` cataloged procedure and the COBOL compiler prefix `IGY420`.
