vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO neogulcity/jsonparser
  REF 1.0.0
  SHA512 a1a75a52f8013259cded112e9872e6ad4644b5df8997d682248be5ac3d86ef293c4ff557e0e8e52766fa49fdd55bfaf5f8aa938df88d8e4f9f9fd12a24844e65
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