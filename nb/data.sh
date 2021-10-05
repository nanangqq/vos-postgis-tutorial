docker cp "../data/AL_36_D002_20211002.zip" vos_nb:/home/jovyan/
docker exec -it vos_nb unzip -o AL_36_D002_20211002.zip

docker cp "../data/LSMD_ADM_SECT_UMD_세종.zip" vos_nb:/home/jovyan/
docker exec -it vos_nb unzip -o LSMD_ADM_SECT_UMD_세종.zip
