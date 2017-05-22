require 'rails_helper'

  describe Shop do
    it { should validate_presence_of :name }
    it { should have_many :offers}
  end
