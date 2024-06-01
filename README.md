# SSH Server Container


### Build local Image
```bash
cd app
podman build -t container-ssh .
```

### Run with mapped authorized_key file & optional volumes
```bash
podman run --replace --name my_ssh -h ssh --rm -d -v $PWD/keys.pub:/root/.ssh/authorized_keys -p 2222:22 container-ssh:latest
```

### Start CLI
```bash
 podman exec -it my_ssh bash
```