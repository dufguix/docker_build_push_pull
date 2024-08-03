#!/bin/bash
echo "Docker login , build, push script..."
echo

# Replace by your container repo
registry=registry.gitlab.com/your_group/your_project/image_name
# Create token for that purpose only
registryUser=gitlab+deploy-xxxxxxxxxxxxx

read -sp 'PW:' pw
echo "$pw" | sudo docker login $registry -u $registryUser --password-stdin
read -p 'Image tag:' tag
sudo docker build -t $registry:$tag -f build.Dockerfile ..
sudo docker push $registry:$tag
sudo docker logout $registry