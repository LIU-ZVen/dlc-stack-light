# a macro, usage:
# eg: a dir has three sub_dir a, b, and c
# ${CURRENT_DIR}/sub_dir_a, ${CURRENT_DIR}/sub_dir_b, ${CURRENT_DIR}/sub_dir_c
# after calling sub_dir_list(SUB_DIR_LIST ${CURRENT_DIR})
# SUB_DIR_LIST=sub_dir_asub_dir_bsub_dir_c, path still need a ${CURRENT_DIR} in the front
macro(sub_dir_list result curdir)
  file(GLOB children RELATIVE ${curdir} ${curdir}/*)
  set(dirlist "")
  foreach(child ${children})
    if(IS_DIRECTORY ${curdir}/${child})
      # message("child dir = " ${curdir}/${child})
      list(APPEND dirlist ${child})
    endif()
  endforeach()
  set(${result} ${dirlist})
endmacro()