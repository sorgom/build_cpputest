workspace 'build_CppUTest'
    configurations { 'release', 'debug' }

    kind        'StaticLib'
    language    'C++'
    targetdir   'lib'
    objdir      'build/obj/%{cfg.buildcfg}'

    CppUTestHome = 'CppUTest/'

    includedirs { 
        CppUTestHome .. 'include',
    }

    filter 'configurations:debug'
        defines { 'DEBUG', 'CPPUTEST_USE_LONG_LONG=0' }
        symbols 'On'

    filter 'configurations:release'
        defines { 'NDEBUG', 'CPPUTEST_USE_LONG_LONG=0' }
        optimize 'On'

-- libCppUTest.a / CppUTest.lib
project 'CppUTest'

    filter { 'action:gmake2' }
        files { 
            CppUTestHome .. 'src/CppUTest/*.cpp',
            CppUTestHome .. 'src/Platforms/Gcc/*.cpp'
        }

    filter { 'action:vs*' }
        files { 
            CppUTestHome .. 'src/CppUTest/*.cpp',
            CppUTestHome .. 'src/Platforms/VisualCpp/*.cpp'
        }


-- libCppUTestExt.a / CppUTestExt.lib
project 'CppUTestExt'

    files { 
        CppUTestHome .. 'src/CppUTestExt/*.cpp',
    }
