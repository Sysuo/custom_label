docker build -t custom_label .
p_path=`pwd`
c_dir=`basename $p_path`
docker run -it -d --name custom_label -p 80:80 -p 8080:8080 -v `pwd`:/var/deploy/$c_dir custom_label /bin/bash
docker exec -it -p 80:80 -p 8080:8080 -v `pwd`:/var/deploy/$c_dir custom_label /bin/bash
