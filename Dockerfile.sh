yum update
yum install python3-pip
yum install cuda-11-0 libcudnn8
# npm install
pip3 install virtualenv
pip3 install pip
virtualenv ./app/.venv
. ./app/.venv/bin/activate

# pip3 install -U pip3
# pip3 uninstall setuptools
# pip3 install 'setuptools<20.2'

# pip3 install pip3==8.1.0
# pip3 install ­­--upgrade pip3
# ls / 
# pip3 install ­-r requirements.txt


pip3 install absl-py==0.11.0 --no-cache-dir
pip3 install astunparse==1.6.3 --no-cache-dir
pip3 install cached-property==1.5.2 --no-cache-dir
pip3 install cachetools==4.1.1 --no-cache-dir
pip3 install certifi==2020.12.5 --no-cache-dir
pip3 install chardet==3.0.4 --no-cache-dir
pip3 install gast==0.3.3 --no-cache-dir
pip3 install google-auth==1.23.0 --no-cache-dir
pip3 install google-auth-oauthlib==0.4.2 --no-cache-dir
pip3 install google-pasta==0.2.0 --no-cache-dir
pip3 install grpcio==1.32.0 --no-cache-dir
pip3 install h5py==2.10.0 --no-cache-dir
pip3 install idna==2.10 --no-cache-dir
pip3 install imbalanced-learn==0.7.0 --no-cache-dir
pip3 install imblearn==0.0 --no-cache-dir
pip3 install importlib-metadata==3.1.1 --no-cache-dir
pip3 install joblib==0.17.0 --no-cache-dir
pip3 install Keras-Preprocessing==1.1.2 --no-cache-dir
pip3 install Markdown==3.3.3 --no-cache-dir
pip3 install numpy==1.19.2 --no-cache-dir
pip3 install oauthlib==3.1.0 --no-cache-dir
pip3 install opt-einsum==3.3.0 --no-cache-dir
pip3 install pandas==1.1.4 --no-cache-dir
pip3 install protobuf==3.14.0 --no-cache-dir
pip3 install pyasn1==0.4.8 --no-cache-dir
pip3 install pyasn1-modules==0.2.8 --no-cache-dir
pip3 install python-dateutil==2.8.1 --no-cache-dir
pip3 install pytz==2020.4 --no-cache-dir
pip3 install requests==2.25.0 --no-cache-dir
pip3 install requests-oauthlib==1.3.0 --no-cache-dir
pip3 install rsa==4.6 --no-cache-dir
pip3 install scikit-learn==0.23.2 --no-cache-dir
pip3 install scipy==1.5.4 --no-cache-dir
pip3 install six==1.15.0 --no-cache-dir
pip3 install tensorboard==2.4.0 --no-cache-dir
pip3 install tensorboard-plugin-wit==1.7.0 --no-cache-dir
pip3 install tensorflow==2.4.1 --no-cache-dir
pip3 install tensorflow-estimator==2.4.10 --no-cache-dir
pip3 install termcolor==1.1.0 --no-cache-dir
pip3 install threadpoolctl==2.1.0 --no-cache-dir
pip3 install tqdm==4.54.1 --no-cache-dir
pip3 install urllib3==1.26.2 --no-cache-dir
pip3 install Werkzeug==1.0.1 --no-cache-dir
pip3 install wrapt==1.12.1 --no-cache-dir
pip3 install zipp==3.4.0 --no-cache-dir


.service - 
Loaded: loaded (/etc/systemd/system/ .service; enabled; vendor preset: disabled)
Active: failed (Result: start-limit) since 
Process: 21027 ExecStart= (code=exited, status=127)

pip3 install jupyter
jupyter notebook --generate-config
ipython kernel install --user --name=algo
jupyter notebook --ip=0.0.0.0 --port=5555 --allow-root

deactivate 
# python3 -c "import tensorflow; print(tensorflow.config.list_physical_devices('GPU'))"
# apt update
# apt install nvidia-driver-460
# apt install nvidia-361-dev
# apt install nvidia-modprobe
# lsb_release -a
yum update
# apt-get -y install module-init-tools
# apt-get -y install kmod
# curl -fSsl -O https://us.download.nvidia.com/tesla/450.80.02/NVIDIA-Linux-x86_64-450.80.02.run
# sh NVIDIA-Linux-x86_64-450.80.02.run
# sh NVIDIA-Linux-x86_64-450.80.02.run --kernel-source-path=/lib/modules/4.15.0-135-generic/build/include/


# npm --prefix ./api install
node ./app/api
