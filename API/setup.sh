version=`date "+%H-%M-%S_%d-%m-%y"`
echo $version

docker build -t qa-api .
docker tag qa-api qa-api-version

#docker run -p 85:8080 -e es_ip='host.docker.internal' -e es_port=9200 qa-api
#docker run -p 85:8080 qa-api
#sudo docker run -p 85:8080 -e es_ip='localhost' -e es_port=9200 qa-api
#docker run -p 85:8080 -e es_ip='34.135.163.252' -e es_port=9200 qa-api
#python -m uvicorn main:app --host 0.0.0.0 --port 8080

#docker run -p 85:8080 71a2a3310db6