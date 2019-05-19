require 'test_helper'

class HomeFlowTest < ActionDispatch::IntegrationTest
  test 'home page calculator' do
    Capybara.current_driver = Capybara.javascript_driver

    visit root_path

    assert page.has_current_path?(root_path)
    assert page.has_content?('Calculator')

    within('form') do
      fill_in 'Calculator', with: '5*3+1+6/2+9*100'
      click_button 'Calculate'
    end

    assert page.has_content?('5*3+1+6/2+9*100')
    assert page.has_content?('919')

    within('form') do
      fill_in 'Calculator', with: '5*3+1+6/85+9*100'
      click_button 'Calculate'
    end

    assert page.has_content?('5*3+1+6/85+9*100')
    assert page.has_content?('916.07')
  end
end
