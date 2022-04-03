# Rust -> WASM -> Web Build

In order to understand what's going on under the hood of current Rust/WASM compilation toolchains (such as [`wasm-pack`](https://github.com/rustwasm/wasm-pack) or even just `cargo build` with a WASM target), I wanted to create a project with the least amount of tooling possible in order to get compiled Rust code running in a browser.

In this example, I've created a Rust function that adds together two numbers. The function is compiled to WASM, and then used to interactively add together two numbers in the browser. Yay!

**Note**: I've only run this on MacOS. Linux will probably work, but Windows will probably not.

## Prerequisites

- [Install Rust](https://www.rust-lang.org/tools/install): The `rustc` compiler is necessary to compile
  - You _may_ also need to [add the nightly build and the `wasm32-unknown-unknown` target to the `rustup` toolchain](https://www.hellorust.com/setup/wasm-target/)
- [Install Python 3](https://www.python.org/downloads/): This'll allow running a simple HTTP server.
- **Optional**: [Install the WABT toolkit](https://github.com/WebAssembly/wabt)
  - This step is purely to be able to read the compiled WASM in a WAT format. If you omit, make sure to comment out line 8 in `run.sh`.

## Running

```
$ chmod +x ./run.sh && ./run.sh
```

The `chmod +x ./run.sh` call is only necessary on the first run. Any subsequent runs can just use `./run.sh`.

If successful, you should see the following output:

```
Serving HTTP on :: port 8000 (http://[::]:8000/) ...
```

You can then open http://localhost:8000 in a browser to see the code in action.
