
#obtener la imagen elastic search docker 
docker pull elasticsearch:7.14.2

#ejecuta el contenedor 
docker run -p 9200:9200 -e "discovery.type=single-node" elasticsearch:7.14.2



#docker run -d --name elasticPrueba -p 9200:9200 -e "discovery.type=single-node" elasticsearch:7.14.2