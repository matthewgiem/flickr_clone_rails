require 'rails_helper'

describe Image do
  it { should validate_presence_of :title }
  it { should validate_presence_of :user_name }
end
