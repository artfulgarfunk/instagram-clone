FactoryGirl.define do
  factory :post do
    caption "factorygal"
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/chai_tea.jpg', 'image/jpg')
  end
end
