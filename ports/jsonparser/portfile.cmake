vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO neogulcity/jsonparser
  REF 1.0.0
  SHA512 5db8741ca272113673617bcff57788f07e32ef1e1f54fb5b31f7d55f97c3dc672f938a40c2e8508e90cb2846816b200101eebd780142dcaf048c38d78569c7c6
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