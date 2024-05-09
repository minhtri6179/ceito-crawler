FROM --platform=linux/arm64 python3.9-slim

ENV PYTHONUNBUFFERED=True

ENV APP_HOME /app
WORKDIR ${APP_HOME}
ENV TZ=Asia/Ho_Chi_Minh

RUN apt-get -u upgrade 
RUN apt-get -u update
RUN apt-get -u autoremove

# Install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]
