# 베이스 이미지 설정
FROM node:20

# 작업 디렉토리 설정
WORKDIR /app

# 패키지 설치 및 애플리케이션 복사
COPY package*.json ./
RUN npm install
COPY . .

# Vite 설치 및 설정
RUN npm install vite @vitejs/plugin-vue

# 포트 설정
EXPOSE 5173

# 빌드 및 실행 명령어
CMD ["npm", "run", "dev"]
