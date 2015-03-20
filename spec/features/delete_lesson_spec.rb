require 'rails_helper'

describe "deletes a lesson functionality" do
  it "deletes a lesson" do
    section = Section.create(:name => 'section1')
    lesson = Lesson.create(:name => 'lesson1', :section_id => section.id, :number => 1, :content => 'lots of stuff')
    visit section_lesson_path(section, lesson)
    click_on 'delete'
    expect(page). to have_no_content(lesson)
  end
end
