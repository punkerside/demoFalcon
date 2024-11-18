PROJECT            = falcon
ENV                = lab
SERVICE            = user
AWS_DEFAULT_REGION = us-east-1

base:
	@docker build -t ${PROJECT}-${SERVICE}-${SERVICE}:base -f Dockerfile.base .
	@docker build -t ${PROJECT}-${SERVICE}-${SERVICE}:npm --build-arg IMG=${PROJECT}-${SERVICE}-${SERVICE}:base -f Dockerfile.npm .