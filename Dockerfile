FROM python:latest
WORKDIR /guesslang-service
COPY requirements.txt /guesslang-service/requirements.txt
RUN --mount=type=cache,target=/root/.cache pip install \
    -i https://pypi.tuna.tsinghua.edu.cn/simple \
    -r requirements.txt
COPY main.py /guesslang-service/main.py

CMD ["python","main.py"]