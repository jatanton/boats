require 'rails_helper'

RSpec.feature 'Creating Boats ...' do

  scenario 'Successfully create a new boat.' do
    visit '/'
    click_link 'Create Boat'

    fill_in 'Manufacturer', with: 'Catalina'
    fill_in 'Model', with: '22'
    fill_in 'Price', with: 20000
    #fill_in 'Currency', with: 'USD'
    fill_in 'LWL', with: 8.99
    fill_in 'Beam', with: 3.35
    fill_in 'Light Displacement', with: 3515
    fill_in 'Ballast', with: 1550
    click_button 'Create Boat'

    expect(page).to have_content('Boat has been created.')
    expect(page.current_path).to eq(boats_path)
  end

end