require "test_helper"

class ManufacturingCountriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manufacturing_countries_index_url
    assert_response :success
  end

  test "should get show" do
    get manufacturing_countries_show_url
    assert_response :success
  end
end
