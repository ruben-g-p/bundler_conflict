require "old_translation/version"
require 'i18n'

module OldTranslation
  class Error < StandardError; end
  # Your code goes here...

  class WeirdBehaviour
    def behave!
      I18n.config.available_locales = :fr
      I18n.l(Time.now, :format => '%b', :locale => :fr)
    end
  end
end
