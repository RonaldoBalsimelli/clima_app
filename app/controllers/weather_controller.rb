class WeatherController < ApplicationController
  include HTTParty

  def search
    city = params[:city]
    weather_data = get_weather(city)

    if weather_data
      @temperature = weather_data['main']['temp']
      @description = weather_data['weather'].first['description']
    else
      flash[:alert] = "Cidade não encontrada!"
    end

    render :index
  end

  private

  def get_weather(city)
    api_key = '099ab0a9bad88a8b1c6631e49cfabbb2'  # Substitua pela sua chave da API

    # Codificar a cidade para tratar caracteres especiais
    city_encoded = CGI.escape(city)

    # Construir a URL completa da API, agora usando o domínio correto
    url = "https://api.openweathermap.org/data/2.5/weather?q=#{city_encoded}&appid=#{api_key}&units=metric&lang=pt_br"

    # Fazendo a requisição GET para a API
    response = self.class.get(url)

    # Debug: Verificando a resposta da API
    if response.success?
      return response.parsed_response
    else
      Rails.logger.error "Erro ao buscar dados da cidade: #{response.code} - #{response.message}"
      return nil
    end
  end
end
