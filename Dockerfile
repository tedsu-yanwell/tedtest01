FROM node:22-alpine  
LABEL "language"="nodejs"  
LABEL "framework"="express"  
WORKDIR /app  
# 配置 npm 網絡參數  
RUN npm config set fetch-timeout 600000 && \  
    npm config set fetch-retry-mintimeout 20000 && \  
    npm config set fetch-retry-maxtimeout 120000 && \  
    npm config set fetch-retries 5  
# 複製應用文件  
COPY . .  
# 安裝依賴  
RUN npm install  
EXPOSE 8080  
CMD ["node", "server.js"]  
