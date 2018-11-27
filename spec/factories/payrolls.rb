FactoryBot.define do
  factory :payroll do
    registration { 1 }
    name { "MyString" }
    jobrole { nil }
    workspace { nil }
    admission_date { "2018-11-26" }
    admission_type { "MyString" }
    status { "MyString" }
  end
end
