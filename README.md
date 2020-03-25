# docker-elixir

Imagem docker para aplicações elixir utilizada pelas aplicações da Yube.

## Adicionando nova versão

1. Atualizar a imagem base

    Para adicionar uma nova versão é necessário alterar a imagem base (`FROM`) no arquivo [Dockerfile](./Dockerfile:L5). 
    Você consegue ver as versões disponíveis em <https://hub.docker.com/_/elixir>.

    > Sempre utilizar a versão `alpine`

2. Gerar fazer commit da alteração

3. Gerar as tags da versão

    A integração entre o github e docker hub utilizam a tag do github para gerar as tags no docker hub.

    Exemplo: 
    Para atualização para a versão 1.7.4, 
    gerar tags: 
     - `1` gera imagem `yube/elixir:1-alpine`
     - `1.7` gera imagem `yube/elixir:1.7-alpine`
     - `1.7.4` gera imagem `yube/elixir:1.7.4-alpine`

