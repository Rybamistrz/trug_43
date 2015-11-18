describe 'wireless & network' do
  before(:each) do
    settings.has_text 'Settings'
  end
  context 'when airplane mode turn on' do
    it 'responds with airplane mode on' do
      settings.find_and_click 'Airplane mode'
      settings.has_text 'On'
    end
  end
  context 'when airplane mode turn off' do
    it 'responds with airplane mode off' do
      settings.find_and_click 'Airplane mode'
      settings.has_text 'Off'
    end
  end
end

describe 'phone settings' do
  context 'when pressed about' do
    it 'responds with about screen' do
      enter_about_screen
    end
  end
  describe 'about screen' do
    before(:each) do
      enter_about_screen
    end
  end
  context 'when pressed software information' do
    it 'responds with android 4.4.2 version' do
      enter_software_information
      check_text_view '4.4.2'
    end
    it 'responds with htc sens version 6.0' do
      enter_software_information
      check_text_view '6.0'
    end
  end
end
