PROJECTNAME="demo-swagger-doc"

GOPROXY=GOPROXY=https://goproxy.io
GOCMD=go
GOBUILD=$(GOPROXY) $(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOPROXY) $(GOCMD) test
GOGET=$(GOCMD) get
GOLINT=

BIN_DIR=./bin

SWAG_CMD=swag init
RUN_CMD=go run main.go

help: Makefile
	@echo
	@echo " Choose a command run in "$(PROJECTNAME)":"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' | sed -e 's/^/ /'

## deps: install all deps
deps:
	@echo "deps"

build:
	@echo "build"

run:
	@echo "run"

dev:
	@${SWAG_CMD}
	@echo "open: http://localhost:8080/swagger/index.html"
	@${RUN_CMD}

lint:
	@echo "lint"

test:
	@echo "test"

mod_tidy:
	@$(GOPROXY) $(GOCMD) mod tidy
