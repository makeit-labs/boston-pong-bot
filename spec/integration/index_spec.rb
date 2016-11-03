require 'spec_helper'

describe 'index.html', js: true, type: :feature do
  before do
    visit '/'
  end
  it 'displays index.html page' do
    expect(title).to eq('PlayPlay.io - Ping Pong Bot, Chess Bot, Pool Bot and Tic Tac Toe Bot for Slack')
  end
end
