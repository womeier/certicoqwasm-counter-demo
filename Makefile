all: run-concordium-test

run-node:
	node ./run-node.js

run-concordium-test:
#	wasm-tools parse ./wasm-testing/src/counter.wat -o ./wasm-testing/src/counter.wasm
#	wasm-tools validate ./wasm-testing/src/counter-certicoqwasm.wat
	wat2wasm ./wasm-testing/src/counter-certicoqwasm.wat -o /dev/null
	wasm-tools parse ./wasm-testing/src/counter-certicoqwasm.wat -o ./wasm-testing/src/counter-certicoqwasm.wasm
	cd wasm-testing && cargo run
