require 'rails_helper'

RSpec.describe Participant, type: :model do
  subject { described_class.new }

  it 'is not valid without full name!' do
    expect(subject).to_not be_valid
  end

  it 'is not valid without nickname!' do
    expect(subject).to_not be_valid
  end

  it 'is not valid with not unique nickname!' do
    expect(subject).to_not be_valid
  end

end