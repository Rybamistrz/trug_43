module SettingsHelper
  def enter_about_screen
    navigate = scroll_to 'About'
    navigate.click
    settings.has_text 'About'
  end

  def enter_software_information
    settings.find_and_click 'Software information'
  end

  def check_text_view(expected_text)
    text_view = driver.find_element(:id, 'android:id/summary').text
    text_view.settings.has_text(expected_text)
  end
end
