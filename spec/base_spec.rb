require 'spec_helper'

describe ViewModel::Base do
  let(:business_model) { BusinessModel = Class.new()}

  it 'initializes' do
    assert ViewModel::Base.new(business_model.new)
  end
end
