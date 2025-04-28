class WeatherController < ApplicationController
  include HTTParty

  def search
    city = params[:city]
    weather_data = get_weather(city)
    forecast_data = get_forecast(city)

    if weather_data && forecast_data
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
      @last_updated = Time.now.strftime("%H:%M:%S")
      @weather_icon = weather_data['weather'].first['icon']

      # Processa previsão dos próximos dias
      @forecast = process_forecast(forecast_data)
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
    response.success? ? response.parsed_response : nil
  end

  def get_forecast(city)
    api_key = '099ab0a9bad88a8b1c6631e49cfabbb2'
    city_encoded = CGI.escape(city)
    url = "https://api.openweathermap.org/data/2.5/forecast?q=#{city_encoded}&appid=#{api_key}&units=metric&lang=pt_br"
    response = self.class.get(url)
    response.success? ? response.parsed_response : nil
  end

  def process_forecast(data)
    forecast_per_day = {}

    data['list'].each do |item|
      date = Date.parse(item['dt_txt'])
      next if date == Date.today  # Ignora hoje

      forecast_per_day[date] ||= {
        temp_min: item['main']['temp_min'],
        temp_max: item['main']['temp_max'],
        description: item['weather'].first['description'],
        icon: item['weather'].first['icon']
      }

      # Atualiza mínima e máxima do dia
      forecast_per_day[date][:temp_min] = [forecast_per_day[date][:temp_min], item['main']['temp_min']].min
      forecast_per_day[date][:temp_max] = [forecast_per_day[date][:temp_max], item['main']['temp_max']].max
    end

    forecast_per_day.first(5).to_h  # Pega no máximo 5 dias
  end
end
