require 'rails_helper'

  describe "the add a shop process" do
    it "adds a new shop" do
      visit shops_path
      click_link 'New Shop'
      fill_in 'Name', :with => 'Home stuff'
      fill_in 'Address', :with => 'an address'
      fill_in 'Area', :with => 'some area'
      fill_in 'Description', :with => 'stuff'
      fill_in 'Picture', :with => 'picture url'
      fill_in 'Opening hours', :with => 'Range'
      fill_in 'Location', :with => 'coordinates'
      fill_in 'Website', :with => 'the website'
      click_on 'Create Shop'
      expect(page).to have_content 'Shops'
    end

    it "gives error when no name is entered" do
      visit new_shop_path
      click_on 'Create Shop'
      expect(page).to have_content 'errors'
    end
  end
