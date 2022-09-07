vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO neogulcity/jsonparser
  REF 1.0.0
  SHA512 3f7e08d99e803dacdf17116bbfb665eb285a46b9bb61e510087586e31cc31312ddd7d279c79b4eca7a2e38ab20a80a7467d059723184dc61c21a2c76e41a99ad
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