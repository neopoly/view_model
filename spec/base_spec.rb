require 'spec_helper'

describe ViewModel::Base do
  let(:attributes) { {:display_name => 'Bob'} }
  let(:view_model) { Profile.new(attributes) }

  it 'initializes' do
    assert view_model.is_a?(ViewModel::Base)
  end

  it 'is not persisted' do
    refute view_model.persisted?
  end

  describe 'attributes' do
    it 'reads an attribute' do
      assert_equal 'Bob', view_model.display_name
    end

    it 'provides a set of attributes' do
      expected = { :display_name => 'Bob' }
      assert_equal expected, view_model.attributes
    end
  end

  describe 'validations' do
    describe 'success' do
      it 'validates an attribute' do
        assert view_model.valid?
      end
    end

    describe 'failure' do
      let(:attributes) { { :display_name => '' } }

      it 'validates an attribute' do
        refute view_model.valid?
      end

      it 'provides errors' do
        view_model.valid?

        assert_predicate view_model.errors, :any?
        assert_predicate view_model.errors[:display_name], :any?
      end
    end
  end

  private

  class Profile < ViewModel::Base
    attribute :display_name, String
    validates :display_name, :presence => true
  end
end
