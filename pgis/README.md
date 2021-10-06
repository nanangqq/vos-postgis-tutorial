# PostGIS 세팅

## 1. PostGIS 3 버전이 설치된 postgresql 컨테이너 생성

docker run 명령어를 통해 컨테이너를 생성한다.

```bash
docker run -d --name vos_pgis -e POSTGRES_PASSWORD=5555443 -p 5555:5432 vosdev/pg_13.3_pgis_3
```

위 명령어의 구조는 다음과 같다.

```
[docker: 도커라는 프로그램을 사용하기위한 명령어]

[run: 도커 명령어 중에서 컨테이너를 새로 구동시키기 위한 명령어]

[-d --name vos_pgis -e POSTGRES_PASSWORD=5555443 -p 5555:5432: 옵션들]

[vosdev/pg_13.3_pgis_3: 이미지 이름]
```

크게 나누면 이렇게 4가지 파트로 이뤄져 있다고 볼 수 있다.

</br>

옵션들은 `-d`, `--name`, `-e`, `-p` **(flag 부분)**

`vos_pgis`, `POSTGRES_PASSWORD=5555443`, `5555:5432` **(value 부분)**

으로 나눠서 볼 수 있다.

</br>

**flag** 부분은 - 혹은 -- 뒤에 어떤 옵션을 설정한 것인지 축약어를 적거나 옵션 이름을 그대로 적거나 해서 해당 옵션을 설정하겠다고 명시하는 부분이다.

**value** 부분은 해당 옵션에 필요한 값을 넣어주는 부분이다. 특별히 값이 필요 없는 경우는 값을 따로 적지 않고, flag만 띄워주면 된다.

</br>

`-d` 플래그는 컨테이너를 백그라운드에서 동작하는 옵션을 설정할 때 사용한다. 값은 따로 필요 없다.

`--name` 플래그는 컨테이너의 이름(별칭)을 지정할 때 사용한다. 한칸 띄고 이름으로 지정할 값을 입력하면 된다. 위 스크립트에서는 `vos_pgis`가 컨테이너의 이름으로 설정되어 있다. 이름을 지정하지 않을 경우, 도커가 알아서 랜덤한 이름을 생성해준다.

`-e` 플래그는 컨테이너 안에서 환경변수 값을 설정할 때 사용한다. 해당 플래그 뒤에 `[환경변수명]=[환경변수값]` 형식으로 써주면 된다. 우리가 사용하는 이미지는 `POSTGRES_PASSWORD` 환경변수 값을 설정해 주면 superuser인 `postgres` user의 비밀번호를 해당 환경변수 값으로 자동으로 설정하게 세팅되어 있다.

`-p` 플래그는 컨테이너의 포트와 호스트의 포트를 연결시킬 때 사용한다. `[호스트포트]:[컨테이너포트]` 형식으로 써주면 된다.

</br>

미리 만들어 둔 `run.sh` 스크립트를 실행해도 된다.

```bash
. run.sh
```

or

```bash
bash run.sh
```

or

```bash
zsh run.sh
```

## 2. PostGIS 활성화

생성된 데이터베이스에서 아래 쿼리문을 실행시킨다.

```sql
create extension postgis;
```

만약 데이터베이스에 postgis extension 이 제대로 설치 되었다면,

```sql
select count(*) from pg_catalog.pg_tables where tablename = 'spatial_ref_sys';

-- result

-- count|
-- -----+
--     1|
```

spatial_ref_sys 라는 이름을 가진 테이블의 개수가 1로 조회될 것이다.

## 끝
