# full-sodium
full build lib sodium
1.0.21 -> full build jedisct1/libsodium 1.0.20
1.0.23 -> full build jedisct1/libsodium 1.0.17

## how to use?
### CocoaPods
```
pod 'full-sodium', :git=>'https://github.com/AddIcechan/full-sodium.git'
```
### Swift Package Manager
```
dependencies: [
    .package(url: "https://github.com/AddIcechan/full-sodium.git")
]
```

## source libsodium build
```
git clone -b stable https://github.com/jedisct1/libsodium
cd libsodium
env LIBSODIUM_FULL_BUILD=1 ./dist-build/apple-xcframework.sh
```

