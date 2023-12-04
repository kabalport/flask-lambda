# Python 이미지를 기반으로 사용
FROM python:3.8-slim

# 작업 디렉토리 설정
WORKDIR /app

# 현재 디렉토리의 파일들을 컨테이너 내의 /app 디렉토리로 복사
COPY . /app

# Flask 앱 실행을 위한 Gunicorn 설치
RUN pip install gunicorn

# Gunicorn을 사용하여 Flask 앱 실행
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]

