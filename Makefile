tag := "1.0.0"
image_name := registry.cn-hangzhou.aliyuncs.com/adpc/guesslang-service

require:
	@pip freeze > requirements.txt

version:
	@echo ${version}

build:
	@docker buildx build --platform=linux/amd64 -t ${image_name}:${tag} -o type=registry .