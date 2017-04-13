#! /bin/bash
# usage:
# checkJCELength.sh "space seperated server list"
# Note that this uses ssh alias



if [ "$#" -ne 1 ]; then
    echo "No server list present"
fi

for serv in $1; do
	echo "JCE on Server: ${serv}"
	echo "Uploading java file"
	scp CheckLength.java ${serv}:~/.

	echo "Compile and run"
	ssh ${serv} << EOF
		javac CheckLength.java
		java CheckLength	
EOF

	echo "Clean up"
	ssh ${serv} << EOF
		rm CheckLength.java
		rm CheckLength.class
EOF
done
