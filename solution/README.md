#CSVSERVER

bash gencsv.sh

docker run -it -d --name=csvserver -p 9300:9300/tcp infracloudio/csvserver:latest 

docker cp ./inputFile.txt csvserver:/csvserver/inputdata

docker start csvserver

docker stop csvserver

docker rm csvserver 
===================================================

docker run -it -d --name=csvserver  -p  9303:9300/tcp infracloudio/csvserver:latest 

docker cp ./inputFile.txt csvserver:/csvserver/inputdata

docker start csvserver