require 'spec_helper'

describe Brand do
  it { should validate_presence_of :title }
  it { should have_and_belong_to_many :campaigns }
end
