echo "# Docker" >> README.md
git init
python -m venv .venv;
. .venv/bin/activate;
pip3 install -r requirements.txt;
pip install pre-commit;
pre-commit install;
type nul > .gitignore;
type nul > .pre-commit-config.yaml;
git add README.md
pip freeze > requirements.txt;
