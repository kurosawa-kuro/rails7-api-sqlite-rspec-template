# spec/models/sample_spec.rb

require 'rails_helper'

RSpec.describe Sample, type: :model do
  it "is valid with a title" do
    sample = Sample.new(title: "Valid Title")
    expect(sample).to be_valid
  end

  it "is invalid without a title" do
    sample = Sample.new(title: nil)
    expect(sample).not_to be_valid
  end
end