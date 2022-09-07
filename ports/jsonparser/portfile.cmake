vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO neogulcity/jsonparser
  REF 1.0.0
  SHA512 aecb4ca8946ca379205b756a36f55009797ffd88d7b50d23779f7a3dfe30461b8332faac2341c6623c4ddd3398d12b1388471b44711ae1a4c8d0889c4466a1c1
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