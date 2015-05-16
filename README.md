
# Overview

Setup general-use environment for myself.

## Usage

1. Create ssh-key for target-machine
```
ssh-keygen
cp ~/.ssh/id_rsa.pub resources/
```

2. Pull & Create base image
```
docker pull ubuntu:latest
docker build -t <container-name> .
```

3. Edit inventory file
```
vi inventory
```
inventory file sample:
```ini
[target]
localhost:10022
```

4. Do setup
```
ansible-playbook [-i <inventory_file>] playbook.yml
```

5. Run
```
docker run -d -p <ssh_port>:22 <container-name>
```

6. Login
```
ssh aki@localhost -p <ssh_port>
```
