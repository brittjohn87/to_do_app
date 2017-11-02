FactoryBot.define do
  factory :homework, class: Task do
    association :user
    name "complete homework"
    due_date { DateTime.now + 2.days }
    priority 1
  end

  factory :email, class: Task do
    association :user
    name "reply to Zack's email"
    due_date { DateTime.now }
    priority 2
  end

# Slide did not specify what to do with this piece of code.
  # factory :invalid_task, class: Task do
  # 	name nil    
  #   priority nil
  # end
end
