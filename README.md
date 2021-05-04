# RevatureMax Discovery Service

## Project Description

This is a simple discovery service for the RevatureMax Microservice based Application. It is essential to ensure proper communication between running services and routing of traffic through the Gateway Service. It must be run on a machine where you know the host location and all services have access to the host. You must also update the configuration of your services to reference the location of the Discovery Service.

## Technologies Used

- Spring Cloud Consul
- Jenkins
- Docker

## Features



## Getting Started

> git clone https://gitlab.com/210301-java-azure/project3/revature-max-discovery-service.git


> Be sure to include BOTH Windows and Unix command  
> Be sure to mention if the commands only work on a specific platform (eg. AWS, GCP)

- All the `code` required to get started
- Images of what it should look like

## Usage

> Here, you instruct other people on how to use your project after they’ve installed it. This would also be a good place to include screenshots of your project in action.

## Contributors

> Here list the people who have contributed to this project. (ignore this section, if its a solo project)

## License

This project uses the following license: [<license_name>](<link>).





# Consul Instructions  
You will likely need consul running on your own system later when we get the core microservices running and are working on implementing the new user stories. We have all had problems getting it running, however, so I am including some instructions to hopefully help make it easier.
1. You need to install consul, using either chocolatey: `choco install consul` or by downloading it from https://www.consul.io/downloads and putting the exe into a folder in your path.
    - If you have chocolatey installed, you can probably just put it in `C:\ProgramData\chocolatey\bin`.
    - You can view your path using `echo $PATH` from GitBash, though it is hard to read. 
    - Alternatively, you can search for environment variables in windows and select `Edit the system environment variables` then select the *Environment Variables* button at the bottom of the window and look for Path in the bottom pane (System variables). Double-clicking on that opens a vertical list of registered paths.
2. You should make sure that your shell can find *consul.exe* and run it as a command by typing `consul -v` in your terminal (GitBash). If this doesn't show you the version of consul installed, you may need to check that the file is in a folder included in your *Path* variable.
3. To prevent a common problem that has arisen with us, try running `consul leave` in GitBash. It might say that there was an error, but at least you know that your socket should be clean for consul to bind to.
4. Run consul with 
    ```
    consul agent -dev -data-dir=consul-data -ui
    ```


Hopefully this will be enough to get consul running on your local system and your services should register with it as soon as you start. Just as a reminder, you can see your current microservice ecosystem by opening `localhost:8500` on your browser.  
If your service has a red X next to it, make sure you have the actuator dependency in your grandle dependencies:  
`implementation 'org.springframework.boot:spring-boot-starter-actuator'`
Trying to run an unconfigured Spring Security with consul can also cause this issue.