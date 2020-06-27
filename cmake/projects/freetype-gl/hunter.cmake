# By Denis Kerzhemanov, 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    freetype-gl
    VERSION
    "20.21.6-p0" #project has no releases so uinging date Y.M.D-patch
    URL
    "https://github.com/caseymcc/freetype-gl/archive/20.21.6-p0.tar.gz"
    SHA1
    c0d842d9ed5471fb4e099d13d6e996e81c19e7e4
)

hunter_cmake_args(
    freetype-gl
    CMAKE_ARGS
    freetype-gl_USE_HUNTER=ON
    freetype-gl_BUILD_DEMOS=OFF
    freetype-gl_BUILD_TESTS=OFF
    freetype-gl_BUILD_APIDOC=OFF
    freetype-gl_BUILD_MAKEFONT=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(freetype-gl)
hunter_download(PACKAGE_NAME freetype-gl)
