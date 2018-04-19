## Sobre o trabalho

Trabalho feito para a disciplina de sistemas operacionais, onde era necessrio criar um contêiner de banco de dados e um contêiner de aplicação web e fazer a conexo entre ambos.

## Como reproduzir?

 Rodar o comando: `docker-compose -p sodocker run --user $UID --rm web composer install`

 Rodar o comando: `docker-compose -p sodocker up `
 
 Rodar o comando: `cp .env.example .env`
 
 Rodar o comando: `docker exec -it sodocker_web_1 php artisan key:generate`
 
 Rodar o comando: `docker exec -it sodocker_web_1 php artisan migrate:refresh --seed`
 
 Acessar a página `http://localhost:8000` 
 
 Ver o resultado e apreciar os gatinhos!
 
[MIT license](https://opensource.org/licenses/MIT).
