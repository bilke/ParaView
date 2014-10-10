set(Module_SRCS)

file(GLOB cmake_files "${CMAKE_CURRENT_SOURCE_DIR}/*.catalyst.cmake")

foreach (cmake_file IN LISTS cmake_files)
  include("${cmake_file}")
endforeach ()

include(vtkQt)
find_package(Qt4 REQUIRED QUIET)
mark_as_advanced(QT_QMAKE_EXECUTABLE)
include(${QT_USE_FILE})

qt4_wrap_cpp(QVTKLibMocSrcs
  QVTKInteractorAdapter.h
  QVTKInteractorInternal.h
  QVTKWidget.h
)

vtk_module_library(vtkGUISupportQt ${Module_SRCS} ${QVTKLibMocSrcs})
vtk_module_link_libraries(vtkGUISupportQt LINK_PUBLIC ${QT_LIBRARIES})
