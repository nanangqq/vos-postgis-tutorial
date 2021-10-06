# Jupyter Notebook 세팅

## 1. 미리 만들어진 이미지를 사용해 jupyter notebook 컨테이너 생성

docker run 명령어를 통해 컨테이너를 생성한다.

```bash
docker run -d --name vos_nb -p 3030:8888 vosdev/nb:jup_mapview
```

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

## 2. jup_mapview nbextension 설치 및 활성화

이미 설치 및 활성화가 된 상태의 이미지를 사용하지만,

아무래도 개발버전이다 보니 지도가 잘 뜨지 않는 경우가 종종 발생한다.

노트북 파일을 끄고 다시 실행해봐도 지도가 뜨지 않는다면

터미널을 열어서

```bash
jupyter nbextension install --sys-prefix --symlink --overwrite --py jup_mapview

jupyter nbextension enable --sys-prefix --py jup_mapview
```

명령어를 입력해준다.

## 끝
