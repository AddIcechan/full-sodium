# full-sodium
full build lib sodium

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

