require 'rails_helper'

RSpec.feature 'Showing Boat...' do

  before do
    @boat1 = Boat.create(manufacturer: 'Catalina', model: '22', price: 20000, lwl: 6.5, beam: 3.1, displacement: 3200, ballast: 807 )
  end

  scenario 'Successfully Editing boat' do
    visit '/'

    click_link @boat1.model

    expect(page).to have_content(@boat1.manufacturer)
    expect(page).to have_content(@boat1.model)
    expect(page).to have_content(@boat1.price)
    expect(page).to have_content(@boat1.lwl)
    expect(page).to have_content(@boat1.beam)
    expect(page).to have_content(@boat1.displacement)
    expect(page).to have_content(@boat1.ballast)
    expect(page).to have_content(@boat1.ballast_ratio)
    #expect(page.current_path).to eq(boat_path(@boat1))
  end

end