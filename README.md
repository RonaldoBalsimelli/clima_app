# Previsão do Tempo Web App

## Descrição
Este é um aplicativo de previsão do tempo que exibe a previsão atual e futura de uma cidade inserida pelo usuário. Utiliza a API OpenWeather para obter dados climáticos como temperatura, umidade, pressão atmosférica, entre outros. O aplicativo permite alternar entre o modo claro e escuro.

## Funcionalidades
- Busca por cidade para exibir informações detalhadas do clima.
- Exibe previsão para os próximos dias.
- Alternância de tema (modo claro/escuro).
- Responsivo para telas pequenas.

## Tecnologias
- **Ruby on Rails**: Framework para desenvolvimento back-end.
- **Bootstrap**: Utilizado para o design responsivo.
- **OpenWeather API**: Para obter os dados climáticos.

## Como Rodar o Projeto

1. Clone o repositório:
    ```bash
    git clone <https://github.com/RonaldoBalsimelli/clima_app>
    ```

2. Instale as dependências:
    ```bash
    bundle install
    ```

3. Configure a chave da API do OpenWeather:
    - Crie uma conta no [OpenWeather](https://openweathermap.org/).
    - Obtenha a chave da API e configure no arquivo de configuração do Rails.

4. Execute o servidor:
    ```bash
    rails server
    ```

5. Acesse o aplicativo em `http://localhost:3000`.

## Estrutura de Arquivos

- **app/views/weather/index.html.erb**: Página inicial com o formulário de busca de cidade e exibição das informações climáticas.
- **app/assets/stylesheets/application.css**: Estilos do aplicativo.
- **config/routes.rb**: Configuração das rotas do Rails.

## Personalização

- **Tema claro/escuro**: O aplicativo possui um botão para alternar entre o modo claro e escuro.
- **Estilos responsivos**: O layout se adapta a diferentes tamanhos de tela, incluindo dispositivos móveis.

## Licença
Este projeto está licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para mais detalhes.
