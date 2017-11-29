set -ev
if [ "${COMPONENT}" = "all-ehentai" ]; then
	./gradlew clean assembleDebug -a -b src/all/ehentai/build.gradle
	cp -R src/all/ehentai/build/outputs/apk/debug/. /apk/
elif [ "${COMPONENT}" = "all-nhentai" ]; then
	./gradlew clean assembleDebug -a -b src/all/nhentai/build.gradle
	cp -R src/all/nhentai/build/outputs/apk/debug/. /apk/
else
	echo "module doesn't exist"
	exit 1
fi