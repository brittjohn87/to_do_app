require 'rails_helper'

RSpec.describe User, type: :model do

	let(:user) { build(:user) }

	it 'shows first and last name for full_name method' do
		user = User.new(firstname: 'shane', lastname: 'barringer')
	
		expect(user.full_name).to eq('shane barringer')
	end
  
  # it 'is invalid without unique email'

  # it 'has many tasks'

  # I believe when we implemented the "let" comment up top we were able to remove the code below to make it dryer.
  # it 'has a valid factory' do
  # 	expect(build(:user)).to be_valid
  # end

 	it 'has a valid factory' do
    expect(user).to be_valid
  end

  it 'is invalid without firstname' do
    user.firstname = nil
    expect(user).not_to be_valid
  end

  it 'is invalid without lastname' do
    user.lastname = nil
    expect(user).not_to be_valid
  end

  it 'is invalid without email' do
    user.email = nil
    expect(user).not_to be_valid
  end

  it 'has two tasks' do
    expect(user.tasks.length).to eq(2)
end
end
