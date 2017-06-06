require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :organization => nil,
      :description => "MyText"
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_organization_id[name=?]", "job[organization_id]"

      assert_select "textarea#job_description[name=?]", "job[description]"
    end
  end
end