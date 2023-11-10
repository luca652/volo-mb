require 'rails_helper'

RSpec.describe Language, type: :model do
  let(:language) do
    Language.new(name: "Italian")
  end

  it 'has a name' do
    expect(language.name).to eq("Italian")
  end
end
