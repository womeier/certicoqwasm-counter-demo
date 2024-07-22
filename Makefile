all: run-concordium-test

run-node:
	cd node && node ./run.js

run-concordium-test:
#	wasm-tools parse ./wasm-testing/src/counter.wat -o ./wasm-testing/src/counter.wasm
#	wasm-tools validate ./wasm-testing/src/counter-certicoqwasm.wat
	wat2wasm ./certicoqwasm/src/counter-certicoqwasm.wat -o /dev/null
	wasm-tools parse ./certicoqwasm/src/counter-certicoqwasm.wat -o ./certicoqwasm/src/counter-certicoqwasm.wasm
	cd certicoqwasm && cargo run
