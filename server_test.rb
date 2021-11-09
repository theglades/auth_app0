require "minitest/autorun"
require "minitest"
require "capybara"
require "capybara_minitest_spec"
require "nokogiri"
require 'test/unit'
require 'rack/test'
require_relative "server"

class ServerTest < Test::Unit::TestCase
  include Minitest
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_home_page_url_received
    get '/'
    assert last_response.ok?
  end

  def test_home_page_url_correct_response
    get '/'
    assert_equal "Hello, QQQQQ0!", last_response.body
  end

  def test_participant_index_url_received
    get '/participant/index'
    assert last_response.ok?
  end

  def test_participant_index_url_correct_response
    get '/participant/index'
    assert_equal "List Of Participants", last_response.body
  end

  def test_participant_create_url_received
    get '/participant/create'
    assert last_response.ok?
  end

  def test_participant_create_url_correct_response
    get '/participant/create'
    assert_equal "Create Participant", last_response.body
  end

  def test_participant_store_url_received
    post '/participant/store'
    assert last_response.ok?
  end

  def test_participant_store_url_correct_response
    post '/participant/store'
    assert_equal "Store Created Participant", last_response.body
  end

  def test_participant_show_url_received
    get '/participant/show/1'
    assert last_response.ok?
  end

  def test_participant_show_url_correct_response
    get '/participant/show/1'
    assert_equal "Show Participant", last_response.body
  end

  def test_participant_edit_url_received
    get '/participant/edit/1'
    assert last_response.ok?
  end

  def test_participant_edit_url_correct_response
    get '/participant/edit/1'
    assert_equal "Edit Participant", last_response.body
  end

  def test_participant_update_url_received
    post '/participant/update/1'
    assert last_response.ok?
  end

  def test_participant_update_url_correct_response
    post '/participant/update/1'
    assert_equal "Update Edited Participant", last_response.body
  end

  def test_participant_delete_url_received
    get '/participant/delete/1'
    assert last_response.ok?
  end

  def test_participant_delete_url_correct_response
    get '/participant/delete/1'
    assert_equal "Delete Participant", last_response.body
  end

  def test_participant_destroy_url_received
    get '/participant/destroy/1'
    assert last_response.ok?
  end

  def test_participant_destroy_url_correct_response
    get '/participant/destroy/1'
    assert_equal "Destroy Participant", last_response.body
  end

  def test_participant_preview_soft_deletion_url_received
    get '/participant/preview-soft-deletion/1'
    assert last_response.ok?
  end

  def test_participant_preview_soft_deletion_url_correct_response
    get '/participant/preview-soft-deletion/1'
    assert_equal "Preview Soft-Deletion Of Participant", last_response.body
  end

  def test_participant_confirm_soft_deletion_url_received
    post '/participant/confirm-soft-deletion/1'
    assert last_response.ok?
  end

  def test_participant_confirm_soft_deletion_url_correct_response
    post '/participant/confirm-soft-deletion/1'
    assert_equal "Confirm Soft-Deletion Of Participant", last_response.body
  end

  # Participant-Account-Confirmation Test Routes
  def test_participant_account_confirmation_index_url_received
    get '/participant/all/account-confirmation/index'
    assert last_response.ok?
  end

  def test_all_participants_account_confirmation_index_url_correct_response
    get '/participant/all/account-confirmation/index'
    assert_equal "List Of Account-Confirmations For All Participants", last_response.body
  end

  def test_all_participants_account_confirmation_index_url_received
    get '/participant/all/account-confirmation/index'
    assert last_response.ok?
  end

  def test_specified_participant_account_confirmation_index_url_received
    get '/participant/1/account-confirmation/index'
    assert last_response.ok?
  end

  def test_specified_participant_account_confirmation_index_url_correct_response
    get '/participant/1/account-confirmation/index'
    assert_equal "List Of Account-Confirmations For Specified Participant", last_response.body
  end

  def test_specified_participant_account_confirmation_create_url_received
    get '/participant/1/account-confirmation/create'
    assert last_response.ok?
  end

  def test_specified_participant_account_confirmation_create_url_correct_response
    get '/participant/1/account-confirmation/create'
    assert_equal "Create Account-Confirmation For Specified Participant", last_response.body
  end

  def test_specified_participant_account_confirmation_store_url_received
    post '/participant/1/account-confirmation/store'
    assert last_response.ok?
  end

  def test_specified_participant_account_confirmation_store_url_correct_response
    post '/participant/1/account-confirmation/store'
    assert_equal "Store Account-Confirmation For Specified Participant", last_response.body
  end

  def test_specified_participant_account_confirmation_edit_url_received
    get '/participant/1/account-confirmation/edit/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_confirmation_edit_url_correct_response
    get '/participant/1/account-confirmation/edit/1'
    assert_equal "Edit Account-Confirmation For Specified Participant", last_response.body
  end

  def test_specified_participant_account_confirmation_update_url_received
    post '/participant/1/account-confirmation/update/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_confirmation_update_url_correct_response
    post '/participant/1/account-confirmation/update/1'
    assert_equal "Update Edited Account-Confirmation For Specified Participant", last_response.body
  end

  def test_specified_participant_account_confirmation_delete_url_received
    post '/participant/1/account-confirmation/delete/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_confirmation_delete_url_correct_response
    post '/participant/1/account-confirmation/delete/1'
    assert_equal "Delete Account-Confirmation For Specified Participant", last_response.body
  end

  def test_specified_participant_account_confirmation_destroy_url_received
    post '/participant/1/account-confirmation/destroy/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_confirmation_destroy_url_correct_response
    post '/participant/1/account-confirmation/destroy/1'
    assert_equal "Destroy Account-Confirmation For Specified Participant", last_response.body
  end

  def test_specified_participant_account_confirmation_preview_soft_deletion_url_received
    get '/participant/1/account-confirmation/preview-soft-deletion/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_confirmation_preview_soft_deletion_url_correct_response
    get '/participant/1/account-confirmation/preview-soft-deletion/1'
    assert_equal "Preview Soft-Deletion Of Account-Confirmation For Specified Participant", last_response.body
  end

  def test_specified_participant_account_confirmation_confirm_soft_deletion_url_received
    post '/participant/1/account-confirmation/confirm-soft-deletion/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_confirmation_confirm_soft_deletion_url_correct_response
    post '/participant/1/account-confirmation/confirm-soft-deletion/1'
    assert_equal "Confirm Soft-Deletion Of Account-Confirmation For Specified Participant", last_response.body
  end

  # Participant-Account-Password-Reset Routes
  def test_all_participant_account_password_reset_index_url_received
    get '/participant/all/account-password-reset/index'
    assert last_response.ok?
  end

  def test_all_participants_account_password_reset_index_url_correct_response
    get '/participant/all/account-password-reset/index'
    assert_equal "List Of Account-Password-Resets For All Participants", last_response.body
  end

  def test_specified_participant_account_password_reset_index_url_received
    get '/participant/1/account-password-reset/index'
    assert last_response.ok?
  end

  def test_specified_participant_account_password_reset_index_url_correct_response
    get '/participant/1/account-password-reset/index'
    assert_equal "List Of Account-Password-Resets For Specified Participant", last_response.body
  end

  def test_specified_participant_account_password_reset_create_url_received
    get '/participant/1/account-password-reset/create'
    assert last_response.ok?
  end

  def test_specified_participant_account_password_reset_create_url_correct_response
    get '/participant/1/account-password-reset/create'
    assert_equal "Create Account-Password-Reset For Specified Participant", last_response.body
  end

  def test_specified_participant_account_password_reset_store_url_received
    post '/participant/1/account-password-reset/store'
    assert last_response.ok?
  end

  def test_specified_participant_account_password_reset_store_url_correct_response
    post '/participant/1/account-password-reset/store'
    assert_equal "Store Account-Password-Reset For Specified Participant", last_response.body
  end

  def test_specified_participant_account_password_reset_show_url_received
    get '/participant/1/account-password-reset/show/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_password_reset_show_url_correct_response
    get '/participant/1/account-password-reset/show/1'
    assert_equal "Show Account-Password-Reset For Specified Participant", last_response.body
  end

  def test_specified_participant_account_password_reset_edit_url_received
    get '/participant/1/account-password-reset/edit/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_password_reset_edit_url_correct_response
    get '/participant/1/account-password-reset/edit/1'
    assert_equal "Edit Account-Password-Reset For Specified Participant", last_response.body
  end

  def test_specified_participant_account_password_reset_update_url_received
    post '/participant/1/account-password-reset/update/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_password_reset_update_url_correct_response
    post '/participant/1/account-password-reset/update/1'
    assert_equal "Update Edited Account-Password-Reset For Specified Participant", last_response.body
  end

  def test_specified_participant_account_password_reset_delete_url_received
    post '/participant/1/account-password-reset/update/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_password_reset_delete_url_correct_response
    post '/participant/1/account-password-reset/delete/1'
    assert_equal "Delete Account-Password-Reset For Specified Participant", last_response.body
  end

  def test_specified_participant_account_password_reset_destroy_url_received
    post '/participant/1/account-password-reset/update/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_password_reset_destroy_url_correct_response
    post '/participant/1/account-password-reset/destroy/1'
    assert_equal "Destroy Account-Password-Reset For Specified Participant", last_response.body
  end

  def test_specified_participant_account_password_reset_preview_soft_deletion_url_received
    get '/participant/1/account-password-reset/preview-soft-deletion/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_password_reset_preview_soft_deletion_url_correct_response
    get '/participant/1/account-password-reset/preview-soft-deletion/1'
    assert_equal "Preview Soft-Deletion Of Account-Password-Reset For Specified Participant", last_response.body
  end

  def test_specified_participant_account_password_reset_confirm_soft_deletion_url_received
    post '/participant/1/account-password-reset/confirm-soft-deletion/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_password_reset_confirm_soft_deletion_url_correct_response
    post '/participant/1/account-password-reset/confirm-soft-deletion/1'
    assert_equal "Confirm Soft-Deletion Of Account-Password-Reset For Specified Participant", last_response.body
  end

  #Role Routes
  def test_role_index_url_received
    get '/role/index'
    assert last_response.ok?
  end

  def test_role_index_url_correct_response
    get '/role/index'
    assert_equal "List Of Roles", last_response.body
  end

  def test_role_create_url_received
    get '/role/create'
    assert last_response.ok?
  end

  def test_role_create_url_correct_response
    get '/role/create'
    assert_equal "Create Role", last_response.body
  end

  def test_role_store_url_received
    post '/role/store'
    assert last_response.ok?
  end

  def test_role_store_url_correct_response
    post '/role/store'
    assert_equal "Store Created Role", last_response.body
  end

  def test_role_show_url_received
    get '/role/show/1'
    assert last_response.ok?
  end

  def test_role_show_url_correct_response
    get '/role/show/1'
    assert_equal "Show Role", last_response.body
  end

  def test_role_edit_url_received
    get '/role/edit/1'
    assert last_response.ok?
  end

  def test_role_edit_url_correct_response
    get '/role/edit/1'
    assert_equal "Edit Role", last_response.body
  end

  def test_role_update_url_received
    post '/role/update/1'
    assert last_response.ok?
  end

  def test_role_update_url_correct_response
    post '/role/update/1'
    assert_equal "Update Edited Role", last_response.body
  end

  def test_role_delete_url_received
    get '/role/delete/1'
    assert last_response.ok?
  end

  def test_role_delete_url_correct_response
    get '/role/delete/1'
    assert_equal "Delete Role", last_response.body
  end

  def test_role_destroy_url_received
    get '/role/destroy/1'
    assert last_response.ok?
  end

  def test_role_destroy_url_correct_response
    get '/role/destroy/1'
    assert_equal "Destroy Role", last_response.body
  end

  def test_role_preview_soft_deletion_url_received
    get '/role/preview-soft-deletion/1'
    assert last_response.ok?
  end

  def test_role_preview_soft_deletion_url_correct_response
    get '/role/preview-soft-deletion/1'
    assert_equal "Preview Soft-Deletion Of Role", last_response.body
  end

  def test_role_confirm_soft_deletion_url_received
    post '/role/confirm-soft-deletion/1'
    assert last_response.ok?
  end

  def test_role_confirm_soft_deletion_url_correct_response
    post '/role/confirm-soft-deletion/1'
    assert_equal "Confirm Soft-Deletion Of Role", last_response.body
  end

  #Participant-Role Routes
  def test_all_participant_roles_for_all_participants_index_url_received
    get '/participant/all/role/all/participant-role/index'
    assert last_response.ok?
  end

  def test_all_participant_roles_for_all_participants_index_url_correct_response
    get '/participant/all/role/all/participant-role/index'
    assert_equal "List Of All Roles For All Participants", last_response.body
  end

  def test_all_participant_roles_for_specified_participant_index_url_received
    get '/participant/all/role/all/participant-role/index'
    assert last_response.ok?
  end

  def test_all_participant_roles_for_specified_participant_index_url_correct_response
    get '/participant/all/role/all/participant-role/index'
    assert_equal "List Of All Roles For All Participants", last_response.body
  end

  def test_specified_participant_role_create_url_received
    get '/participant/1/role/unspecified/participant-role/create'
    assert last_response.ok?
  end

  def test_specified_participant_role_create_url_correct_response
    get '/participant/1/role/unspecified/participant-role/create'
    assert_equal "Create Role For Specified Participant", last_response.body
  end

  def test_specified_participant_role_store_url_received
    post '/participant/1/role/unspecified/participant-role/store'
    assert last_response.ok?
  end

  def test_specified_participant_role_store_url_correct_response
    post '/participant/1/role/unspecified/participant-role/store'
    assert_equal "Store Created Role For Specified Participant", last_response.body
  end

  def test_specified_participant_role_edit_url_received
    get '/participant/1/role/unspecified/participant-role/edit/1'
    assert last_response.ok?
  end

  def test_specified_participant_role_edit_url_correct_response
    get '/participant/1/role/1/participant-role/edit/1'
    assert_equal "Edit Specified Role For Specified Participant", last_response.body
  end

  def test_specified_participant_role_update_url_received
    post '/participant/1/role/1/participant-role/update/1'
    assert last_response.ok?
  end

  def test_specified_participant_role_update_url_correct_response
    post '/participant/1/role/1/participant-role/update/1'
    assert_equal "Update Edited Specified Role For Specified Participant", last_response.body
  end

  def test_specified_participant_role_delete_url_received
    post '/participant/1/role/1/participant-role/delete/1'
    assert last_response.ok?
  end

  def test_specified_participant_role_delete_url_correct_response
    post '/participant/1/role/1/participant-role/delete/1'
    assert_equal "Delete Specified Role For Specified Participant", last_response.body
  end

  def test_specified_participant_role_destroy_url_received
    post '/participant/1/role/1/participant-role/destroy/1'
    assert last_response.ok?
  end

  def test_specified_participant_role_destroy_url_correct_response
    post '/participant/1/role/1/participant-role/destroy/1'
    assert_equal "Destroy Specified Role For Specified Participant", last_response.body
  end

  def test_specified_participant_role_preview_soft_deletion_url_received
    get '/participant/1/role/1/participant-role/preview-soft-deletion/1'
    assert last_response.ok?
  end

  def test_specified_participant_role_preview_soft_deletion_url_correct_response
    get '/participant/1/role/1/participant-role/preview-soft-deletion/1'
    assert_equal "Preview Soft-Deletion Of Specified Role For Specified Participant", last_response.body
  end

  def test_specified_participant_role_confirm_soft_deletion_url_received
    post '/participant/1/role/1/participant-role/confirm-soft-deletion/1'
    assert last_response.ok?
  end

  def test_specified_participant_role_confirm_soft_deletion_url_correct_response
    post '/participant/1/role/1/participant-role/confirm-soft-deletion/1'
    assert_equal "Confirm Soft-Deletion Of Specified Role For Specified Participant", last_response.body
  end

  # Participant-Account-Authentication Test Routes
  def test_all_participant_account_authentication_index_url_received
    get '/participant/all/account-authentication/index'
    assert last_response.ok?
  end

  def test_all_participants_account_authentication_index_url_correct_response
    get '/participant/all/account-authentication/index'
    assert_equal "List Of Account-Authentications For All Participants", last_response.body
  end

  def test_specified_participant_account_authentication_index_url_received
    get '/participant/1/account-authentication/index'
    assert last_response.ok?
  end

  def test_specified_participant_account_authentication_index_url_correct_response
    get '/participant/1/account-authentication/index'
    assert_equal "List Of Account-Authentications For Specified Participant", last_response.body
  end

  def test_specified_participant_account_authentication_create_url_received
    get '/participant/1/account-authentication/create'
    assert last_response.ok?
  end

  def test_specified_participant_account_authentication_create_url_correct_response
    get '/participant/1/account-authentication/create'
    assert_equal "Create Account-Authentication For Specified Participant", last_response.body
  end

  def test_specified_participant_account_authentication_store_url_received
    post '/participant/1/account-authentication/store'
    assert last_response.ok?
  end

  def test_specified_participant_account_authentication_index_url_received_store_url_correct_response
    post '/participant/1/account-authentication/store'
    assert_equal "Store Created Account-Authentication For Specified Participant", last_response.body
  end

  def test_specified_participant_account_authentication_edit_url_received
    get '/participant/1/account-authentication/edit/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_authentication_edit_url_correct_response
    get '/participant/1/account-authentication/edit/1'
    assert_equal "Edit Account-Authentication For Specified Participant", last_response.body
  end

  def test_specified_participant_account_authentication_update_url_received
    post '/participant/1/account-confirmation/update/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_authentication_update_url_correct_response
    post '/participant/1/account-authentication/update/1'
    assert_equal "Update Edited Account-Authentication For Specified Participant", last_response.body
  end

  def test_specified_participant_account_authentication_delete_url_received
    post '/participant/1/account-authentication/delete/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_authentication_delete_url_correct_response
    post '/participant/1/account-authentication/delete/1'
    assert_equal "Delete Account-Authentication For Specified Participant", last_response.body
  end

  def test_specified_participant_account_authentication_destroy_url_received
    post '/participant/1/account-confirmation/destroy/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_authentication_destroy_url_correct_response
    post '/participant/1/account-authentication/destroy/1'
    assert_equal "Destroy Account-Authentication For Specified Participant", last_response.body
  end

  def test_specified_participant_account_authentication_preview_soft_deletion_url_received
    get '/participant/1/account-authentication/preview-soft-deletion/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_authentication_preview_soft_deletion_url_correct_response
    get '/participant/1/account-authentication/preview-soft-deletion/1'
    assert_equal "Preview Soft-Deletion Of Account-Authentication For Specified Participant", last_response.body
  end

  def test_specified_participant_account_authentication_confirm_soft_deletion_url_received
    post '/participant/1/account-confirmation/confirm-soft-deletion/1'
    assert last_response.ok?
  end

  def test_specified_participant_account_authentication_confirm_soft_deletion_url_correct_response
    post '/participant/1/account-authentication/confirm-soft-deletion/1'
    assert_equal "Confirm Soft-Deletion Of Account-Authentication For Specified Participant", last_response.body
  end
end
