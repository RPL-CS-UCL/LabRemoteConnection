
# RPL Lab Remote Connection (UCL East One Pool Street G07)


# SSH
## On your lab computer (server)

### Establish network connection.

- Connect the ethernet cable to a port in the lab and to your desktop machine.

- Go to your wired connection settings and notedown the ip e.g. (10.22.22.22).

### SSH server.

Run the following to install the required packages and allow the connection through the firewall.

```
sudo apt update
sudo apt install openssh-server
sudo ufw allow ssh
```

You can then check that it is all working with: 

```
sudo systemctl status ssh
```

## On your remote computer (laptop)

We can then use the following command to SSH into the lab machine.

```
ssh username@ip_address
```
e.g.
```
ssh robohike@10.22.22.22
```

You will be prompted to add a key, respond with ```yes```.

You should then be prompted for your password for the lab machine. Type it in and you will be connected.

# RDP

## On your lab computer (server)

Run the following commands to install and setup RDP.

```
sudo apt-get update
sudo apt-get install xrdp
# sudo adduser xrdp ssl-cert (NOTE THIS MAY NOT BE NEEDED)
sudo ufw allow 3389
sudo systemctl restart xrdp
```

You can then check that it is all working by running:

```
sudo systemctl status xrdp
```


## On your remote computer (laptop).

You have multiple choices of RDP client.

You can either use rdesktop or reminna.

For now we will use rdeskop, install it by the following command.


```
sudo apt install rdesktop
```

you can then connect to your lab machine with the following command:

```
rdesktop -f ip_address
```

Note the -f denotes full screen.

Note: you can use ```-g 100%``` to have windowed fullscreen.

You will then be prompted with a login screen.

Type your username and password of the server (lab machine) and login.

You will now be connected
