paraview_add_test_cxx(${vtk-module}CxxTests tests
  NO_DATA NO_OUTPUT NO_VALID
  TestTransferFunctionManager.cxx
  )
vtk_test_cxx_executable(${vtk-module}CxxTests tests)
