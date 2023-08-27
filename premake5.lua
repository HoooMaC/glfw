project "GLFW"
	kind "StaticLib"
	language "C"
	staticruntime "on"
	systemversion "latest"

	targetdir ("%{wks.location}/bin/" .. outputdir .. "-%{prj.name}")
	objdir ("%{wks.location}/bin-int/" .. outputdir .. "-%{prj.name}")

	files
	{
		"include/GLFW/glfw3.h",
		"include/GLFW/glfw3native.h",
		"src/**.h",
		"src/context.c",
		"src/**.c"
	}

	defines 
	{ 
		"_GLFW_WIN32",
		"_CRT_SECURE_NO_WARNINGS"
	}

	filter "configurations:Debug"
		defines { "_DEBUG" }
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines { "NDEBUG" }
		runtime "Release"
		optimize "on"
