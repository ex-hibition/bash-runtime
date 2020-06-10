# Description
- カスタムランタイムlambdaのローカル検証環境構築

# Usage
## create docker image
```bash
docker build -t bash-runtime .
```

## create deploy package
```bash
docker run --rm -v "$PWD":/var/task bash-runtime
```

## execute lambda function
```bash
docker run --rm -v "$PWD":/var/task -v "$PWD":/opt lambci/lambda:provided function.handler '{"test:"Hello"}'
```