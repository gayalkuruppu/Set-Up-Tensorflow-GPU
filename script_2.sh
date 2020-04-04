cd
#CUDNN_URL="http://developer.download.nvidia.com/compute/redist/cudnn/v6.0/cudnn-8.0-linux-x64-v6.0.taz"
#wget -c ${CUDNN_URL}
tar xvf ~/downloads/cudnn-9.0-linux-x64-v7.1.tar
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*

conda create -n tfgpu python=2.7 pip
source activate tfgpu
pip install --upgrade tensorflow-gpu==1.12


sudo reboot