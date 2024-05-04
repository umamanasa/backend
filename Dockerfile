FROM        node:18
RUN         mkdir /app
WORKDIR     /app
COPY        node_modules/ /app/node_modules/
COPY        package.json/ /app/package.json
COPY        index.js/ /app/index.js
COPY        TransactionService.js/ /app/TransactionService.js
ENTRYPOINT  [ "node", "/app/index.js" ]
