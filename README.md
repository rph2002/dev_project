# Simple Task Management Application in Grails
## Objective
Develop a simple task management application using Grails 5.3.6 that allows users to
manage their tasks through a web interface. The application will utilize server-side
rendering with Groovy Server Pages (GSP) for the views and leverage SiteMesh for
templating.

## Specific Technologies Used
* VirtualBox 7.0.20
* Ubuntu 24.04.1 LTS
* SDKMAN 5.18.2
* OpenJDK 11.0.11-open
* Grails 5.3.6
* IntelliJ Community Edition

## Downloads
### TaskManagement Project
https://github.com/rph2002/dev_project/archive/refs/heads/main.zip

### VirtualBox 7.0.20
This is only required if you don't feel comfortable working in your PC's native environment

Download: https://www.virtualbox.org/wiki/Downloads

### Ubuntu 24.04.1 LTS
This is only required if you would prefer to do your work in an Ubuntu environment

Download: https://ubuntu.com/download/desktop

### SDKMAN 5.18.2
Follow the installation guide depending on your OS

Download: https://sdkman.io/install/

### OpenJDK 11.0.11-open
After install SDKMAN, run `sdk install java 11.0.11`

### Grails 5.3.6
Follow https://docs.grails.org/5.3.6/guide/single.html#gettingStarted to do a proper install of Grails 5.3.6

If using Windows, you will need to install WSL to run the proper commands

* First, run `wsl --install`
* After it is installed, restart your machine
* After you machine is restarted, a terminal with an Ubuntu shell should launch, asking for account creation
* Then, run `sudo apt update`
* Finally, run `sudo apt install curl zip unzip`
* You should be able to backtrack in the downloads and download the proper technologies (SDKMAN, OpenJDK, Grails)

### IntelliJ Community Edition
IntelliJ was the IDE used for creating the application, but you can use any IDE you are comfortable launching Grails apps with

Download: https://www.jetbrains.com/idea/download/?section=windows

## Setup
Now that you have all the required technologies downloaded, you can launch the application

**How to Launch Application**
1. Grails
  * In your terminal, proceed into the "/TaskManagement/" directory
  * Either run `grails run-app` or `grails` to enter interative mode, then run `run-app` inside of interactive mode
2. IntelliJ
  * Open IntelliJ
  * Open a new project, and browse for for the project
  * Select the `build.gradle` file inside of the /TaskManagement/ directory and open the project through that file
  * Then, find the Application.groovy file inside "/TaskManagement/grails-app/init/taskmanagement/"
  * Finally, hit the green arrow in the top right to run to application
    
Regardless of how you launched the app, the web page should be accessible at http://localhost:8080/
