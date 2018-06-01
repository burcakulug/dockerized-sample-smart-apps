FROM ubuntu:16.04
WORKDIR /apps
ADD package.json /apps
RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean && \
    git clone https://github.com/burcakulug/cardiac-risk-app.git && \
    cd cardiac-risk-app && npm install && cd .. && \
    git clone https://github.com/burcakulug/growth-chart-app.git && \
    cd growth-chart-app && npm install && cd .. && \
    npm install
ENTRYPOINT ["npm", "start"]
EXPOSE 9000


