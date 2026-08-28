# Lab 04 — COBOL Data Movement, String Handling and Conditions

## Status

**Completed and validated.**

---

## Part 1 — Data Movement and String Handling

### Scope

- MOVE
- Reference modification
- STRING
- UNSTRING

### Verified results

```text
MOVE: MAINFRAME -> MAINFRAME
Reference modification: 2026-08-28 -> 2026 / 08 / 28
STRING: 28/08/2026
UNSTRING: 2026 / 08 / 28
```

### Theory

See:

```text
docs/part-01-theory.md
```

### Evidence

See:

```text
evidence/part-01/
```

---

## Part 2 — Conditions and Decision Logic

### Scope

- EVALUATE
- WHEN OTHER
- Level-88 condition-names
- SET condition-name TO TRUE

### Verified results

```text
EVALUATE: SYS -> SYSTEMS
WHEN OTHER: XYZ -> UNKNOWN
88 level: A -> ACTIVE
88 level: I -> INACTIVE
SET EMP-ACTIVE TO TRUE: I -> A -> ACTIVE
```

### Theory

See:

```text
docs/part-02-theory.md
```

### Evidence

See:

```text
evidence/part-02/
```

---

## z/OS members

```text
IBMUSER.COBOL.SRC(MOVE04)
IBMUSER.COBOL.JCL(MOVE04)
IBMUSER.COBOL.LOAD(MOVE04)
```

## Troubleshooting

A real `RC=12` caused by fixed-format placement of `VALUE` was diagnosed from the compiler listing and corrected.

See:

```text
docs/troubleshooting-rc12.md
```

## Final progression

```text
Part 1
MOVE
  -> Reference modification
  -> STRING
  -> UNSTRING

Part 2
EVALUATE
  -> WHEN OTHER
  -> Level 88
  -> SET ... TO TRUE
```
