FROM --platform=linux/arm64 python3.9-slim

ENV PYTHONUNBUFFERED=True

ENV APP_HOME /app
WORKDIR ${APP_HOME}
ENV TZ=Asia/Ho_Chi_Minh

RUN apt-get -u upgrade 
RUN apt-get -u update
RUN apt-get -u autoremove

CMD ["python", "main.py"]
