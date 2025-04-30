# Bashlex Improvement Plan

This document outlines the necessary improvements for the bashlex project to modernize it for Python 3.12+ and ensure proper packaging, testing, and type checking.

## 1. Version Compatibility

- [x] Standardize on Python 3.12+ as the required version
- [ ] Remove all Python 2.x compatibility code
- [ ] Update CI workflow to test on Python 3.12+

## 2. Package Configuration

- [ ] Consolidate metadata in pyproject.toml and remove setup.py
- [ ] Fix version discrepancy between setup.py (0.18) and pyproject.toml (0.1.0)
- [ ] Use standard setuptools keys in pyproject.toml (change `dependency-groups` to `project.optional-dependencies`)
- [ ] Add project URLs and classifiers

## 3. Testing Improvements

- [ ] Expand test coverage to include all modules
- [ ] Fix disabled tests (e.g., test_escape_error)
- [ ] Remove unneeded asyncio test configuration
- [ ] Add more comprehensive test cases for complex shell constructs

## 4. Code Modernization

- [ ] Add type hints to all files following the configuration in pyproject.toml
- [ ] Replace old-style string formatting (%) with f-strings
- [ ] Update class naming to follow PEP 8 (CamelCase for classes)
- [ ] Remove enum34 backport code
- [ ] Standardize exception handling (use assertRaisesRegex consistently)

## 5. Build and Tooling

- [ ] Update Ruff configuration to target Python 3.12
- [ ] Add Documentation generation
- [ ] Add pre-commit hooks for formatting and linting
- [ ] Improve Makefile with additional quality checks

## 6. Feature Enhancements (Future)

- [ ] Add support for arithmetic expressions $((..))
- [ ] Support more parameter expansions (e.g., ${parameter#word})
- [ ] Add more examples and documentation

## Implementation Priority

1. Fix package configuration and versioning
2. Remove Python 2.x compatibility code
3. Add type hints and modernize code style
4. Expand test coverage
5. Feature enhancements