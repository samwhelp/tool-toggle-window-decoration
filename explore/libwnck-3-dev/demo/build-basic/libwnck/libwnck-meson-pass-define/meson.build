project('demo', 'c')
add_global_arguments('-D WNCK_I_KNOW_THIS_IS_UNSTABLE', language : 'c')
libwnck_dep = dependency('libwnck-3.0', version: '>=3.24')
executable('demo', 'main.c', dependencies : [libwnck_dep])
