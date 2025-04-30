# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview
Bashlex is a Python port of the parser used internally by GNU bash. It parses bash shell scripts and commands, generating a complete Abstract Syntax Tree (AST) representation without executing any code.

## Commands
- **Install dependencies**: `pip install -e ".[dev]"`
- **Run all tests**: `python -m pytest`
- **Run single test**: `python -m pytest tests/test_parser.py::TestParser::test_name`
- **Lint code**: `ruff check .`
- **Type check**: `pyright`
- **Build package**: `python -m build`

## Code Style Guidelines
- **Formatting**: 4-space indentation, 100 character line length
- **Imports**: Standard library first, then project imports; use absolute imports
- **Naming**: 
  - Functions/variables: `lowercase_with_underscores`
  - Classes: `CamelCase` (except `node` class)
  - Private methods/attributes: prefix with underscore (`_private_method`)
- **Error handling**: Use custom exceptions from `errors.py`, include position info
- **Types**: Target Python 3.12+; add type hints for new code (basic type checking mode)
- **Linting**: Adheres to ruff E, F, and I rule sets with E501 (line length) ignored
- **Testing**: Write pytest tests for new functionality and bug fixes

When making changes, follow existing patterns in the codebase. The project requires Python 3.12+.