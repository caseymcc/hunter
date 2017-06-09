# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    wt
    VERSION
    "3.3.7-p0"
    URL
#    "https://github.com/caseymcc/wt/archive/3.3.7.tar.gz"
    "D:/projects/3rdparty/wt"
    SHA1
    966b7ee22fbf297cedaf62676001f243c0cae95e
)

hunter_cmake_args(
    wt
    CMAKE_ARGS
        WT_USE_HUNTER=ON
        BUILD_EXAMPLES=OFF
        ENABLE_HARU=OFF
        ENABLE_PANGO=OFF
        ENABLE_POSTGRES=OFF
        ENABLE_FIREBIRD=OFF
        ENABLE_QT4=OFF
        ENABLE_LIBWTTEST=OFF
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_local_cmake)
#hunter_pick_scheme(DEFAULT url_sha1_cmake)
#hunter_cacheable(wt)
hunter_download(PACKAGE_NAME wt)
