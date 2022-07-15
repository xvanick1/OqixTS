FROM arm64v8/node:16-slim
WORKDIR /root
ENV PATH="/usr/local/bin:${PATH}"
COPY . .
RUN npm ci
RUN npm cache clean -f
CMD [ "npm", "run", "start" ]