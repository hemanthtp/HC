library(reticulate)
os <- import("os")
os$listdir(".")
py_he1p(os$chdir)

py_help(os$chdir)

source_python('d:/add.py')
add(5, 19)

#py_run_string("add(5,19)")

py_run_file('d:/add.py')
py$add(5,19)
