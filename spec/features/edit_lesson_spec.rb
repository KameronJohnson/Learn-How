require 'rails_helper'

describe "edit lessons functionality" do
  it "edits a lesson" do
    section = Section.create(:name => 'section1')
    lesson = Lesson.create(:name => 'lesson1', :section_id => section.id, :number => 1, :content => 'lots of stuff')
    visit section_lesson_path(section, lesson)
    click_on 'edit'
    fill_in 'Name', :with => 'OMG'
    fill_in 'Content', :with => 'lots of stuff'
    fill_in 'Number', :with => '2'
    click_on 'Update Lesson'
    expect(page). to have_content 'Successfully'
  end
end
