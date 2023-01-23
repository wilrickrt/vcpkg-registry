vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO wilrickrt/serial
  REF 2aa845d6151ef6adcbda5a83c5359881a5092c84
  SHA512 5dd3f018d72e88c82fbc8519673fbcd380ef95b6cc2ec44e5e4436128795d989e4c67874f6aa94cd58e51bd0d6e6b02d15b095c15241690f94b29833c29722d5
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
