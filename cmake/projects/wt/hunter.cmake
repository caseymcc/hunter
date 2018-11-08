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
    "4.0.4"
    URL
    "https://github.com/hunter-packages/wt/archive/4.0.4.tar.gz"
    SHA1
    4775e68e558661b9f895251542767e96bf7d977d
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
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(wt)
hunter_download(PACKAGE_NAME wt)
