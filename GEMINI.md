## Project Overview

This project is a [Tree-sitter](https://tree-sitter.github.io/tree-sitter/)
grammar for the Bash programming language. Tree-sitter is an incremental parsing
library that can be used to build syntax-aware tooling. This grammar provides
the capability to parse Bash scripts and produce a concrete syntax tree.

The core of the project is the `grammar.js` file, which defines the formal
grammar for Bash in a JavaScript-based DSL. This grammar is then used to
generate parsers in C, which are then used to create bindings for various
programming languages.

This project provides bindings for:

* **Node.js** (via `package.json` and `node-gyp`)
* **Rust** (via `Cargo.toml`)
* **Python** (via `pyproject.toml`)
* **Go** (via `go.mod`)
* **Swift** (via `Package.swift`)

## Building and Running

The primary development environment is Node.js.

### Prerequisites

* [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/)
* [Python](https://www.python.org/)
* A C/C++ compiler toolchain

### Key Commands

* **Run tests:**

  ```bash
  npm test
  tree-sitter test
  ```

* **Lint the grammar:**

  ```bash
  npm run lint
  ```

* **Generate the parser:** The `tree-sitter-cli` tool is used to generate the
  parser from `grammar.js`.

  ```bash
  tree-sitter generate
  ```

* **Run the playground:** To interactively parse and inspect the syntax tree of
  Bash code.
  ```bash
  tree-sitter playground
  ```

* **Parse a script:** To parse and inspect the syntax tree of Bash code.
  ```bash
  tree-sitter parse <some_script.sh>
  ```

## Development Conventions

* The grammar is defined in `grammar.js`. Any changes to the parsing logic
  should be made here.
* After modifying `grammar.js`, run `npx tree-sitter generate` to regenerate the
  parser source code in the `src/` directory.
* Tests are located in `test/corpus/`. These are text files with Bash code
  snippets that are used to test the grammar. New test cases should be added to
  these files.
* The project uses `eslint` for linting the `grammar.js` file.
* Bindings for different languages are located in the `bindings/` directory.
  These are typically updated after changes to the core grammar.

## Development Workflow

Before ever trying to fix anything, you must first create a new permanent test case. You
must run all tests and the new test (or new tests) must fail when initially run. The fix
is not complete until new tests pass. You must show the test and get approval on the
test - and once approved you are not allowed to change it without requesting
approval again.
