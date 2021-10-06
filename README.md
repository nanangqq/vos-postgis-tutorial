# PostGIS 튜토리얼

## 0. docker 설치

```bash
bash install_docker.sh
```

## 1. 실습을 위한 컨테이너 생성 및 데이터 적재

1. 컨테이너 생성 및 각종 세팅에 대한 설명은 `pgis`, `nb` 디렉토리에 있는 스크립트와 `README.md` 파일을 참고한다.

   ```bash
   bash setup.sh
   ```

   `setup.sh` 스크립트를 실행해서 실습에 필요한 컨테이너들을 실행시킬 수 있다.

2. 공간데이터(shp파일)를 적재하는 방식은 크게 두가지가 있다고 볼 수 있다.
   - shp2pgsql 명령어 사용
   - 파이썬 geopandas 라이브러리 사용
