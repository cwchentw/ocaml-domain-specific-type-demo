# ocaml-domain-specific-type-demo

A case study in implementing domain‑specific types.

## Rationale

### Domain‑Specific Programming

In real‑world programming, certain domains impose strict constraints on data.  
For example, in biomedical informatics, many patient attributes must be non‑negative: a **natural integer** (≥ 0) or a **natural float** (≥ 0.0).

Most programming languages do not natively support domain‑specific types.  
This case study demonstrates how to model such constraints explicitly in OCaml.

### Type as Constraint

Ada integrates domain constraints directly into its type system.  
Most languages lack this feature, but we can **simulate type constraints** in OCaml using smart constructors.  
This prevents invalid data from leaking into the core logic and enforces domain rules at the boundary.

Here, we provide an OCaml implementation of a natural number type as a case study.

### Error Handling in OCaml

OCaml offers three main strategies for error handling:

- `option` (`Some` / `None`)
- `result` (`Ok` / `Error`)
- exceptions (`raise` / `try ... with`)

`option` and `result` delegate error handling to the caller, which is ideal for **library authors**.  
Exceptions handle errors immediately, which is often more convenient for **library users**.  

This demo adopts a **two‑layer strategy**:

- **SafeNaturalInt**: delegates errors with `result`, ensuring type safety and explicit error reporting.  
- **NaturalInt**: wraps the safe layer but raises exceptions directly, simplifying usage in application code.  

### Design Philosophy

This project intentionally preserves **friction** at the library layer to highlight domain constraints,  
while offering a simplified interface at the user layer.  
It illustrates the balance between **type safety** and **ease of use**,  
and demonstrates how OCaml can emulate **Ada‑style constraint errors** within a functional programming paradigm.

## System Requirements

* OCaml `4.14+` (Recommended)
* [ocaml-clean-compile](https://github.com/opensourcedoc/ocaml-clean-compile) — compile OCaml code without Dune
* [clean-artifact](https://github.com/opensourcedoc/clean-artifact) — clean build artifacts

## Examples

See [main.ml](/main.ml).

## License

MIT License © 2026 ByteBard
