set -ev

if [ "${COMPONENT}" = "all-ehentai" ]; then
	./gradlew clean assembleDebug -p src\all\ehentai
else
	echo "module doesn't exist"
	exit 1
fi