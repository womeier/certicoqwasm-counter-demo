all: run-node

run-node:
	node ./run-node.js

run-concordium-test:
	wasm-tools parse ./wasm-testing/src/counter.wat -o ./wasm-testing/src/counter.wasm
	cd wasm-testing && cargo run
