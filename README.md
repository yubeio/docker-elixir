# docker-elixir

Imagem docker para aplicações elixir utilizada pelas aplicações da Yube.

## Adicionando nova versão

1. Atualizar a imagem base

   Para adicionar uma nova versão é necessário alterar a imagem base (`FROM`) no arquivo [Dockerfile](./Dockerfile:L5).
   Você consegue ver as versões disponíveis em <https://hub.docker.com/_/elixir>.

   > Sempre utilizar a versão `alpine`

2. Gerar fazer commit da alteração

3. Gerar as tags da versão

   O token deve estar configurado no `~/token.txt`

   Para atualização para a versão 1.11.3 `scripts/image.push 1.11.3 ${dockerhub-username}`


   Exemplos de parametros e imagens geradas:
    - `1` gera imagem `yube/elixir:1-alpine`
    - `1.11` gera imagem `yube/elixir:1.11-alpine`
    - `1.11.3` gera imagem `yube/elixir:1.11.3-alpine`
