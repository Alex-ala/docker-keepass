KeePass in Docker
===

How to run:
docker run -ti --network=host --rm --env="DISPLAY" -v "$HOME/.Xauthority:/root/.Xauthority:ro" -v /tmp/Database.kdbx:/database.kdbx keepass