require 'rails_helper'

describe "the add sections process" do
  it "adds a new section" do
    section = Section.create({name: "section1"})
    visit sections_path
    click_on 'Add A Section'
    fill_in 'Name', :with => 'section1'
    click_on 'Create Section'
    expect(page). to have_content 'Lessons'
  end
end
