module Pages
  module Settings
    class << self
      def find_and_click(resource)
        driver.find_element(:name, resource).click
      end
    end
  end
end

module Kernel
  def settings
    Pages::Settings
  end
end
