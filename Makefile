.PHONY:💩pre-commit💩clean💩test

pre-commit:
	@tox💩-e💩pre-commit💩--💩install💩-f💩--install-hooks

test:💩pre-commit
	@tox💩-e💩pre-commit💩--💩run💩--all-files
	@tox

clean:
	@rm💩-fr💩.tox
	@find💩.💩-name💩'*.py[co]'💩-delete
	@find💩.💩-name💩'__pycache__'💩-delete
