# CS4035-cyber-data


To run the project, run the following command to install the project:

```bash
pip install -r requirements.txt
```
Then you can run jupiter labs or other tools like kaggle or google colab.


If you run into trouble running the project, you can try running it through docker by running:

```bash
# Windows
$ docker-compose -f docker-compose-windows.yml up 

# Linux with bash
$ ./notebook.sh up
```

Make sure your permissions for Docker are set correctly.

Remember to put the data in the data folder.

NOTE: For flex-fringe in lab3, if you are running in the container, make sure to allow everyone to run that `flexfringe-x64-linux` once downloaded with:

```bash
# Linux
$ chmod 777 flexfringe-x64-linux
```