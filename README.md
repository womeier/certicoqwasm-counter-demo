# Experimental compilation of a ConCert smart contract to Wasm

## Setup and versions
Depends on the versions from [this](https://github.com/womeier/certicoqwasm/blob/2858f55716a42d4a6f9941096e27fa8a4d4ebb1f/.github/workflows/build.yml#L22C14-L22C119) Docker container:
- Coq 8.17
- MetaCoq v1.3-8.17
  
And:
- [Concert](https://github.com/womeier/ConCert)
- [CertiCoq-Wasm](https://github.com/womeier/certicoqwasm/tree/demo_smartcontracts)

## Running it
Coq is not required to run it, one only needs Node.js 22 installed.
Type `make` to run.
