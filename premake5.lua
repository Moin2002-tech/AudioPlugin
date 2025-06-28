workspace HelloWorld
	configuration {"Debug", "Release"}
	location "HelloWorld"
	kind "ConsoleApp"
	language "C++"
	targetdir "bin/%{cfg.buildcfg}"

	files {"helloworld/**.h", "helloworld/**.cpp"}

	filters configurations "Debug"
		defines { "DEBUG" }
		symbols "On"

	filters configuration "Release"
		defines { "NDEBUG" }
		optimize "On"
	