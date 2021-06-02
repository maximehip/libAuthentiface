# libAuthentication
## _Easy way to use Faceid/TouchID_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

LibAuthentication will simplify your code when if you want to use FaceID/TouchID in your tweaks.

## How to compile
```sh
make package
```

## How to install

- Copy layout/usr/local/lib/Authenticate.dylib to $THEOS/lib
- Copy Authenticate.h in $THEOS/Authenticate/Authenticate.h

## How use it 
```objective-c
#import <Authenticate/Authenticate.h>
[Authenticate alloc] authenticate:@"reason" completed:^(BOOL success) {
    if (success) {
        //Authentification success
    }
  }];
```