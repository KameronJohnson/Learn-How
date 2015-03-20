require 'rails_helper'

describe "the add lessons process" do
  it "adds a new lesson" do
    section = Section.create({name: "lesson1"})
    visit sections_path(section)
    click_on 'Add A Lesson'
    fill_in 'Name', :with => 'lesson1'
    fill_in 'Content', :with => 'lots of stuff'
    fill_in 'Number', :with => "1"
    click_on 'Create Lesson'
    expect(page). to have_content 'Lessons'
  end
end
