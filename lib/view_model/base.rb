require 'virtus'
require 'active_model'

module ViewModel
  class Base
    include Virtus.model
    include ActiveModel::Validations
    include ActiveModel::Conversion

    extend ActiveModel::Naming

    def persisted?
      false
    end
  end
end
