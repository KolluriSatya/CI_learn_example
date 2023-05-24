**CONTINUOUS INTEGRATION**

**SETUP**

To setup and run this, we require the below files:  
version.py  - To list the sematic versioning of the application in python format  
Dockerfile - The dockerfile command for initial build of dockerimage.    
meta.yaml - Requires path to the source file and requirements to build the package.      
conda_build_yaaml_file - To list the channels and required dependencies.
version.yaml - Workflow file that triggers the events, builds and helps to push the latest changes into dockerhub and anaconda. 

**HOW TO USE?**     
Once after we make a push to github, we check the actions tab.     
In actions tab, we check the jobs listed in version.yml file i.e., 1)auto-tag-release 2)docker 3)conda
After completing the jobs in actions, check dockerhub and anaconda for latest code changes. 

**PROJECT STRUCTURE**

![](project_struct.png)

**GITHUB TRIGGERING EVENTS**        
Only when we make a push from development branch to main branch, the event is triggered. NOTE: Not when testing branches to development branches. 

