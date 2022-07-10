# Tutorial: Deploy FastAPI no GCP
Projeto base para deploy de API em FastAPI model pytorch no GCP.

# Steps
1. 

# Instalando google cloud sdk para linux
Referência: https://cloud.google.com/sdk/docs/install-sdk?hl=pt-br

## Download do arquivo de 64 bits do Linux, na linha de comando, execute:
```
$ curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-392.0.0-linux-x86_64.tar.gz
```

## Extraia o conteúdo do arquivo
```
$ tar -xf google-cloud-cli-392.0.0-linux-x86_64.tar.gz
```

## Script de instalação para adicionar as ferramentas da CLI gcloud ao seu PATH
```
$ ./google-cloud-sdk/install.sh
```

# Rodar para testar

```
$ uvicorn src/main:app --reload
```

# Rodar com gunicorn

```
$ gunicorn -w 5 -k uvicorn.workers.UvicornWorker src/main:app
```

# TODO
- [] Add HTTPS support
- [] Restringir acesso a API usando chaves criptagrafadas (tokens)
- [] Fazer exemplo para a AWS

# Referências
* https://www.vultr.com/docs/how-to-deploy-fastapi-applications-with-gunicorn-and-nginx-on-ubuntu-20-04/?utm_source=performance-max-latam&utm_medium=paidmedia&obility_id=17096555207&utm_adgroup=&utm_campaign=&utm_term=&utm_content=&gclid=Cj0KCQjw8amWBhCYARIsADqZJoW_h5i9lUTVDMzR7QalhE8iF_-A1DI1RDixIMTE8MMuBha--aNtvusaApIvEALw_wcB
* https://www.youtube.com/watch?v=Lcuas-20g1g
* https://www.youtube.com/watch?v=vieoHqt7pxo
* https://cloud.google.com/run/docs/quickstarts/build-and-deploy/deploy-python-service