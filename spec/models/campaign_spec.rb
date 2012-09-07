require 'spec_helper'

describe Campaign do
  it { should have_and_belong_to_many :brands }
  it { should validate_presence_of :title }
end
