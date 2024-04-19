import os

os.system("""  mkdir my_folder
  echo "print('This is file one')" > my_folder/one.py
  echo "print('This is file two')" > my_folder/two.py
  python my_folder/one.py
  python my_folder/two.py
""")
