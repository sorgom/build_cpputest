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
        defines { 'DEBUG' }
        symbols 'On'

    filter 'configurations:release'
        defines { 'NDEBUG' }
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
