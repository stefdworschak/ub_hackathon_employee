FROM ebiven/vue-cli

RUN apt update

WORKDIR /app/
COPY . /app/

EXPOSE 8000
CMD ["npm", "run", "serve"]