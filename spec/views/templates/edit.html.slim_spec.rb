require 'rails_helper'

RSpec.describe "templates/edit", :type => :view do
  before(:each) do
    @template = assign(:template, Template.create!(
      :name => "MyString",
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit template form" do
    render

    assert_select "form[action=?][method=?]", template_path(@template), "post" do

      assert_select "input#template_name[name=?]", "template[name]"

      assert_select "input#template_title[name=?]", "template[title]"

      assert_select "textarea#template_body[name=?]", "template[body]"
    end
  end
end
