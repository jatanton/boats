require 'rails_helper'

RSpec.feature 'Listing Boats...' do

  before do
    @boat1 = Boat.create!(manufacturer: 'Catalina', model: '22', price:'20000')
    @boat2 = Boat.create!(manufacturer: 'Beneteau', model: '41.1', price: '200000')
  end

  scenario 'Successfully listing boats' do
    visit '/'

    expect(page).to have_content(@boat1.manufacturer)
    expect(page).to have_content(@boat2.manufacturer)
    expect(page).to have_content(@boat1.price)
    expect(page).to have_content(@boat2.price)


  end
end