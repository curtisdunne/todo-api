require 'rails_helper'

RSpec.describe Todo, type: :model do
  # Association test
  # ensure Todo model has a 1:many relationship with the Item ActiveModel
  it { should have_many(:items).dependent(:destroy) }

  # Validations tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
