FROM jupyter/r-notebook

USER root
RUN apt-get update && apt-get install libpq-dev -y

USER jovyan
RUN pip install psycopg2 ipython-sql geopandas geopandas-postgis jupyterthemes
RUN conda install nodejs yarn -y
RUN npm install -g ijavascript
RUN ijsinstall

COPY ./jup_mapview-master.zip /home/jovyan
WORKDIR /home/jovyan
RUN unzip jup_mapview-master.zip
WORKDIR /home/jovyan/jup_mapview-master
RUN yarn install && yarn build
RUN pip install -e .
RUN jupyter nbextension install --sys-prefix --symlink --overwrite --py jup_mapview
RUN jupyter nbextension enable --sys-prefix --py jup_mapview
WORKDIR /home/jovyan