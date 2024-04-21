workspace 'build_CppUTest'
    configurations { 'release', 'debug' }

    kind        'StaticLib'
    language    'C++'
    targetdir   'lib'
    objdir      'build/obj/%{cfg.buildcfg}'

    CppUTestHome = 'cpputest'

    includedirs { 
        CppUTestHome .. '/include',
    }

    filter 'configurations:debug'
        defines { 'DEBUG', 'CPPUTEST_USE_LONG_LONG=0' }
        symbols 'On'

    filter 'configurations:release'
        defines { 'NDEBUG', 'CPPUTEST_USE_LONG_LONG=0' }
        optimize 'On'

    -- libCppUTest.a / CppUTest.lib
    project 'CppUTest'

        files { 
            CppUTestHome .. '/src/CppUTest/*.cpp',
        }
        filter { 'action:gmake2' }
            files { 
                CppUTestHome .. '/src/Platforms/Gcc/*.cpp'
            }

        filter { 'action:vs*' }
            files { 
                CppUTestHome .. '/src/Platforms/VisualCpp/*.cpp'
            }


    -- libCppUTestExt.a / CppUTestExt.lib
    project 'CppUTestExt'

        files { 
            CppUTestHome .. '/src/CppUTestExt/*.cpp',
        }
