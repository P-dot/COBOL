# Class 03 — ACCEPT, DISPLAY and Runtime Input/Output

The supplied videos drive this lab: `ACCEPT`, `DISPLAY`, and the distinction between build time and runtime.

## Compile time vs runtime

COBOL source is compiled and link-edited into a load module. Once that executable exists, changing only input data does not require recompilation.

```text
source -> compile -> link-edit -> load module -> run
```

## ACCEPT

`ACCEPT WS-INPUT-DATA` transfers runtime input into the COBOL data item. The item is `PIC X(20)`, so it holds up to twenty alphanumeric positions in this lab.

## DISPLAY

`DISPLAY 'INPUT RECEIVED: ' WS-INPUT-DATA` emits a literal followed by the value received at runtime.

## COBOL vs JCL

COBOL defines the program logic and internal data. JCL defines how z/OS runs the program and supplies resources such as `STEPLIB`, `SYSIN`, and `SYSOUT`.

## Why two jobs?

`CMPIN03` compiles and link-edits with `IGYWCL`. `RUNIN03` executes the already-built `INPUT03` load module. This lets the same executable run with different input values.

## Verified result

Run 1 input:

```text
MAINFRAME
```

Output:

```text
INPUT RECEIVED: MAINFRAME
```

Run 2 input, without recompiling:

```text
COBOL LAB 03
```

Output:

```text
INPUT RECEIVED: COBOL LAB 03
```

This proves that runtime data can change while the compiled program remains unchanged.
