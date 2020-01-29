sudo apt-get install libxrandr-dev
sudo apt-get install build-essential cmake git \                                            
libx11-dev freeglut3-dev libxcb-image0-dev libudev-dev libjpeg8-dev libopenal-dev libsndfile1-dev libfreetype6-dev
git clone https://github.com/SFML/SFML
sudo apt-get install libsfml-dev
sudo apt-get install libsfml-doc
git clone https://github.com/SFML/CSFML
cd SFML
cmake .
make
sudo make install
cd ..
cd CSFML
SFML="$(realpath ../SFML)"
cmake -DCMAKE_MODULE_PATH="$SFML/cmake/Modules" .
make
sudo make install
cd ..
sudo apt-get install g++ build-essential libpthread-stubs0-dev libgl1-mesa-dev libx11-dev libxrandr-dev libfreetype6-dev libglew-dev libjpeg-dev libsndfile1-dev libopenal-dev