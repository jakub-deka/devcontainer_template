apt update
apt upgrade -y

# Install python packages
python3 -m pip install --upgrade pip
pip install --user -r .devcontainer/requirements.txt

cat .devcontainer/vscode_fix.py >> /root/.local/lib/python3.12/site-packages/tensorflow/__init__.py

pip install git+https://github.com/tensorflow/docs