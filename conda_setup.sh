conda create --name wk2024
eval "$(conda shell.bash hook)"
conda activate wk2024
conda install python=3.11
git clone http://github.com/gwastro/pycbc.git
cd pycbc
pip install .
pip install mkl dynesty # optional dependencies that we'll use in this example

