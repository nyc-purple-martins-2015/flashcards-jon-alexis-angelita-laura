require 'spec_helper'

describe 'User' do
  it 'should have a password' do
    steffi = User.create!({username: "steffi", password: "stef"})
    expect(steffi.password).to eq("stef")
    expect(steffi.password.to_s).to_not eq('stef')
  end
end
