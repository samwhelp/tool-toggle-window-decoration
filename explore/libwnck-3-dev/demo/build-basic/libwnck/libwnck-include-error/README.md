


## Include Error

run

``` sh
$ ./build.sh
```

show

```
In file included from /usr/include/libwnck-3.0/libwnck/libwnck.h:26:0,
                 from main.c:2:
/usr/include/libwnck-3.0/libwnck/window.h:30:2: error: #error "libwnck should only be used if you understand that it's subject to frequent change, and is not supported as a fixed API/ABI or as part of the platform"
 #error "libwnck should only be used if you understand that it's subject to frequent change, and is not supported as a fixed API/ABI or as part of the platform"
  ^~~~~
```


## Where

run

``` sh
$ grep '#error' "/usr/include/libwnck-3.0/libwnck/window.h" -n -B 1 -A 1
```

show

```
22-#if !defined (__LIBWNCK_H_INSIDE__) && !defined (WNCK_COMPILATION)
23:#error "Only <libwnck/libwnck.h> can be included directly."
24-#endif
--
29-#ifndef WNCK_I_KNOW_THIS_IS_UNSTABLE
30:#error "libwnck should only be used if you understand that it's subject to frequent change, and is not supported as a fixed API/ABI or as part of the platform"
31-#endif
```

then look another demo [[libwnck-pkg-config](../libwnck-pkg-config)].
that will show how to fix.
