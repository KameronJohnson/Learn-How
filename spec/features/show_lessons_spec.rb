require 'rails_helper'

describe "show lessons functionality" do
  it "shows a lesson" do
    section = Section.create({name: "section1"})
    lesson = Lesson.create(:name => 'lesson1', :section_id => 1, :number => 1, :content => 'lots of stuff')
    section.lessons.push(lesson)
    visit sections_path
    click_on lesson.name
    expect(page). to have_content lesson.content
  end
end
