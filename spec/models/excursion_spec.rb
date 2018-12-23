require 'rails_helper'

RSpec.describe Excursion, type: :model do
  subject { described_class.new }

  it 'is not valid without name!' do
    expect(subject).to_not be_valid
  end

  it 'is not valid without short description!' do
    expect(subject).to_not be_valid
  end

  it 'is not valid without start date!' do
    expect(subject).to_not be_valid
  end

  it 'is not valid with start date less than today!' do
    expect(subject).to_not be_valid
  end

  it 'is not valid without guide id!' do
    expect(subject).to_not be_valid
  end

  it 'is not valid with not unique name!' do
    expect(subject).to_not be_valid
  end

end