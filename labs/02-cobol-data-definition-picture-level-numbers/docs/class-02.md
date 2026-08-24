# Class 02 — COBOL Data Definition, PICTURE Clauses and Level Numbers

## Purpose

This class follows the video material: data-names, PICTURE/PIC, the symbols `9`, `X`, `A`, `S` and `V`, and COBOL level numbers. The practical exercise intentionally remains small. The goal is to understand how COBOL describes and organizes business data rather than to introduce advanced program logic.

## 1. A COBOL data item is a description

A declaration such as:

```cobol
05 WS-EMP-ID PIC 9(5).
```

contains three different ideas:

- `05` describes the item's structural level.
- `WS-EMP-ID` is the data-name used by the program.
- `PIC 9(5)` describes the elementary item's logical form.

This is important in COBOL because programs commonly process records made of related fields, not only isolated variables.

## 2. Data-names

A data-name identifies an item so later COBOL statements can refer to it. Descriptive names make record layouts and business rules readable. Prefixes such as `WS-` are conventions, not a special COBOL type; here they indicate Working-Storage items.

## 3. PICTURE / PIC

`PICTURE`, normally abbreviated `PIC`, describes the characteristics of an elementary data item. It should not be reduced to “the COBOL version of a type”: a picture can also describe length, numeric positions, sign and an assumed decimal position.

### `9` — numeric position

`PIC 9(5)` describes five numeric positions. The `(5)` is repetition notation: it is equivalent in intent to writing five `9` symbols.

### `X` — alphanumeric position

`PIC X(20)` describes twenty alphanumeric positions. In the lab it is used for the employee name and department.

### `A` — alphabetic position

The video also introduces `A` for alphabetic positions. It belongs to the theory of PICTURE symbols, although this lab does not force it into the program merely to demonstrate it.

### `S` — signed numeric data

`S` indicates that a numeric item is signed, for example `PIC S9(5)`. This matters for quantities that can logically be positive or negative. Physical sign representation is deliberately left for a later class on numeric storage/USAGE.

### `V` — assumed decimal point

`V` represents an assumed decimal point. In:

```cobol
PIC 9(5)V99
```

COBOL treats the value as having five integer positions and two fractional positions, but `V` is not a stored printable decimal character.

The lab proves this experimentally. `WS-SALARY` is initialized to `32500.50`, while a direct `DISPLAY WS-SALARY` produces `3250050`. The decimal position is part of the numeric description, not part of the raw displayed character sequence. Formatting a value for human presentation is a separate topic.

## 4. Level numbers

Level numbers describe hierarchy. They do not represent byte sizes and they do not mean “variable number five”.

The lab uses:

```cobol
01 WS-EMPLOYEE.
   05 WS-EMP-ID ...
   05 WS-EMP-NAME ...
```

`WS-EMPLOYEE` is the higher-level group and the `05` items are subordinate fields.

Leaving gaps such as `01`, `05`, `10` is a common layout practice because intermediate levels can later be inserted without renumbering everything.

## 5. Group and elementary items

`WS-EMPLOYEE` is a group item: it groups subordinate data. `WS-EMP-ID`, `WS-EMP-NAME`, `WS-DEPARTMENT` and `WS-SALARY` are elementary items because each has its own `PIC`.

This hierarchical model becomes especially important later with file records, copybooks, VSAM records and database-oriented structures.

## 6. Special levels mentioned in the video

The video mentions the normal hierarchy and special levels including `66`, `77` and `88`.

- Normal levels are used to describe hierarchical records.
- `66` is associated with `RENAMES`.
- `77` denotes a stand-alone elementary item.
- `88` defines a condition-name associated with values of another data item.

They are documented here because they belong to the video material, but they are not artificially inserted into the Lab 02 program. They deserve practical treatment when the corresponding language features are used.

## 7. Fixed-format source lesson from the lab

The first compilation failed because `PROCEDURE DIVISION` was incorrectly aligned: the initial `P` fell in column 7, the Indicator Area. The compiler therefore reported the column-7 problem and did not recognize `PROCEDURE` correctly.

In traditional fixed-format COBOL:

- columns 1–6: sequence area
- column 7: indicator area
- columns 8–11: Area A
- columns 12–72: Area B

Division headers belong in Area A. Once `PROCEDURE DIVISION` was corrected, the apparent `DISPLAY` and `STOP` errors disappeared because they had been cascading errors rather than independent defects.

## 8. What this lab adds after Lab 01

Lab 01 answered: “How is a minimal COBOL batch program compiled, linked and executed?”

Lab 02 answers: “How does COBOL describe and organize data?”

The compile/link/run mechanism is reused as infrastructure; the learning objective is now the Data Division and data representation.
