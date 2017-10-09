## aws ecs /ecr

1. create aws account, get access key/ secert with ECS/ECR permission

2. Select singapore region, go to EC2 container service, skip wizard. create cluster

![Alt text](screenshots/createcluster1.png?raw=true "")

![Alt text](screenshots/createcluster2.png?raw=true "")

3. go to Repositories(ECR) and create Repositories, copy your repository uri

![Alt text](screenshots/createecr.png?raw=true "")


## Source Repository

use github / bitbucket to host your project

## circle ci

login with your github / bitbucket account

select your project, setup project

enter your access key created in step 1

![Alt text](screenshots/circleciaccesskey.png?raw=true "")

## update source code

1. docker-compose/docker-compose.yml update with your ecr repository uri

2. .circleci/config.yml line 47,50, update with your ecr repository uri

3. if you need to migrate database after deployment, update web/docker-entrypoint.sh

push your code to github/ bitbucket, your docker conatiner will be builded/deployed by circle ci