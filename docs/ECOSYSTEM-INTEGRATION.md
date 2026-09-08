# COBOL Ecosystem Integration

## Role

This repository provides the COBOL language-learning layer of the broader z/OS Engineering Laboratory.

Its purpose is to teach and validate core COBOL programming concepts on z/OS through small, reproducible batch labs. It owns COBOL language fundamentals, compile/link/run workflows, program structure, data definition, runtime input/output, data movement, string handling, conditions and record initialization.

It does not own scheduler orchestration, Db2 architecture, CICS administration, VSAM internals or general JCL fundamentals.

```text
MVS_TSO_ISPF
      |
      v
   JCL_LABS
      |
      v
    COBOL
      |
      +--> VSAM
      |
      +--> DB2
      |
      +--> CICS
      |
      v
zos-batch-scheduler
```

The integration principle is:

```text
Learn and validate COBOL mechanics here.
Consume JCL/JES2 execution patterns from JCL_LABS.
Use specialized repositories for VSAM, Db2, CICS and scheduler behavior.
```

## Upstream Dependencies

### MVS_TSO_ISPF

Provides the interactive environment used to edit source members, maintain JCL, submit jobs and inspect output.

Relationship:

```text
MVS_TSO_ISPF -> COBOL
```

Status: **Foundational dependency**

### JCL_LABS

Provides reusable batch mechanics for compile, link-edit and execution workflows.

The COBOL repository already uses z/OS batch compile/link/run patterns and dedicated JCL members, but JCL syntax and utility fundamentals belong in `JCL_LABS`.

Relationship:

```text
JCL_LABS -> COBOL compile/link/run
```

Status: **Validated foundation**

### z/OS Engineering Laboratory

Provides the ADCD/Hercules platform, JES2 execution context, common engineering methodology and cross-repository architecture.

Status: **Active architectural dependency**

## Current Validated COBOL Foundation

The current repository validates a progression from basic program structure to more structured data manipulation.

### Lab 01 — Basic program structure

Establishes the first COBOL program structure and `WORKING-STORAGE` foundation.

Status: **Validated**

### Lab 02 — Data definition, PICTURE clauses and level numbers

Validated areas include:

- `DATA DIVISION`;
- `WORKING-STORAGE`;
- group and elementary items;
- level numbers;
- `PIC 9`;
- `PIC X`;
- assumed decimal point `V`;
- `VALUE`;
- direct `DISPLAY`;
- fixed-format source alignment;
- diagnosis of a real compiler failure.

The lab also validates the standard batch path:

```text
COBOL source
     |
     v
   IGYWCLG
     |
 +---+---+
 |   |   |
compile link run
     |
     v
JES / SDSF
```

Final result:

```text
COBOL  RC=0000
LKED   RC=0000
GO     RC=0000
```

### Lab 03 — ACCEPT and DISPLAY

Validates runtime input and output and, importantly, the separation between build and execution.

The same load module was executed with different runtime input without recompilation.

Validated concepts:

- `ACCEPT`;
- `DISPLAY`;
- dedicated compile/link JCL;
- separate execution JCL;
- reusable load module;
- runtime input variation.

Status: **Validated**

### Lab 04 — Data movement, strings and conditions

Parts 1 and 2 validate:

- `MOVE`;
- reference modification;
- `STRING`;
- `UNSTRING`;
- `EVALUATE`;
- `WHEN OTHER`;
- level-88 condition names;
- `SET ... TO TRUE`.

The lab also retains real troubleshooting evidence for a fixed-format compiler error and its correction.

Status: **Validated**

### Lab 04 — Parts 3 and 4 continuation

The continuation is intentionally published separately and must remain separate from Parts 1 and 2.

Validated concepts:

- structured source and target groups;
- `MOVE CORRESPONDING`;
- repeated subordinate data-names;
- qualification with `OF`;
- source-only fields;
- `INITIALIZE`;
- before/after validation;
- final regression validation.

Final execution:

```text
COBOL compilation : RC=0000
Link-edit          : RC=0000
Execution / GO     : RC=0000
Statements flagged : none
Warnings           : none
Errors             : none
```

Status: **Validated**

## Validated Capability Progression

```text
program structure
      |
      v
working-storage
      |
      v
data definition
      |
      v
PICTURE / levels
      |
      v
compile / link / run
      |
      v
ACCEPT / DISPLAY
      |
      v
MOVE
      |
      v
reference modification
      |
      v
STRING / UNSTRING
      |
      v
EVALUATE / WHEN OTHER
      |
      v
level-88 conditions
      |
      v
MOVE CORRESPONDING
      |
      v
INITIALIZE
```

## Consumes

This repository consumes:

- TSO/E and ISPF for source/JCL editing and execution control;
- JCL and JES2 for batch compilation, link-edit and execution;
- COBOL compiler and binder services;
- PDS libraries for source, JCL and load modules;
- the shared ADCD laboratory environment.

## Produces

This repository produces:

- COBOL source programs;
- compile/link/run JCL specific to COBOL labs;
- load modules;
- runtime output;
- compiler and binder evidence;
- troubleshooting evidence;
- language-focused theory notes;
- reusable examples for later VSAM, Db2 and CICS integration.

## Validated Integration Paths

### COBOL source to executable load module

```text
COBOL source
     |
     v
compile
     |
     v
link-edit
     |
     v
load module
```

Status: **Validated**

### Load module to JES2 execution

```text
load module
     |
     v
execution JCL
     |
     v
JES2
     |
     v
program output
```

Status: **Validated**

### Runtime input without recompilation

```text
same load module
      |
      +--> input A
      |
      +--> input B
```

Status: **Validated in Lab 03**

### Structured data manipulation

```text
COBOL records
    |
    +--> MOVE
    +--> STRING / UNSTRING
    +--> EVALUATE
    +--> level-88
    +--> MOVE CORRESPONDING
    +--> INITIALIZE
```

Status: **Validated in Lab 04**

## Planned Cross-Repository Paths

The following are architectural targets and must not be interpreted as completed integrations unless validated in their owning repositories.

### COBOL and VSAM

```text
JCL
 |
 v
COBOL
 |
 v
VSAM dataset
```

Target use cases:

- sequential or keyed record access;
- read/update workflows;
- return-code and file-status handling;
- scheduler-controlled VSAM batch flows.

Status: **Planned cross-repository integration**

### COBOL and Db2

```text
JCL
 |
 v
COBOL
 |
 v
Db2
```

Target use cases:

- embedded SQL;
- precompile/compile/link execution flow;
- SQLCODE handling;
- application data access;
- batch transaction workflows.

Status: **Planned cross-repository integration**

### COBOL and CICS

```text
CICS
 |
 v
COBOL program
 |
 v
online transaction logic
```

Target use cases:

- CICS command-level COBOL;
- transaction-oriented application logic;
- later Db2-backed online flows.

Status: **Planned cross-repository integration**

### Scheduler-controlled COBOL batch

```text
zos-batch-scheduler
        |
        v
       JCL
        |
        v
      JES2
        |
        v
      COBOL
        |
        v
   RC / ABEND
        |
        v
scheduler state/history
```

Status: **Planned integration**

## Cross-Repository Production Tracks

### Secure batch application

```text
Scheduler / JCL
      |
      v
     RACF
      |
      v
     VSAM
      |
      v
    COBOL
      |
      v
     SMF
```

### Online transaction application

```text
RACF
 |
 v
CICS
 |
 v
COBOL
 |
 v
DB2
 |
 v
SMF
```

### Enterprise batch processing

```text
Scheduler
   |
   v
JCL / JES2
   |
   v
COBOL
   |
   +--> VSAM
   |
   +--> DB2
   |
   v
RC / ABEND
   |
   v
history / recovery
```

## Integration Status

| Integration | Status | Evidence |
| --- | --- | --- |
| COBOL program structure | Validated | Lab 01 |
| Data definition / PICTURE / levels | Validated | Lab 02 |
| Compile / link / run | Validated | Labs 01-04 |
| Compiler failure diagnosis | Validated | Lab 02 and Lab 04 troubleshooting |
| ACCEPT / DISPLAY runtime I/O | Validated | Lab 03 |
| Separate build and execution | Validated | Lab 03 |
| MOVE / reference modification | Validated | Lab 04 Parts 1-2 |
| STRING / UNSTRING | Validated | Lab 04 Parts 1-2 |
| EVALUATE / level-88 conditions | Validated | Lab 04 Parts 1-2 |
| MOVE CORRESPONDING | Validated | Lab 04 Part 3 |
| INITIALIZE | Validated | Lab 04 Part 4 |
| COBOL -> VSAM | Planned integration | VSAM track |
| COBOL -> Db2 | Planned integration | Db2 track |
| CICS -> COBOL | Planned integration | CICS track |
| Scheduler -> COBOL batch | Planned integration | Scheduler roadmap |
| End-to-end production cycle | Planned | Ecosystem roadmap |

## Scope Boundaries

This repository owns COBOL language mechanics and COBOL-specific batch examples.

It does **not** replace:

- `JCL_LABS` for general JCL syntax, utilities, procedures and dataset mechanics;
- `vsam01` for VSAM organization, IDCAMS design and VSAM-specific behavior;
- `DB2-` for Db2 SQL, catalog, SPUFI and database administration/application topics;
- `CICS` for CICS resource definition, CECI/CEDF, BMS and transaction administration;
- `zos-batch-scheduler` for workload ordering, dependencies, resources, calendars and execution control;
- `mainframe-racf-security-evidence` for RACF authorization and security policy;
- `MVS_TSO_ISPF` for TSO/E and ISPF fundamentals;
- the core z/OS Engineering Laboratory for platform-level JES2, storage, SMF, recovery and system engineering.

The repository should remain focused on the language itself.

```text
COBOL syntax and semantics      -> here
JCL fundamentals               -> JCL_LABS
VSAM internals                 -> vsam01
Db2                            -> DB2-
CICS                           -> CICS
scheduler orchestration        -> zos-batch-scheduler
system engineering             -> core z/OS Engineering Laboratory
```

## Publication Structure Rule

Lab 04 Parts 1-2 and Parts 3-4 are deliberately separate publication units.

They must remain separate:

```text
labs/04-cobol-data-movement-string-handling
labs/04-part-03-04-move-corresponding-initialize
```

The continuation documents the same technical Lab 04 without replacing or merging the original Parts 1-2 directory.

## Development Direction

The language track should continue from isolated syntax toward application-oriented COBOL while preserving repository boundaries.

```text
language fundamentals
      |
      v
structured data
      |
      v
conditions and transformations
      |
      v
file handling
      |
      v
VSAM integration
      |
      v
Db2 integration
      |
      v
CICS transaction logic
      |
      v
scheduler-controlled application workflows
```

Cross-repository application work should reuse the validated fundamentals here rather than duplicating them in integration repositories.

## Engineering and Publication Rules

Each COBOL lab should continue to record:

- objective;
- COBOL concepts introduced;
- source members;
- compile/link/run JCL;
- execution results;
- return codes;
- compiler and binder diagnostics;
- troubleshooting when failures occur;
- evidence;
- theory;
- scope boundaries.

Cross-repository work should follow:

```text
Build -> Execute -> Observe -> Diagnose -> Correct -> Validate -> Document
```

Before publication:

- distinguish COBOL-language validation from subsystem integration;
- preserve RC=0000 evidence for successful compile/link/run paths;
- preserve real compiler diagnostics when troubleshooting contributes learning value;
- do not publish credentials, IP addresses, MAC addresses, terminal/network identifiers or host-side network details;
- keep Lab 04 Parts 1-2 and Parts 3-4 as separate publication units;
- use short-lived branches and merge completed work into `main`.

## Master Architecture

The broader ecosystem architecture is maintained in:

https://github.com/P-dot/zos-adcd-hercules-engineering-lab
