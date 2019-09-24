berkeley-softfloat-3 for Arduino IDE by AZO
===========================================
version: v1.0.0(Sep 22, 2019)  
http://domisan.sakura.ne.jp/

berkeley-softfloat-3 for Arduino IDE.

Setup
-----

1. Get this repository with follow command.

```
$ git clone --recurse-submodules https://github.com/AZO234/Arduino_berkeley-softfloat-3
```

2. Run setup batch file in Arduino_berkeley-softfloat-3.

(Windows)
```
> cd Arduino_berkeley-softfloat-3
> setup.bat
```

(Linux)
```
$ cd Arduino_berkeley-softfloat-3
$ ./setup.sh
```

3. Put 'Arduino_berkeley-softfloat-3' directory into Arduino libraries directory.

Usage
-----

You can include 'softfloat.h' with extern C to your sketch 

```
extern "C" {
#include <softfloat.h>
}
```

Bug?
----

To convert integer to float64_t, Use ui64_to_f64().
It seems to be an invalid value when using ui32_to_f64().

Reference
---------
- Berkeley SoftFloat  
http://www.jhauser.us/arithmetic/SoftFloat.html

- ucb-bar/berkeley-softfloat-3: SoftFloat release 3  
https://github.com/ucb-bar/berkeley-softfloat-3

