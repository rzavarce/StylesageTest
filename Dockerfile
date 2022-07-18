# Build stage
FROM node:latest as build-stage

RUN mkdir -p /opt/projects/TraderbotVue/

WORKDIR /opt/projects/TraderbotVue/

COPY . /opt/projects/TraderbotVue/

RUN npm install

RUN npm install -g @quasar/cli

RUN quasar build

# Runtime stage
FROM nginx as production-stage
ENV projectName "TradingbotWebApp"s
COPY --from=build-stage /opt/projects/TraderbotVue/dist/spa/. /usr/share/nginx/html/
COPY --from=build-stage /opt/projects/TraderbotVue/ci/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8881

