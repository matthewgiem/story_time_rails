require 'rails_helper'

describe Sentence do
  it { should validate_presence_of :sentence }
  it { should validate_presence_of :user }
end
