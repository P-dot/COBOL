# Lab 02 — COBOL Data Definition, PICTURE Clauses and Level Numbers

## Objective

Study how COBOL describes and organizes data using `DATA DIVISION`, `WORKING-STORAGE`, level numbers and PICTURE clauses, then verify the definitions by compiling and executing a small batch program on z/OS.

## Scope

The lab is intentionally introductory. It covers:

- data-names;
- `01` group item and subordinate `05` elementary items;
- `PIC 9` and `PIC X`;
- assumed decimal point `V`;
- `VALUE`;
- direct `DISPLAY` of the defined fields;
- fixed-format source alignment;
- diagnosis of a real compiler failure.

The accompanying theory also explains the video material on `A`, `S`, and special levels `66`, `77`, and `88`, without forcing unused features into the practical program.

## z/OS data sets

```text
IBMUSER.COBOL.SRC(DATA02)   COBOL source
IBMUSER.COBOL.JCL(DATA02)   compile/link/run JCL
IBMUSER.COBOL.LOAD(DATA02)  resulting load module
```

`IBMUSER.COBOL.JCL` was created as the dedicated JCL library for this COBOL learning series.

## Program structure

```text
01 WS-EMPLOYEE
 |
 +-- 05 WS-EMP-ID       PIC 9(5)
 +-- 05 WS-EMP-NAME     PIC X(20)
 +-- 05 WS-DEPARTMENT   PIC X(10)
 +-- 05 WS-SALARY       PIC 9(5)V99
```

## Execution flow

```text
IBMUSER.COBOL.SRC(DATA02)
          |
          v
       IGYWCLG
          |
     +----+----+
     |    |    |
  COMPILE LINK GO
          |
          v
       JES/SDSF
```

## Verified result

The successful run produced condition code `0000` for COBOL, link-edit and execution. The compiler summary reported no statements flagged and highest severity 0.

Program output:

```text
EMPLOYEE ID   : 10001
EMPLOYEE NAME : MAINFRAME OPERATOR
DEPARTMENT    : SYSTEMS
SALARY RAW    : 3250050
```

The last line is deliberate and demonstrates that the `V` in `PIC 9(5)V99` is an assumed decimal point. The logical value was initialized as `32500.50`; the direct raw display does not print a stored decimal point.

## Troubleshooting — RC=0012 to RC=0000

The first compilation ended with `RC=0012`.

The compiler reported that an invalid character was present in column 7 and that `PROCEDURE` was not correctly recognized. The root cause was fixed-format alignment: the `P` in `PROCEDURE DIVISION` had fallen in the Indicator Area.

The later errors on `DISPLAY` and `STOP` were cascading errors. The compiler summary showed zero Procedure Division statements because the division header itself had not been parsed correctly.

After moving `PROCEDURE DIVISION` into Area A, the same JCL was resubmitted. No JCL change was necessary.

Final result:

```text
COBOL  RC=0000
LKED   RC=0000
GO     RC=0000
```

This incident is retained as evidence because it demonstrates reading the compiler listing and distinguishing the root error from secondary diagnostics.

## Evidence

The `evidence/screenshots` directory contains the source/JCL, successful job execution, compiler/binder information, DD list and final SYSOUT captured during the lab.

## Theory

See [`docs/class-02.md`](docs/class-02.md) for the expanded class notes that follow the supplied video material and complement it with IBM COBOL concepts.

## Relationship to Lab 01

Lab 01 established the basic COBOL program and compile/link/run workflow. Lab 02 deliberately reuses that workflow and moves the learning focus to COBOL data definition and record structure.
