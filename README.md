# COBOL Language Engineering Labs on z/OS

> **COBOL language fundamentals, data definition, batch build and execution, runtime I/O, data transformation, diagnostics, and evidence on IBM z/OS.**

This repository is the **COBOL language-engineering domain** of the [IBM z/OS Mainframe Engineering Portfolio](https://github.com/P-dot).

It focuses on learning and validating COBOL mechanics through small, reproducible z/OS labs. General JCL, VSAM, Db2, CICS, scheduler, security, and platform engineering remain owned by their specialized repositories.

**Repository-local validation and wider portfolio integration are deliberately distinguished.**

---

## Navigate

| Destination | Purpose |
|---|---|
| [Lab 01 — Basic Program Structure](labs/01-basic-cobol-program-structure/README.md) | Program structure, `WORKING-STORAGE`, compile/link/run and first verified output |
| [Lab 02 — Data Definition, PICTURE and Levels](labs/02-cobol-data-definition-picture-level-numbers/README.md) | Group/elementary items, `PIC`, assumed decimal point and compiler diagnosis |
| [Lab 03 — ACCEPT and DISPLAY](labs/03-cobol-accept-display-runtime-input-output/README.md) | Runtime I/O and separation between build and execution |
| [Lab 04 — Parts 1–2](labs/04-cobol-data-movement-string-handling/README.md) | `MOVE`, reference modification, `STRING`, `UNSTRING`, `EVALUATE` and level-88 conditions |
| [Lab 04 — Parts 3–4 Continuation](labs/04-part-03-04-move-corresponding-initialize/README.md) | Structured records, `MOVE CORRESPONDING`, qualification and `INITIALIZE` |
| [Ecosystem Integration](docs/ECOSYSTEM-INTEGRATION.md) | Repository ownership, dependencies, validated foundations and integration roadmap |

---

## Repository Role

| Attribute | Scope |
|---|---|
| Engineering domain | Application Programming / COBOL |
| Platform | IBM z/OS |
| Primary language | COBOL |
| Execution model | Batch |
| Build path | COBOL compile → link-edit → load module |
| Runtime path | JCL → JES2 → load module → program output |
| Interactive environment | TSO/E / ISPF |
| Evidence | Compiler, binder, JES/SDSF and runtime results |
| Engineering workflow | Build → Execute → Observe → Diagnose → Correct → Validate → Document |

This repository owns **COBOL language mechanics and COBOL-specific batch examples**.

It does not replace `JCL_LABS` for general JCL, `vsam01` for VSAM, `DB2-` for Db2, `CICS` for CICS administration and transaction processing, `zos-batch-scheduler` for workload orchestration, or the core z/OS repository for platform engineering.

---

## Architecture at a Glance

```text
COBOL source
     |
     v
 COBOL compiler
     |
     v
  link-edit
     |
     v
 load module
     |
     v
execution JCL
     |
     v
    JES2
     |
     v
COBOL runtime
     |
     v
program output
```

The repository progressively moves from program structure to runtime behavior and structured data manipulation without turning the language repository into a Db2, CICS, VSAM, or scheduler repository.

---

## Validated Learning Path

```text
PROGRAM STRUCTURE
       |
       v
WORKING-STORAGE
       |
       v
DATA DEFINITION
       |
       v
PICTURE / LEVELS
       |
       v
COMPILE / LINK / RUN
       |
       v
ACCEPT / DISPLAY
       |
       v
MOVE / DATA TRANSFORMATION
       |
       v
STRING / UNSTRING
       |
       v
CONDITIONS
       |
       v
STRUCTURED RECORD OPERATIONS
       |
       v
MOVE CORRESPONDING
       |
       v
INITIALIZE
```

---

## Lab Progression

| Lab | Engineering focus | Key evidence | State |
|---|---|---|---|
| [01](labs/01-basic-cobol-program-structure/README.md) | Program structure and `WORKING-STORAGE` | COBOL source, `IGYWCLG`, SDSF output and successful `DISPLAY` | Validated |
| [02](labs/02-cobol-data-definition-picture-level-numbers/README.md) | Data definition and fixed-format source | `PIC 9`, `PIC X`, `V`, group/elementary items; real RC=0012 diagnosis and corrected RC=0000 | Validated |
| [03](labs/03-cobol-accept-display-runtime-input-output/README.md) | Runtime input/output | Same load module executed with different input without recompilation | Validated |
| [04 Parts 1–2](labs/04-cobol-data-movement-string-handling/README.md) | Data movement, strings and conditions | `MOVE`, reference modification, `STRING`, `UNSTRING`, `EVALUATE`, level-88; real RC=12 troubleshooting | Validated |
| [04 Parts 3–4](labs/04-part-03-04-move-corresponding-initialize/README.md) | Structured records and initialization | `MOVE CORRESPONDING`, qualified data-names, `INITIALIZE`, final RC=0000 regression | Validated |

### Lab 04 publication structure

Lab 04 is intentionally represented by two separate publication units in the current repository:

```text
labs/04-cobol-data-movement-string-handling/
    |
    +--> Parts 1–2
         MOVE
         reference modification
         STRING / UNSTRING
         EVALUATE
         level-88 conditions

labs/04-part-03-04-move-corresponding-initialize/
    |
    +--> Parts 3–4 continuation
         structured source/target groups
         MOVE CORRESPONDING
         qualification with OF
         INITIALIZE
```

The directories are kept separate to preserve the repository's existing publication history and evidence. The navigation layer describes them as they currently exist rather than renaming or merging historical lab artifacts.

---

## Build Is Not Runtime

Lab 03 establishes an important application-engineering distinction:

```text
BUILD
COBOL source
    |
    v
compile + link
    |
    v
load module
```

and:

```text
RUNTIME
same load module
    |
    +--> runtime input A --> output A
    |
    +--> runtime input B --> output B
```

Changing runtime input did not require recompilation. This separates program construction from program execution and provides a foundation for later scheduler-controlled and subsystem-integrated application flows.

---

## Evidence and Troubleshooting

The repository follows the portfolio evidence workflow:

```text
BUILD
  ↓
EXECUTE
  ↓
OBSERVE
  ↓
DIAGNOSE
  ↓
CORRECT
  ↓
VALIDATE
  ↓
DOCUMENT
```

Successful execution is supported by compiler, binder, JES/SDSF, return-code, and program-output evidence where the corresponding lab records it.

Real failures are retained when they add engineering value. Examples include fixed-format source placement errors that produced compiler failures before correction and successful regression.

The documentation should describe what the captured laboratory evidence demonstrates, not what a tutorial merely expects to happen.

---

## Validation Scope: Local vs Ecosystem

A capability can be proven inside this repository or elsewhere in the wider portfolio. These are not the same claim.

| Capability / relationship | COBOL repository | Portfolio evidence |
|---|---|---|
| COBOL source → compile → link-edit → load module | **VALIDATED LOCALLY** | COBOL Labs 01–04 |
| Load module → JCL/JES2 execution → output | **VALIDATED LOCALLY** | COBOL Labs 01–04 |
| Runtime input without recompilation | **VALIDATED LOCALLY** | COBOL Lab 03 |
| Structured data manipulation | **VALIDATED LOCALLY** | COBOL Lab 04 |
| CICS → COBOL/CICS program execution | Not implemented as a local COBOL integration lab | **VALIDATED IN CICS DOMAIN** |
| COBOL → VSAM application integration | **PLANNED LOCALLY** | Not claimed here as completed |
| COBOL → Db2 application integration | **PLANNED LOCALLY** | Not claimed here as completed |
| Scheduler-controlled COBOL application flow | **PLANNED LOCALLY** | Not claimed here as completed |

This distinction prevents a cross-repository capability from being incorrectly presented as local COBOL evidence while still acknowledging validated engineering work elsewhere in the portfolio.

For the CICS-side implementation, see [CICS Lab 01 — Transaction Processing Fundamentals](https://github.com/P-dot/CICS/tree/main/labs/01-cics-transaction-processing-fundamentals).

---

## Repository Boundaries

```text
TSO/E + ISPF
      |
      v
  JCL / JES2
      |
      v
    COBOL
   /  |   \
  /   |    \
VSAM  Db2  CICS
```

The diagram describes engineering relationships, not completion status.

| Domain | Owner |
|---|---|
| COBOL syntax, semantics and language-focused examples | This repository |
| General JCL, procedures and batch mechanics | [JCL_LABS](https://github.com/P-dot/JCL_LABS) |
| VSAM organization and access-method engineering | [vsam01](https://github.com/P-dot/vsam01) |
| Db2 SQL, catalog and Db2-specific diagnostics | [DB2-](https://github.com/P-dot/DB2-) |
| CICS resources, BMS, runtime and transaction processing | [CICS](https://github.com/P-dot/CICS) |
| RACF authorization and security policy | [mainframe-racf-security-evidence](https://github.com/P-dot/mainframe-racf-security-evidence) |
| Workload orchestration | [zos-batch-scheduler](https://github.com/P-dot/zos-batch-scheduler) |
| Core z/OS system engineering | [zos-adcd-hercules-engineering-lab](https://github.com/P-dot/zos-adcd-hercules-engineering-lab) |

---

## Integration Direction

The language track is intended to evolve without duplicating the repositories that own the surrounding technologies:

```text
COBOL fundamentals
       |
       v
structured data
       |
       v
application logic
       |
       +----------+----------+
       |          |          |
       v          v          v
      VSAM       Db2        CICS
       \          |          /
        \         |         /
         +--------+--------+
                  |
                  v
        integrated application
                  |
                  v
       scheduler / operations
```

The specialized repositories remain the source of truth for their own technologies. Cross-domain work should consume validated fundamentals rather than recreate them.

---

## Repository Structure

```text
COBOL/
├── README.md
├── docs/
│   └── ECOSYSTEM-INTEGRATION.md
└── labs/
    ├── 01-basic-cobol-program-structure/
    ├── 02-cobol-data-definition-picture-level-numbers/
    ├── 03-cobol-accept-display-runtime-input-output/
    ├── 04-cobol-data-movement-string-handling/
    └── 04-part-03-04-move-corresponding-initialize/
```

The root README is the domain landing page. Individual lab READMEs own implementation detail and evidence navigation. `docs/ECOSYSTEM-INTEGRATION.md` owns the deeper dependency, ownership, and roadmap model.

---

## Next Engineering Direction

The validated local foundation now supports later application-oriented work:

```text
language mechanics
       |
       v
structured records
       |
       v
file handling
       |
       +--> VSAM integration
       |
       +--> Db2 integration
       |
       +--> CICS application logic
       |
       v
scheduler-controlled workflows
```

These paths remain planned for this COBOL repository until their implementation and evidence are explicitly validated.

---

## Security and Publication Standard

Before publication, source, JCL, command output, compiler listings, configuration fragments, and screenshots should be reviewed for credentials, tokens, private IP addresses, MAC addresses, host adapter identifiers, unnecessary terminal/session identifiers, and other host-specific information that does not need to be public.

Evidence should remain technically useful after sanitization.

---

## Continue Through the Portfolio

[Portfolio Home](https://github.com/P-dot) ·
[Core z/OS Engineering](https://github.com/P-dot/zos-adcd-hercules-engineering-lab) ·
[JCL](https://github.com/P-dot/JCL_LABS) ·
[CICS](https://github.com/P-dot/CICS) ·
[Db2](https://github.com/P-dot/DB2-) ·
[VSAM](https://github.com/P-dot/vsam01) ·
[RACF Security](https://github.com/P-dot/mainframe-racf-security-evidence)

> Part of the **IBM z/OS Mainframe Engineering Portfolio** — an independent hands-on environment focused on systems, operations, development, security, automation, diagnostics, recovery, and integration.


---

## z/OS Engineering Academy

**Academy role:** Development School — application logic that consumes z/OS batch, VSAM, Db2 and CICS services.

[Start the Academy](https://github.com/P-dot/P-dot/blob/main/docs/ACADEMY.md) · [Course Catalog](https://github.com/P-dot/P-dot/blob/main/docs/COURSES.md) · [Curriculum Graph](https://github.com/P-dot/P-dot/blob/main/docs/CURRICULUM.md) · [Cross-Domain Relationships](https://github.com/P-dot/P-dot/blob/main/docs/RELATIONSHIPS.md)

> Learn the concept → execute the lab → interpret the evidence → understand the subsystem boundary → continue to the next connected course.
