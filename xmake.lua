-- TODO: iOS - Need use dependencies:
--   |- https://github.com/ezored/ezored/blob/main/files/targets/ios/conan/recipe/conanfile.py
--   |- conan::sqlite3/3.36.0
--   |- conan::rapidjson/1.1.0
--   |- conan::openssl/1.1.1k
--   |- conan::sqlitecpp/3.1.1
--   |- conan::date/3.0.1
--   |- conan::nlohmann_json/3.9.1
--   |- conan::poco/1.11.1

-- TODO: macOS - Need use dependencies:
--   |- https://github.com/ezored/ezored/blob/main/files/targets/macos/conan/recipe/conanfile.py
--   |- conan::sqlite3/3.36.0
--   |- conan::rapidjson/1.1.0
--   |- conan::openssl/1.1.1k
--   |- conan::sqlitecpp/3.1.1
--   |- conan::date/3.0.1
--   |- conan::nlohmann_json/3.9.1
--   |- conan::poco/1.11.1

-- TODO: Android - Need use dependencies:
--   |- https://github.com/ezored/ezored/blob/main/files/targets/android/conan/recipe/conanfile.py
--   |- conan::sqlite3/3.36.0
--   |- conan::rapidjson/1.1.0
--   |- conan::openssl/1.1.1k
--   |- conan::sqlitecpp/3.1.1
--   |- conan::date/3.0.1
--   |- conan::nlohmann_json/3.9.1
--   |- conan::poco/1.11.1

-- TODO: Conan libs. Example:
--   |- https://docs.conan.io/en/1.31/integrations/build_system/xmake.html

-- TODO: Need pass version outside this to the C++ like this:
--   |- https://github.com/ezored/ezored/blob/main/files/targets/macos/conan/recipe/conanfile.py#L56
--   |- https://github.com/ezored/ezored/blob/main/files/targets/macos/cmake/CMakeLists.txt#L113

-- TODO: Need pass TARGET_NAME to the C++ (a simple string - maybe a definition?)
--   |- I need known in C++ in what target i'm in (android, ios, macos, test, etc)

-- TODO: What is the best option: One xmake.lua file for each target (ios, android, test, macos, windows, linux)?
--   |- In original ezored project i have one CMakeLists.txt for each file

-- TODO: Need pass parameters from outise (python call) to this lua file

-- TODO: How to build for Macos Catalyst?
--   |- Example: https://github.com/ezored/ezored/blob/main/files/config/target_ios.py#L51-L58

-- TODO: How to build with iOS/macOS Bitcode enabled or disabled?
--   |- Example: https://github.com/ezored/ezored/blob/main/files/config/target_ios.py#L66

-- TODO: How to build with iOS min-version defined?
--   |- Example: https://github.com/ezored/ezored/blob/main/files/config/target_ios.py#L17

add_rules("mode.release", "mode.debug")

target("ezored-lib")
    add_rules("xcode.framework")
    add_files("src/lib.cpp")
    add_headerfiles("include/lib.hpp")
    add_includedirs("include")

    -- add_values("xcode.bundle_identifier", "com.ezored.sample")
    -- add_values("xcode.codesign_identity", "Apple Development: paulo@prsolucoes.com (XXXXXXXXXX)")
    -- add_values("xcode.mobile_provision", "iOS Team Provisioning Profile: com.ezored.sample")

target("ezored-app")
    add_rules("xcode.application")
    add_files("src/lib.cpp", "src/main.cpp")
    add_headerfiles("include/lib.hpp")
    add_includedirs("include")

