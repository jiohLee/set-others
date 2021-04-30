sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt-get install build-essential cmake -y

sudo apt-get install pkg-config -y

sudo apt-get install libjpeg-dev libtiff5-dev libpng-dev -y

sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libxvidcore-dev libx264-dev libxine2-dev -y

sudo apt-get install libv4l-dev v4l-utils -y

sudo apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev -y

sudo apt-get install libgtk2.0-dev -y

sudo apt-get install mesa-utils libgl1-mesa-dri libgtkgl2.0-dev libgtkglext1-dev -y

sudo apt-get install libatlas-base-dev gfortran libeigen3-dev -y

sudo apt-get install python2.7-dev python3-dev python-numpy python3-numpy -y

mkdir $HOME/Documents/opencv
cd $HOME/Documents/opencv

wget -O opencv.zip https://github.com/opencv/opencv/archive/4.2.0.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.2.0.zip

unzip opencv.zip
unzip opencv_contrib.zip

cd opencv-4.2.0

mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=OFF -D WITH_IPP=OFF -D WITH_1394=OFF -D BUILD_WITH_DEBUG_INFO=OFF -D BUILD_DOCS=OFF -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=OFF -D BUILD_TESTS=OFF -D BUILD_PERF_TESTS=OFF -D WITH_QT=OFF -D WITH_GTK=ON -D WITH_OPENGL=ON -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-4.2.0/modules -D WITH_V4L=ON  -D WITH_FFMPEG=ON -D WITH_XINE=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D OPENCV_GENERATE_PKGCONFIG=ON -D OPENCV_ENABLE_NONFREE=ON ../

CPU_CNT=`cat /proc/cpuinfo | grep processor | wc -l`
printf "CPU CNT : %d\n" "${CPU_CNT}
time make -j${CPU_CNT}

sudo make install

sudo ldconfig
