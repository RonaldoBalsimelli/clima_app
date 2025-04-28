class WeatherController < ApplicationController
  include HTTParty

  def search
    city = params[:city]
    weather_data = get_weather(city)

    if weather_data
      @city_name = weather_data['name']
      @temperature = weather_data['main']['temp']
      @feels_like = weather_data['main']['feels_like']
      @temp_min = weather_data['main']['temp_min']
      @temp_max = weather_data['main']['temp_max']
      @humidity = weather_data['main']['humidity']
      @pressure = weather_data['main']['pressure']
      @description = weather_data['weather'].first['description']
      @wind_speed = weather_data['wind']['speed']
      @wind_deg = weather_data['wind']['deg']
      @clouds = weather_data['clouds']['all']
      @visibility = weather_data['visibility']
      @country = weather_data['sys']['country']
      @sunrise = Time.at(weather_data['sys']['sunrise']).strftime("%H:%M")
      @sunset = Time.at(weather_data['sys']['sunset']).strftime("%H:%M")

      # Adicionando o ícone do clima
      @weather_icon = weather_data['weather'].first['icon']
    else
      flash[:alert] = "Cidade não encontrada!"
    end

    render :index
  end

  private

  def get_weather(city)
    api_key = '099ab0a9bad88a8b1c6631e49cfabbb2'
    city_encoded = CGI.escape(city)
    url = "https://api.openweathermap.org/data/2.5/weather?q=#{city_encoded}&appid=#{api_key}&units=metric&lang=pt_br"
    response = self.class.get(url)

    if response.success?
      return response.parsed_response
    else
      return nil
    end
  end
end
