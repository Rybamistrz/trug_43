module Pages
  module Settings
    class << self
      def find_and_click(element)
        driver.find_element(:name, element).click
      end

      def has_text(text)
        wait { text_exact text }
      end
    end
  end
end

module Kernel
  def settings
    Pages::Settings
  end
end
