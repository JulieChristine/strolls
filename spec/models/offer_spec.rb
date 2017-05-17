require 'rails_helper'

describe Offer do
  it { should validate_presence_of :name }
end
