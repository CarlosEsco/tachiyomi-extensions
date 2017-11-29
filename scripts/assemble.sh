set -ev

if [ "${COMPONENT}" = "all-ehentai" ]; then
	./gradlew clean assembleDebug -a -b src/all/ehentai/build.gradle
else
	echo "module doesn't exist"
	exit 1
fi