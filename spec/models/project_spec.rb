require 'rails_helper'

describe Project do
  it { should validate_presence_of :total_needed }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should have_and_belong_to_many :users }
end
