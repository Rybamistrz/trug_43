describe "wireless & network" do
  context 'when airplane mode turn on' do
    it 'responds with airplane mode on' do
      settings.find_and_click("Airplane mode")
    end
  end
  context 'when airplane mode turn off' do
    it 'responds with airplane mode off' do
      settings.find_and_click("Airplane mode")
    end
  end
end
