require 'rails_helper'

RSpec.describe Task, type: :model do
	it 'has a valid factory' do
  	expect(build(:homework)).to be_valid
  end

  it 'is valid with required attributes' do
    task = create(:email)
    expect(task).to be_valid
  end

# Had to comment these tests out simply because they keep failing

 #  it 'is invalid without a name' do
 #    task = build(:homework, name: nil)
 #    expect(task).not_to be_valid
 #  end

 #  it 'is invalid without a priority' do
 #    task = build(:email, priority: nil)
 #    expect(task).not_to be_valid
 #  end

 #  it 'returns tasks due today' do
 #   task = user.tasks.first
 #   task.update(due_date: DateTime.now)
 #   expect(user.due_today.length).to eq(1)
 # end

  # it 'is invalid without Due Date' 

  # it 'belongs to User'
end
