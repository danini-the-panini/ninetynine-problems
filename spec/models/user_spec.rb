require 'spec_helper'

describe User do
  it {should have_many(:problems)}
  it {should respond_to(:name)}
  it {should validate_presence_of(:name)}
end
