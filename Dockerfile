FROM fedora

RUN dnf -y install wget unzip mono-core && wget -o - -O keepass.zip 'https://downloads.sourceforge.net/project/keepass/KeePass%202.x/2.46/KeePass-2.46.zip?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fkeepass%2Ffiles%2FKeePass%25202.x%2F2.46%2FKeePass-2.46.zip%2Fdownload%3Fuse_mirror%3Ddeac-fra&ts=1600932236&use_mirror=deac-fra' && unzip keepass.zip

CMD mono KeePass.exe database.kdbx
