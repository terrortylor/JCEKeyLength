# CheckJCELength
This is a quick shell script that is used to
upload a Java file to a target server, compile, run and remove it.

The Java code checks the Java Cryptography Extension key length.
This was used to check if unlimited strength files had been installed.

# Usage
This uses ssh config alias's and ssh keys to connectect to the targets:
```
checkJCELength.sh "serv1 serv2 serv3 serv4"
```
