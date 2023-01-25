# libspinners-freebasic

[![](https://img.shields.io/github/v/tag/thechampagne/libspinners-freebasic?label=version)](https://github.com/thechampagne/libspinners-freebasic/releases/latest) [![](https://img.shields.io/github/license/thechampagne/libspinners-freebasic)](https://github.com/thechampagne/libspinners-freebasic/blob/main/LICENSE)

FreeBASIC binding for **libspinners** an elegant terminal spinners.

### Example

```bas
#include once "spinner.bi"

dim spin as Spinner = SpinnerNew(SPINNER_SPINNERS_DOTS9, "Waiting for 3 seconds")
sleep(3000)
SpinnerStop(spin)
SpinnerClean(spin)
```

### References
 - [libspinners](https://github.com/thechampagne/libspinners)

### License

This repo is released under the [MIT](https://github.com/thechampagne/libspinners-freebasic/blob/main/LICENSE).
