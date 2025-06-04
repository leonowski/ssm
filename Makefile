build: *.go
	GOOS=windows GOARCH=amd64 go build -o windows/ssm.exe -tags forceposixssm
	GOOS=darwin GOARCH=amd64 go build -o macos/ssm -tags forceposixssm
	GOOS=linux GOARCH=amd64 go build -o linux-x64/ssm -tags forceposixssm
	GOOS=linux GOARCH=arm64 go build -o linux-arm64/ssm -tags forceposixssm
	GOOS=linux GOARCH=arm go build -o linux-arm/ssm -tags forceposixssm
	GOOS=freebsd GOARCH=amd64 go build -o freebsd-x64/ssm -tags forceposixssm
