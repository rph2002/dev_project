# Simple Task Management Application in Grails
## Objective
Develop a simple task management application using Grails 5.3.6 that allows users to
manage their tasks through a web interface. The application will utilize server-side
rendering with Groovy Server Pages (GSP) for the views and leverage SiteMesh for
templating.

## Assumptions
* You are running this application in a Linux-based environment
* User is familiar with navigation in Linux-based environment
* Only required features wanted

## Limitations
* Application is only available in local environment
* All data in database is reset once the application stops running
* Application performance was not tested with large amounts of data

## Testing
* The site uses a layout for the header, navigation bar, and footer for all pages
* The navigation bar includes two buttons, "View Tasks" and "Create Task"
* View Task includes a container of all current tasks ordered by creation data(oldest to newest), or a prompt to create a task if none exist
* Each task is listed in a Bootstrap card that shows the user it's status, incomplete or completed, title, description, 2 buttons to edit or delete, and the dates it was created and last modified
* If a user clicks on the status, a dropdown will appear allowing the user to make a task "completed" or "incomplete"
* If a user clicks on the edit button, the user will be prompted with a form to input a different title and description, that is pre-filled with the selected task's values
* If a user clicks on the delete button, the page will refresh and the selected task will be deleted
* "Create Task" prompts the user with a form to fill in a title and description for a task
* When saved, the user will be redirected to the "View Tasks" page and the new task will be present
* All successful or unsuccessful actions will prompt an alert under the navigation bar informing the user of the status. Red for error, green for success

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

or

`curl -L -o dev_project.zip https://github.com/rph2002/dev_project/archive/refs/heads/main.zip`

### VirtualBox 7.0.20 and Ubuntu 24.04.1 LTS
Virtual Machine setup:
- Download VirtualBox: [VirtualBox Downloads](https://www.virtualbox.org/wiki/Downloads)
- Download Ubuntu ISO: [Ubuntu 24.04.1 LTS](https://ubuntu.com/download/desktop)

Once both are installed, you can launch a new VM with the Ubuntu ISO image downloaded

*8 GB of memory and 2 processors are recommended*

### SDKMAN 5.18.2
Install SDKMAN:
`curl -s "https://get.sdkman.io" | bash`

`source "$HOME/.sdkman/bin/sdkman-init.sh"`

### OpenJDK 11.0.11-open
Run `sdk install java 11.0.11`

### Grails 5.3.6
Run `sdk install grails 5.3.6`

### IntelliJ Community Edition
IntelliJ was the IDE used for creating the application

Download IntelliJ: [IntelliJ Download](https://www.jetbrains.com/idea/download/?section=linux)

## Setup
1. Run with Grails
  * Navigate to "/TaskManagement/" directory
  * Either run `grails run-app`
  * Or run `grails` to enter interative mode, then run `run-app` inside of interactive mode
2. IntelliJ
  * Open IntelliJ and load the project by selecting the "build.gradle" in the "/TaskManagement/" file
  * Navigate to the Application.groovy file inside "/TaskManagement/grails-app/init/taskmanagement/" (structure below)
/TaskManagement/
├── build.gradle
├── grails-app/
│   └── init/
│       └── taskmanagement/
│           └── Application.groovy

  * Hit the green run arrow in the top right to start the application
    
With the application now running, visit http://localhost:8080/ to test it

## Troubleshooting
* If the application fails to launch, make sure all dependencies are installed correctly
* Double check your Grails and Java versions
