1.My goal is to push my tag changes into my Dockerhub repository. one of the the resources is to use the metadata to help us create a group of tags for a certain image. this is to keep changes of our image on Dockerhub. We do this so we can use them later such as if we need to use a newer tag that can work on an older image, that should work for us.



2. To generate a tag in my github repository I just went onto wsl and typed down the command of: 

    "git tag -a v1.0.2" 

it then sent me to an aditing page where I typed down "practicing making a tag on github" I thensaved my changes and went back to my normal screen on wsl, I then had to push the new tag to github by typing down the following command:

    "git push origin v1.0.2"

if you then go to my github repository and click "main" and switch to the branches tab you will then see my new tag version of v1.0.2 that I created and pushed.

3.  on the top of my workflow, in the "on" section is the metadata action section. the workflow works if you push into the main branch ,with any tag available, or if you do a pull request on the main branch.



the first step uses the actions/checkout@v3, which will help me take a check for my repo onto the runner, which will help me run all of my scripts as well as my actions.

the second step simply lists all of my file and my folders in my f23cicd-hulkman125 repository for people to see.

The third step uses the docker/login-action@v2 action which will use my Username and my token from Dockerhub to login to docker for future use in this workflow.

The fourth step uses the docker/setup-buildx-action@v2 to both create and boot up a builder.

The fifth step uses a docker/metadata-action@v4 command which uses my image of cobraking1/repo4cobra that I created mfrom my dockerfile to extract metadata from both Git reference and Github events. It also uses a specific tag that that it referneces.

The sixth and final step uses a docker/build-push-action@v3 command to build and push any image and any tag i create to my Dockerhub account.

4. To prove that there is a tag in my github repo, here is a link to it:

    https://hub.docker.com/repository/docker/cobraking1/repo4cobra/tags?page=1&ordering=last_updated
