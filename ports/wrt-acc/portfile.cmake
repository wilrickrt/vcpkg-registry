vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO wilrickrt/acc
  REF ac8fcfac541c11faf99087ff64dc8bfa8e5897a0
  SHA512 2b91c8f52e2a2ae28a35a9ed0179e47030e130905ded058232e757ceb37afb6425052674f3125f0f5422b3d8bf2fbcb1e3bb02dc3026d49d6a4beb18e7150662
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
