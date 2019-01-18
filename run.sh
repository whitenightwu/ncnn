rm -rf C*
rm -rf M*
rm -rf c*
rm -rf s*
rm -rf i*

sleep 5


cmake -DCMAKE_TOOLCHAIN_FILE=$ANDROID_NDK/build/cmake/android.toolchain.cmake \
    -DANDROID_ABI="armeabi-v7a" -DANDROID_ARM_NEON=ON \
    -DANDROID_PLATFORM=android-14 \
    ..

# -DANDROID_TOOLCHAIN=gcc \

# -DANDROID_COMPILER_FLAGS_DEBUG=ON \
# debug
# release
# -DANDROID_TOOLCHAIN=gcc


sleep 5

make

# sleep(5)

# make install
