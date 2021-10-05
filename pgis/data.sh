docker cp "../data/AL_36_D002_20211002.zip" vos_pgis:/var/lib/postgresql/
docker cp "../data/LSMD_ADM_SECT_UMD_세종.zip" vos_pgis:/var/lib/postgresql/
docker exec -it -w /var/lib/postgresql/ vos_pgis unzip -o *.zip
