#!/usr/bin/env bash
RELEASE_KEY_PATH=/root/.release-keys.keystore
APK_TO_SIGN=$1
APK_TO_SIGN_NE="${APK_TO_SIGN%.*}"

if [ ! -f $APK_TO_SIGN ]; then
    echo "${APK_TO_SIGN} does not exists.."
    exit
fi

if [ ! -f $RELEASE_KEY_PATH ]; then
    keytool -genkey -v -keyalg RSA -keysize 2048 -validity 10000 -noprompt \
        -alias 123456 \
        -dname "CN=Unknown, OU=Unknown, O=Unknown, L=Unknown, S=Unknown, C=Unknown" \
        -keystore $RELEASE_KEY_PATH \
        -storepass 123456 \
        -keypass 123456
fi

jarsigner -verbose \
    -sigalg SHA1withRSA -digestalg SHA1\
    -keystore $RELEASE_KEY_PATH \
    -storepass 123456 \
    -keypass 123456 \
    $APK_TO_SIGN \
    123456

zipalign -v 4 $APK_TO_SIGN ${APK_TO_SIGN_NE}-aligned.apk

