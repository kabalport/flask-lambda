# Python 이미지를 기반으로 사용
FROM python:3.8-slim

# 작업 디렉토리 설정
WORKDIR /app

# 현재 디렉토리의 파일들을 컨테이너 내의 /app 디렉토리로 복사
COPY . /app

# 필요한 Python 패키지들을 설치
RUN pip install -r requirements.txt

# 컨테이너가 시작될 때 실행될 명령어 정의
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
