## It's just for development with Docker.

```bash
#!/bin/bash
wget -qO- https://raw.githubusercontent.com/NyiNyiSoePaing/development_with_docker/refs/heads/main/install.sh | bash
git clone https://github.com/NyiNyiSoePaing/development_with_docker.git
mv development_with_docker/devops /home/ubuntu/
chown -R ubuntu:ubuntu /home/ubuntu/devops/
rm -rf development_with_docker
```