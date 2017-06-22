project("DirectXTK")
    kind("StaticLib")
    language("C++")
    pchheader("pch.h")
    pchsource("pch.cpp")

    if buildpath ~= nil then
        targetdir(buildpath())
    end

    filter({ "configurations:Debug" })
        symbols("On")

    filter({ "configurations:Release" })
        symbols("Off")

    filter({})

    includedirs({ "../Inc" })

    files({ "**.cpp", "**.h", "../Inc/**.h" })
    excludes({ "XboxDDSTextureLoader.cpp" })