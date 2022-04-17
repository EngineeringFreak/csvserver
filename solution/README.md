#CSVSERVER

# Run bash script to create the inputfile
bash gencsv.sh

# Running docker with environment and port binding 
docker run -it -d --name=csvserver  -e CSVSERVER_BORDER=Orange -p  9303:9300/tcp infracloudio/csvserver:latest 

# copying and renaming inputfile into destination
docker cp ./inputFile.txt csvserver:/csvserver/inputdata

# To run csvserver
docker start csvserver
