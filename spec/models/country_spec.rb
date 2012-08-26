require 'spec_helper'

describe Country do
  it { should validate_presence_of :title}
end
