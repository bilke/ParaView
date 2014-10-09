vtk_module(vtkInteractionWidgets
  GROUPS
    Rendering
  DEPENDS
    vtkRenderingAnnotation
    # vtkRenderingFreeType
    # vtkRenderingVolume
    vtkFiltersModeling
    # vtkFiltersHybrid
    #vtkImagingGeneral
    # vtkImagingHybrid
    # vtkInteractionStyle
  TEST_DEPENDS
    vtkIOLegacy
    vtkIOXML
    vtkRenderingVolume${VTK_RENDERING_BACKEND}
    vtkRenderingFreeType${VTK_RENDERING_BACKEND}
    vtkTestingRendering
    vtkInteractionImage
    vtkInteractionStyle
    vtkFiltersModeling
    vtkFiltersFlowPaths
    vtkFiltersSelection
    vtkFiltersProgrammable
    vtkRenderingLOD
    vtkImagingStencil
  KIT
    vtkInteraction
  )
