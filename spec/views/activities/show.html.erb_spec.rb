require 'spec_helper'

describe 'activities/show.html.erb' do
  it 'displays activity details correctly' do
    assign(:activity, Activity.create(name: 'Oracle', content: good))

    render


    rendered.should contain('Oracle')
    rendered.should contain('good')
  end
end