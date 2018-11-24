docker build -t custom_label .
p_path=`pwd`
c_dir=`basename $p_path`
docker run -it --name custom_label -p 80:80 -v `pwd`:/var/deploy/$c_dir custom_label /bin/bash
