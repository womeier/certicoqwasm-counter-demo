# Experimental compilation of a ConCert smart contract to Wasm

## Setup and versions
The wasm binary is generated using:
- Coq 8.17
- MetaCoq v1.3-8.17
- [Concert](https://github.com/womeier/ConCert)
- [CertiCoq-Wasm](https://github.com/womeier/certicoqwasm/tree/demo_smartcontracts)

## Running it
### Node.js demo
One only needs Node.js 22 installed.

Type `make run-node` to run.

## Running rust testing module
One needs Rust (e.g. version 1.77.2, but shouldn't matter I guess), wasm-tools installed.

Type `make run-concordium-test` to run.
