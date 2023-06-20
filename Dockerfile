FROM python:3.9 AS final
EXPOSE 8888

RUN apt-get update \
    && apt-get install -y pandoc texlive-xetex graphviz \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && apt-get install -y git g++ make \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/tudelft-cda-lab/FlexFringe/releases/download/latest/flexfringe-x64-linux

RUN pwd

COPY requirements.txt .
RUN pip install -r requirements.txt

ENTRYPOINT ["jupyter"]
CMD ["lab", "--ip=0.0.0.0"]
