require 'test_helper'

class Web::DevelopersControllerTest < ActionController::TestCase
  setup do
    developer = create(:developer)
    sign_in developer
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should post create' do
    post :create, params: { developer: attributes_for(:developer) }
    assert_response :redirect
  end
end
