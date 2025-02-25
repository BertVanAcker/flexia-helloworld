# A Simple flexIA docker application, which can be deployed and run via the flexIA toolchain

This is a simple flexIA docker application, build to demonstrate how a standalone docker application can be remotely deployed and executed using the flexIA toolchain.
The flexIA.ini file does contain all information needed to build and run the application on remote devices:

[flexIA]
projectID = sandbox
description = Sandbox project

[PACKAGE]
name = flexia-helloworld
tag = flexia_helloworld_001


[build:Oberon-5]
workflow = docker                                 
workflow_link = ""
arguments = ""

[run:Oberon-5]
workflow = docker                                   
workflow_link = ""
arguments = "-p 8080:8080"


> [!CAUTION]
> The dockerfile is assumed to be at the root folder of the application. The docker workflow is specified, additional arguments can be provided between "".

> [!IMPORTANT]  
> Build and run this application can only when the primaryHardwareID of the device matches the id tag (here Oberon-5), this for security reasons.


 ## Accessing the Python app
 
 ```
 curl localhost:8080

          ##         .
    ## ## ##        ==
 ## ## ## ## ##    ===
/"""""""""""""""""\___/ ===
{                       /  ===-
\______ O           __/
 \    \         __/
  \____\_______/


Hello from Docker!
```



