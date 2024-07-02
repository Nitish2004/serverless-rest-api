build:
	env GOOS=linux GOARCH=amd64 CGO_ENABLED=0 /usr/local/go/bin/go build -ldflags="-s -w" -o bin/main main.go

deploy_prod: build
	serverless deploy --stage prod

