# strings

add_executable(string_ex string_ex.f90)

install(
  TARGETS string_ex
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
