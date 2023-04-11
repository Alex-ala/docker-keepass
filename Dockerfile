FROM fedora

RUN dnf -y install wget unzip mono-core && wget -o - -O keepass.zip 'https://sourceforge.net/projects/keepass/files/KeePass%202.x/2.53.1/KeePass-2.53.1.zip/download' && unzip keepass.zip

CMD mono KeePass.exe database.kdbx
