#!/bin/bash
# $ bash ../patches/apply.sh

git apply ../patches/0001-sni-stripping.patch
#git apply ../patches/0001-encrypted-client-hello.patch
git apply ../patches/0002-repo-rename.patch
git apply ../patches/0003-non-h-filter.patch
source ../patches/0004-disable-cpp-build-id.sh
sed -i -e 's/applicationId = "org.moedog.ehviewer"/applicationId = "org.moedog.ehviewer.cc"/' app/build.gradle.kts
