# This directory is a WORK IN PROGRESS

## Issues

* GCC compile time error:

  ```c
  g++ -fno-PIE -c   -g -O2 -DIN_GCC  -DCROSS_DIRECTORY_STRUCTURE   -fno-exceptions -fno-rtti -fasynchronous-unwind-tables -W -Wall -Wno-narrowing -Wwrite-strings -Wcast-qual -Wmissing-format-attribute -Woverloaded-virtual -pedantic -Wno-long-long -Wno-variadic-macros -Wno-overlength-strings   -DHAVE_CONFIG_H -I. -I. -I../.././gcc -I../.././gcc/. -I../.././gcc/../include -I../.././gcc/../libcpp/include  -I../.././gcc/../libdecnumber -I../.././gcc/../libdecnumber/dpd -I../libdecnumber -I../.././gcc/../libbacktrace   -o ubsan.o -MT ubsan.o -MMD -MP -MF ./.deps/ubsan.TPo ../.././gcc/ubsan.c
  ../.././gcc/ubsan.c: In function 'bool ubsan_use_new_style_p(location_t)':
  ../.././gcc/ubsan.c:1474:23: error: ISO C++ forbids comparison between pointer and integer [-fpermissive]
         || xloc.file == '\0' || xloc.file[0] == '\xff'
                         ^~~~
  make[2]: *** [Makefile:1085: ubsan.o] Error 1
  make[2]: Leaving directory '/mnt/lfs/sources/build/gcc-6.3.0/gcc/host-x86_64-pc-linux-gnu/gcc'
  make[1]: *** [Makefile:4110: all-gcc] Error 2
  make[1]: Leaving directory '/mnt/lfs/sources/build/gcc-6.3.0/gcc'
  make: *** [Makefile:858: all] Error 2

  ```

  ​