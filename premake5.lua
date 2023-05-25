project "GLFW"
	kind "StaticLib"
	language "C"
	staticruntime "On"
	systemversion "latest"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/GLFW/glfw3.h",
		"include/GLFW/glfw3native.h",
		"src/glfw_config.h",
		"src/context.c",
		"src/init.c",
		"src/input.c",
		"src/monitor.c",
		"src/vulkan.c",
		"src/window.c",
		"src/x11_init.c",
		"src/x11_monitor.c",
		"src/x11_window.c",
		"src/xkb_unicode.c",
		"src/posix_time.c",
		"src/posix_thread.c",
		"src/glx_context.c",
		"src/egl_context.c",
		"src/osmesa_context.c",
		"src/linux_joystick.c"
	}

	defines 
	{ 
		"_GLFW_WIN32",
		"_CRT_SECURE_NO_WARNINGS"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
