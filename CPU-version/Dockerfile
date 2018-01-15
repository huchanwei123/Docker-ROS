FROM ubuntu:14.04

RUN apt-get -y update && \
    apt-get install -y build-essential && \
    sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
    apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116 && \
    apt-get -y update && \
    apt-get -y install ros-indigo-desktop-full && \
    rosdep init && \
    rosdep update

# Replace 1000 with your user / group id
RUN export uid=1001 gid=1001 && \
    mkdir -p /home/huchanwei123 && \
    echo "huchanwei123:x:${uid}:${gid}:huchanwei123,,,:/home/huchanwei123:/bin/bash" >> /etc/passwd && \
    echo "huchanwei123:x:${uid}:" >> /etc/group && \
    echo "huchanwei123 ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/huchanwei123 && \
    chmod 0440 /etc/sudoers.d/huchanwei123 && \
    chown ${uid}:${gid} -R /home/huchanwei123
    
# Install dependencies
RUN apt-get install -y vnc4server \
                       vim \
                       git \ 
                       cmake3 \
                       firefox \
                       wget \
                       locate \ 
                       eog
# Install GLFW3
RUN git clone https://github.com/glfw/glfw.git && \
    cd glfw && mkdir glfw-build && cd glfw-build && \
    cmake -DBUILD_SHARED_LIBS=ON ../. && \
    make -j8 && \
    sudo make install 

USER huchanwei123
ENV HOME /home/huchanwei123

WORKDIR /home/huchanwei123

#CMD /usr/bin/firefox
CMD ["bash"]
