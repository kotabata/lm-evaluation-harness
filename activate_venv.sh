module load python/3.10/3.10.10
python3 -m venv work
source work/bin/activate
pip install -e ".[ja]"
pip install beautifulsoup4
