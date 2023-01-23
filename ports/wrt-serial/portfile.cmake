vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO wilrickrt/serial
  REF c625a8455d0b86b170577114ccb4fddeaaf4caa5
  SHA512 13d258789fc6ea09d46368de38ce92fa3dba2df4f2b56d453271dc05f4550641918233916229745b4cb485ec6a812e80c1394326fdcbfc261de90dc87446f253
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
