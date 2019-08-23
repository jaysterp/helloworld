 ARG REGISTRY_NAME=jeburkedemo.azurecr.io/
FROM jeburkedemo.azurecr.io/baseimages/node:9-alpine
EXPOSE 80
COPY . /src 
RUN cd /src && npm install
CMD ["node", "/src/server.js"]
