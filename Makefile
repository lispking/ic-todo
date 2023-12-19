.PHONY: all
all: build

.PHONY: build
.SILENT: build
build:
	dfx canister create ic_todo
	dfx build

.PHONY: install
.SILENT: install
install: build
	dfx canister install ic_todo

.PHONY: upgrade
.SILENT: upgrade
upgrade: build
	dfx canister install ic_todo --mode=upgrade

.PHONY: test
.SILENT: test
test: install
	# Add To-Dos.
	dfx canister call ic_todo addTodo '("Create a project")'
	dfx canister call ic_todo addTodo '("Build the project")'
	dfx canister call ic_todo addTodo '("Deploy the project")'

	# Show To-Dos.
	dfx canister call ic_todo showTodos \
		| grep 'Create a project' && echo 'PASS'
	dfx canister call ic_todo showTodos \
		| grep 'Build the project' && echo 'PASS'
	dfx canister call ic_todo showTodos \
		| grep 'Deploy the project' && echo 'PASS'

	# Complete To-Dos.
	dfx canister call ic_todo completeTodo '(0)'
	dfx canister call ic_todo completeTodo '(1)'
	dfx canister call ic_todo completeTodo '(2)'

	# Show To-Dos.
	dfx canister call ic_todo showTodos \
		| grep 'Create a project ✔' && echo 'PASS'
	dfx canister call ic_todo showTodos \
		| grep 'Build the project ✔' && echo 'PASS'
	dfx canister call ic_todo showTodos \
		| grep 'Deploy the project ✔' && echo 'PASS'

	# Clear Completed.
	dfx canister call ic_todo clearCompleted
	dfx canister call ic_todo showTodos \
		| grep '("\\n___TO-DOs___\\n")' && echo 'PASS'

.PHONY: clean
.SILENT: clean
clean:
	rm -fr .dfx
