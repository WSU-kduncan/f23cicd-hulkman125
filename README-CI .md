   PART-1
    
    CI PROJECT OVERVIEW

1. My goal for this part of project 4 is to simply create a website using my own chosen resources
so they can be displayed on the internet using my personal computer. this can be done using the Docker Desktop software and typing down the right 
code and Dockerfile(the file that tells Docker how to display your container online)
 
    RUN PROJECT LOCALLY

2. I simply went to a web browser and typed this in the URL to get me to the neccessary website:

    https://docs.docker.com/desktop/install/windows-install/

I then clicked on the button that says "Docker Desktop for Windows" 
which then began installing Docker Dessktop on my Laptop.

3. I copied all of my web site resources, such as images, javascript files, 
and html files in the file path of home/hulkman125/cobra/finalFile. Then on wsl I created a Dockerfile
with the following Dockerfile code to display the index.html when the user enters 
the correct phrase in the URL: 

          FROM nginx
      
          COPY index.html /usr/share/nginx/html

   Also to build a docker image I simply went to my wsl and typed down:
   
         sudo docker build -t cobraking1/repo4cobra .

5. to run the container which I named CobraComicsWebSite, I type down the following code:

          docker run --name CobraComicsWebSite -v /home/hulkman125/cobra/finalFile/:/usr/share/nginx/html:ro -d -p 8080:80 nginx

6. In the code I made the container port 8080 so in order to make my website visibal to my computer I 
simply type down the following sequence in the URL:

          localhost:8080



    PART-2

I created my account and named it Cobraking1.

1. To create a public repository I simply went to my repository page and pressed the "create repository" button. 
I then chose an appropriate name for my repository, mine is called "repo4cobra".

2. I created an Access Token. Go to Account Settings/Security and press on the "New Access Token" button.
    I choose my description as "cobraComics_access" and I chose my access permissions as "Read, Write, Delete". I was then sent to an open page that showed me access code that I copied. I then went to my WSL and typed the following:

        docker login -u cobraking1

    I then had to paste my passcode that I previously copied.



3. I tagged using the image I build using my dockerfile:

   
          docker tag cobraking1/repo4cobra:latest
          
   to create a new image container called "dockerking1/repo4cobra" to my Docker software on my PC.
   I then pushed my new container by typing down:
   

      docker push cobraking1/repo4cobra:latest

5. The following link is the link to my dockerhub reposiroty:
   https://hub.docker.com/repository/docker/cobraking1/repo4cobra/general

6. to set a secret on Github, go to settings/Secrets and variables/Actions then click on the "New repository secret" button.  I chose my secrets as Docker_Password to store my Dockerhub password, Docker_Username to store my Dockerhub username, and Docker_Token to set my Dockerhub access token.

7. This workflow named docker-workflow.ym,l uses my github secrets named DOCKER_USERNAME and DOCKER_TOKEN and uses it to access my dockerhub account and pushes my image nginx from this folder into dockerhub inside my image/reponame of cobraking1/repo4cobra.
   
the first step in my workflow is to use a docker/metadata-action@v4 to extract metadata from Git reference and Github events using the image of cobraking1/repo4cobra image I created from my dockerfile.

the second step of the workflow is to use the docker/login-action@v3 command which uses my docker username and my access token to be able to login to docker.

the third step uses the actions/checkout@v4 command which checks out my repository onto the runner, which will allow me to be able to run my scripts.

the fourth action uses the ls command which simply lists all of my files and folders in my main repository.

the fifth step docker/setup-buildx-action@v3 which creates and boot a builder that can be used if I am using Buildx. 

the sixth and final step uses the docker/build-push-action@v5 command which is used to build and push any images to your dockerhub account.



