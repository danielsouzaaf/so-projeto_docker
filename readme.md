## Sobre o trabalho

Trabalho feito para a disciplina de sistemas operacionais, onde era necessrio criar um contêiner de banco de dados e um contêiner de aplicação web e fazer a conexo entre ambos.

## Como reproduzir?
 Rodar o comando: `docker-compose up`
 
 Rodar o comando: `cp .env.example .env`
 
 Rodar o comando: `docker exec -it sodocker_web_1 php artisan migrate:refresh --seed`
 
[MIT license](https://opensource.org/licenses/MIT).
