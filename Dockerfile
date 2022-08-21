# Use the official image as a parent image.
FROM ubuntu:18.04
# FROM tensorflow/tensorflow:1.15.5-gpu-py3

# Copy the file from your host to your current location.
# COPY . /

# Set the working directory.
WORKDIR /
# WORKDIR /home/ubuntu/repos/algo/app

# setup dependencies
RUN apt-get update
RUN apt-get -y install xz-utils
RUN apt-get -y install curl
# Download latest nodejs binary
# Extract & install
RUN curl https://nodejs.org/dist/latest/node-v15.10.0-linux-x64.tar.xz -O
# RUN tar -xf node-v15.10.0-linux-x64.tar.xz
# RUN ln -s /node-v15.10.0-linux-x64/bin/node /usr/local/bin/node
# RUN ln -s /node-v15.10.0-linux-x64/bin/npm /usr/local/bin/npm
# RUN ln -s /node-v15.10.0-linux-x64/bin/npx /usr/local/bin/npx
# RUN curl https://nodejs.org/dist/latest/node-v15.10.0-linux-x64.tar.xz -O
# RUN tar -xf node-v15.10.0-linux-x64.tar.xz
# RUN sudo ln -s /node-v15.10.0-linux-x64/bin/node /usr/bin/node
# RUN sudo ln -s /node-v15.10.0-linux-x64/bin/npm /usr/bin/npm
# RUN sudo ln -s /node-v15.10.0-linux-x64/bin/npx /usr/bin/npx

# RUN apt-get -y install nvidia-cuda-toolkit



# RUN apt-get -y install nvidia-driver-450-server
# RUN apt-get -y install nvidia-driver-460
# RUN apt-get -y install nvidia-driver-455
# RUN apt-get -y install nvidia-modprobe
# RUN apt-get -y install nvidia-container-toolkit
# RUN apt-get -y install python3
# RUN curl -fSsl -O https://us.download.nvidia.com/tesla/410.104/NVIDIA-Linux-x86_64-410.104.run
# RUN sh NVIDIA-Linux-x86_64-410.104.run
# RUN curl -fSsl -O https://us.download.nvidia.com/tesla/460.32.03/NVIDIA-Linux-x86_64-460.32.03.run
# RUN sh NVIDIA-Linux-x86_64-460.32.03.run
# RUN add-apt-repository ppa:graphics-drivers/ppa
# RUN apt -y install nvidia-driver-440

# Install dependencies:

# RUN pip install virtualenv

# RUN python3 -m venv ./venv
# COPY requirements.txt .
# RUN virtualenv ./.venv
# RUN . ./.venv/bin/activate && pip install -r requirements.txt



# Copy the rest of your app's source code from your host to your image filesystem.
COPY / /
COPY ./ /app
# RUN npm --prefix ./app/api install 

# RUN ls /
# COPY Dockerfile.sh /
# RUN ls ./api/
# RUN ls ./src/test.py
# ADD /home/ubuntu/repos/algo/app/Dockerfile.sh ./

# RUN ls ./usr
# RUN chmod +x ./Dockerfile.sh

# Run the specified command within the container.
# CMD virtualenv ./.venv ; source ./.venv/bin/activate ; pip install ­­--upgrade pip ; pip install ­-r requirements.txt ; deactivate ; npm --prefix ./api install ; node ./api
RUN apt-get -y install yum

CMD sh ./Dockerfile.sh
# CMD node ./api



# Add metadata to the image to describe which port the container is listening on at runtime.
EXPOSE 5555











# # For more information, please refer to https://aka.ms/vscode-docker-python
# FROM python:3.8-slim-buster

# # Keeps Python from generating .pyc files in the container
# ENV PYTHONDONTWRITEBYTECODE 1

# # Turns off buffering for easier container logging
# ENV PYTHONUNBUFFERED 1

# # Install pip requirements
# # ADD requirements.txt .
# # RUN python pip install ­­--upgrade pip
# # RUN python -m pip install -r requirements.txt

# WORKDIR /app
# # ADD . /app
# COPY ./ ./


# # Switching to a non-root user, please refer to https://aka.ms/vscode-docker-python-user-rights
# RUN useradd appuser && chown -R appuser /app
# USER appuser

# # During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
# CMD sh /app/Dockerfile.sh 
