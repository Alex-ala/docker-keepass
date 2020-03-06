FROM fedora

RUN dnf -y install wget unzip mono-core && wget -o - -O keepass.zip 'https://downloads.sourceforge.net/project/keepass/KeePass%202.x/2.44/KeePass-2.44.zip?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fkeepass%2Ffiles%2FKeePass%25202.x%2F2.44%2FKeePass-2.44.zip%2Fdownload&ts=1583480990' && unzip keepass.zip

CMD mono KeePass.exe database.kdbx
