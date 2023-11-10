require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    User.new(email: "luca@luca.me", password: "123456")
  end

  it 'has an email' do
    expect(user.email).to eq("luca@luca.me")
  end
end
