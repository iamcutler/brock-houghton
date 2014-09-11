FactoryGirl.define do
  sequence :title_sec do |t|
    "Title #{t}"
  end

  sequence :director_sec do |d|
    "Director #{d}"
  end

  factory :video_1, class: Video do
    title "Direct TV"
    director "John Smith"
    archive 0
    order 1
  end

  factory :video_sec, class: Video do
    title { generate(:title_sec) }
    director { generate(:director_sec) }
    archive 0
    order 1
  end
end