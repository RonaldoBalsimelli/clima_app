require "test_helper"

class WeathersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weather = weathers(:one)
  end

  test "should get index" do
    get weathers_url
    assert_response :success
  end

  test "should get new" do
    get new_weather_url
    assert_response :success
  end

  test "should create weather" do
    assert_difference("Weather.count") do
      post weathers_url, params: { weather: { city: @weather.city, description: @weather.description, temperature: @weather.temperature } }
    end

    assert_redirected_to weather_url(Weather.last)
  end

  test "should show weather" do
    get weather_url(@weather)
    assert_response :success
  end

  test "should get edit" do
    get edit_weather_url(@weather)
    assert_response :success
  end

  test "should update weather" do
    patch weather_url(@weather), params: { weather: { city: @weather.city, description: @weather.description, temperature: @weather.temperature } }
    assert_redirected_to weather_url(@weather)
  end

  test "should destroy weather" do
    assert_difference("Weather.count", -1) do
      delete weather_url(@weather)
    end

    assert_redirected_to weathers_url
  end
end
