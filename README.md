# GUILLOTINE

Primitive ID: PRIM-008  
Package: @verifrax/guillotine  
Binary: guillotine

Verifrax primitive — termination primitive for deterministic irreversible systems.

---

## Status

Current release status: pre-stable primitive release line.

Canonical release target:

package version: 0.1.0  
tag: v0.1.0

GUILLOTINE is part of the Verifrax primitive layer and follows the canonical primitive governance, naming, version, and packaging rules.

---

## Purpose

GUILLOTINE terminates lifecycle state after origin, custody, time, boundary, verification, attestation, and judgment have already been completed.

Once a system has established origin, preserved custody, fixed temporal order, enforced operational boundaries, completed verification, produced attestation, and rendered judgment, it still needs a final primitive that can irreversibly terminate the lifecycle under deterministic rules. GUILLOTINE exists to perform that role.

It does not establish origin. It does not preserve custody. It does not set time boundaries. It does not enforce boundaries. It does not perform verification. It does not attest. It does not judge. Its role is narrower: final irreversible termination.

---

## What This Primitive Does

- terminates lifecycle state after deterministic judgment
- produces final irreversible termination output
- closes the primitive chain with a deterministic final state

---

## What This Primitive Does Not Do

- does not establish first origin
- does not preserve custody continuity
- does not fix temporal ordering
- does not enforce operational boundaries
- does not perform primary verification itself
- does not create attestation witness state
- does not render judgment

---

## Behavioral Contract

Invocation model:

executable: guillotine  
package: @verifrax/guillotine  
runtime: CLI-first

The primitive operates only after origin, custody, time, boundary, verification, attestation, and judgment are already complete.

If no stable judgment state exists, GUILLOTINE must not fabricate termination.

Exit codes:

0 — termination completed successfully  
non-zero — invocation failed or contract violated

---

## Usage

Install:

npm install -g @verifrax/guillotine

Execute:

guillotine artifact.json

stdin example:

cat artifact.json | guillotine

---

## Determinism Guarantees

For identical canonical input, GUILLOTINE must produce identical termination output.

No hidden environmental state may influence the result.

GUILLOTINE assumes all prior primitives have already constrained origin, custody, time, boundary, verification, attestation, and judgment. It is the final primitive in the chain and must not re-open prior state.

---

## Security Model

GUILLOTINE protects against ambiguity in final lifecycle termination.

Its security value is to ensure that final closure is rendered from already-determined upstream state under deterministic rules. It does not replace earlier primitives and must not mutate prior evidentiary meaning.

---

## Relationship to Other Primitives

Canonical primitive order:

1 originseal  
2 archicustos  
3 kairoclasp  
4 limenward  
5 validexor  
6 attestorium  
7 irrevocull  
8 guillotine

Repositories:

https://github.com/Verifrax/originseal  
https://github.com/Verifrax/archicustos  
https://github.com/Verifrax/kairoclasp  
https://github.com/Verifrax/limenward  
https://github.com/Verifrax/validexor  
https://github.com/Verifrax/attestorium  
https://github.com/Verifrax/irrevocull  
https://github.com/Verifrax/guillotine

---

## Installation

npm install -g @verifrax/guillotine

command -v guillotine

Repository:
- GitHub: https://github.com/Verifrax/guillotine
- Package: @verifrax/guillotine
- Binary: guillotine

---

## License

MIT
