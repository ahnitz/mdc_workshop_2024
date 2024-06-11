virtualenv env -p python3.11 # Or change to your python version if you have an older one
source env/bin/activate
git clone http://github.com/gwastro/pycbc.git
cd pycbc
pip install .
pip install mkl dynesty # optional dependencies that we'll use in this example


