workspace 'build CppUTest'
    configurations { 'release', 'debug' }

    kind        'StaticLib'
    language    'C++'
    targetdir   'lib'
    objdir      'build/obj/%{cfg.buildcfg}'

    includedirs { 
        'include',
    }

    filter 'configurations:debug'
        defines { 'DEBUG', 'CPPUTEST_USE_LONG_LONG=0' }
        symbols 'On'

    filter 'configurations:release'
        defines { 'NDEBUG', 'CPPUTEST_USE_LONG_LONG=0' }
        optimize 'On'

-- libCppUTest.a 
project 'CppUTest'

    files { 
        'src/CppUTest/*.cpp',
        'src/Platforms/Gcc/*.cpp'
    }


-- libCppUTestExt.a 
project 'CppUTestExt'

    files { 
        'src/CppUTestExt/*.cpp',
    }
