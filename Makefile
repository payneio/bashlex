tests:
	@python -c "import pytest" >/dev/null 2>&1 || (echo "error: pytest missing, run 'pip install pytest'\n" && false)
	python -m pytest

.PHONY: tests typecheck lint format

typecheck:
	uv run pyright bashlex

lint:
	uv run ruff check .

# Format code
format:
	uv run ruff format 
