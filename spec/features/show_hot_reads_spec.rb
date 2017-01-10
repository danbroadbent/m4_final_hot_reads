require "rails_helper"

RSpec.describe "View hot reads" do
  scenario "visit root" do
    visit '/'

    expect(page).to have_text('Hot Reads')
  end
end
