require 'spec_helper'

describe 'index.html', js: true, type: :feature do
  before do
    visit '/'
  end
  it 'displays index.html page' do
    expect(title).to eq('MaggieQ Community Report')
  end
end
