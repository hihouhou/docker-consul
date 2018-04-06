# consul
consul for docker

For launching :
docker run -e "options=agent -ui -server -node node1 -data-dir=/tmp/toto -client=0.0.0.0" -p 8500:8500 --name consul hihouhou/consul

