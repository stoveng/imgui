binDir = "bin/"
tempDir = "temp/"

project "ImGui"
	kind "StaticLib"
	language "C++"

	targetdir (binDir .. outputDir)
	objdir (tempDir .. outputDir)

	files
	{
		"%{prj.name}/**.h",
		"%{prj.name}/**.cpp"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
