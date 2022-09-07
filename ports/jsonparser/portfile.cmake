vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO neogulcity/jsonparser
  REF 1.0.0
  SHA512 413492ecc9f247a9c25e2f79308a8d8f9a2ed51c1c2ea91a96d8a702686597cb883f2f6b1caacb1ffa8285fcf2b5018091a598fccf0dce386f5a791777a3022a
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright)