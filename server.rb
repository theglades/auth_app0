require 'sinatra'

get '/' do
  "Hello, Auth App!"
end

# Participant Routes
get '/participant/index' do
  "List Of Participants"
end

get '/participant/create' do
  "Create Participant"
end

post '/participant/store' do
  "Store Created Participant"
end

get '/participant/show/:id' do
  "Show Participant"
end

get '/participant/edit/:id' do
  "Edit Participant"
end

post '/participant/update/:id' do
  "Update Edited Participant"
end

get '/participant/delete/:id' do
  "Delete Participant"
end

get '/participant/destroy/:id' do
  "Destroy Participant"
end

get '/participant/preview-soft-deletion/:id' do
  "Preview Soft-Deletion Of Participant"
end

post '/participant/confirm-soft-deletion/:id' do
  "Confirm Soft-Deletion Of Participant"
end

# Participant-Account-Confirmation Routes
get '/participant/all/account-confirmation/index' do
  "List Of Account-Confirmations For All Participants"
end

get '/participant/:participant_id/account-confirmation/index' do
  "List Of Account-Confirmations For Specified Participant"
end

get '/participant/:participant_id/account-confirmation/create' do
  "Create Account-Confirmation For Specified Participant"
end

post '/participant/:participant_id/account-confirmation/store' do
  "Store Account-Confirmation For Specified Participant"
end

get '/participant/:participant_id/account-confirmation/show/:id' do
  "Show Account-Confirmation For Specified Participant"
end

get '/participant/:participant_id/account-confirmation/edit/:id' do
  "Edit Account-Confirmation For Specified Participant"
end

post '/participant/:participant_id/account-confirmation/update/:id' do
  "Update Edited Account-Confirmation For Specified Participant"
end

post '/participant/:participant_id/account-confirmation/delete/:id' do
  "Delete Account-Confirmation For Specified Participant"
end

post '/participant/:participant_id/account-confirmation/destroy/:id' do
  "Destroy Account-Confirmation For Specified Participant"
end

get '/participant/:participant_id/account-confirmation/preview-soft-deletion/:id' do
  "Preview Soft-Deletion Of Account-Confirmation For Specified Participant"
end

post '/participant/:participant_id/account-confirmation/confirm-soft-deletion/:id' do
  "Confirm Soft-Deletion Of Account-Confirmation For Specified Participant"
end

# Participant-Account-Password-Reset Routes
get '/participant/all/account-password-reset/index' do
  "List Of Account-Password-Resets For All Participants"
end

get '/participant/:participant_id/account-password-reset/index' do
  "List Of Account-Password-Resets For Specified Participant"
end

get '/participant/:participant_id/account-password-reset/create' do
  "Create Account-Password-Reset For Specified Participant"
end

post '/participant/:participant_id/account-password-reset/store' do
  "Store Account-Password-Reset For Specified Participant"
end

get '/participant/:participant_id/account-password-reset/show/:id' do
  "Show Account-Password-Reset For Specified Participant"
end

get '/participant/:participant_id/account-password-reset/edit/:id' do
  "Edit Account-Password-Reset For Specified Participant"
end

post '/participant/:participant_id/account-password-reset/update/:id' do
  "Update Edited Account-Password-Reset For Specified Participant"
end

post '/participant/:participant_id/account-password-reset/delete/:id' do
  "Delete Account-Password-Reset For Specified Participant"
end

post '/participant/:participant_id/account-password-reset/destroy/:id' do
  "Destroy Account-Password-Reset For Specified Participant"
end

get '/participant/:participant_id/account-password-reset/preview-soft-deletion/:id' do
  "Preview Soft-Deletion Of Account-Password-Reset For Specified Participant"
end

post '/participant/:participant_id/account-password-reset/confirm-soft-deletion/:id' do
  "Confirm Soft-Deletion Of Account-Password-Reset For Specified Participant"
end

# Role Routes
get '/role/index' do
  "List Of Roles"
end

get '/role/create' do
  "Create Role"
end

post '/role/store' do
  "Store Created Role"
end

get '/role/show/:id' do
  "Show Role"
end

get '/role/edit/:id' do
  "Edit Role"
end

post '/role/update/:id' do
  "Update Edited Role"
end

get '/role/delete/:id' do
  "Delete Role"
end

get '/role/destroy/:id' do
  "Destroy Role"
end

get '/role/preview-soft-deletion/:id' do
  "Preview Soft-Deletion Of Role"
end

post '/role/confirm-soft-deletion/:id' do
  "Confirm Soft-Deletion Of Role"
end

# Participant-Role Routes
get '/participant/all/role/all/participant-role/index' do
  "List Of All Roles For All Participants"
end

get '/participant/:participant_id/role/all/participant-role/index' do
  "List Of Roles For Selected Participant"
end

get '/participant/:participant_id/role/unspecified/participant-role/create' do
  "Create Role For Specified Participant"
end

post '/participant/:participant_id/role/unspecified/participant-role/store' do
  "Store Created Role For Specified Participant"
end

get '/participant/:participant_id/role/:role_id/participant-role/show/:id' do
  "Show Specified Role For Specified Participant"
end

get '/participant/:participant_id/role/:role_id/participant-role/edit/:id' do
  "Edit Specified Role For Specified Participant"
end

post '/participant/:participant_id/role/:role_id/participant-role/update/:id' do
  "Update Edited Specified Role For Specified Participant"
end

post '/participant/:participant_id/role/:role_id/participant-role/delete/:id' do
  "Delete Specified Role For Specified Participant"
end

post '/participant/:participant_id/role/:role_id/participant-role/destroy/:id' do
  "Destroy Specified Role For Specified Participant"
end

get '/participant/:participant_id/role/:role_id/participant-role/preview-soft-deletion/:id' do
  "Preview Soft-Deletion Of Specified Role For Specified Participant"
end

post '/participant/:participant_id/role/:role_id/participant-role/confirm-soft-deletion/:id' do
  "Confirm Soft-Deletion Of Specified Role For Specified Participant"
end

# Participant-Account-Authentication Routes
get '/participant/all/account-authentication/index' do
  "List Of Account-Authentications For All Participants"
end

get '/participant/:participant_id/account-authentication/index' do
  "List Of Account-Authentications For Specified Participant"
end

get '/participant/:participant_id/account-authentication/create' do
  "Create Account-Authentication For Specified Participant"
end

post '/participant/:participant_id/account-authentication/store' do
  "Store Created Account-Authentication For Specified Participant"
end

get '/participant/:participant_id/account-authentication/show/:id' do
  "Show Acount-Authentication For Specified Participant"
end

get '/participant/:participant_id/account-authentication/edit/:id' do
  "Edit Account-Authentication For Specified Participant"
end

post '/participant/:participant_id/account-authentication/update/:id' do
  "Update Edited Account-Authentication For Specified Participant"
end

post '/participant/:participant_id/account-authentication/delete/:id' do
  "Delete Account-Authentication For Specified Participant"
end

post '/participant/:participant_id/account-authentication/destroy/:id' do
  "Destroy Account-Authentication For Specified Participant"
end

get '/participant/:participant_id/account-authentication/preview-soft-deletion/:id' do
  "Preview Soft-Deletion Of Account-Authentication For Specified Participant"
end

post '/participant/:participant_id/account-authentication/confirm-soft-deletion/:id' do
  "Confirm Soft-Deletion Of Account-Authentication For Specified Participant"
end

# Participant-Login Routes
get '/participant/all/participant-login/index' do
  "List Of Logins For All Participants"
end

get '/participant/:participant_id/participant-login/index' do
  "List Of Logins For Specified Participant"
end

get '/participant/:participant_id/participant-login/create' do
  "Create Logins For Specified Participant"
end

post '/participant/:participant_id/participant-login/store' do
  "Store Created Login For Specified Participant"
end

get '/participant/:participant_id/participant-login/show/:id' do
  "Show Login For Specified Participant"
end

get '/participant/:participant_id/participant-login/edit/:id' do
  "Edit Login For Specified Participant"
end

post '/participant/:participant_id/participant-login/update' do
  "Update Edited Login For Specified Participant"
end

get '/participant/:participant_id/participant-login/delete/:id' do
  "Delete Login For Specified Participant"
end

get '/participant/:participant_id/participant-login/destroy/:id' do
  "Destroy Login For Specified Participant"
end

get '/participant/:participant_id/participant-login/preview-soft-deletion/:id' do
  "Preview Soft-Deletion Of Login For Specified Participant"
end

post '/participant/:participant_id/participant-login/confirm-soft-deletion/:id' do
  "Confirm Soft-Deletion Of Login For Specified Participant"
end

# Authentication-Mechanism Routes
get '/authentication-mechanism/index' do
  "List Of Authentication-Mechanisms"
end

get '/authentication-mechanism/create' do
  "Create Authentication-Mechanism"
end

post '/authentication-mechanism/store' do
  "Store Created Authentication-Mechanism"
end

get '/authentication-mechanism/show/:id' do
  "Show Authentication-Mechanism"
end

get '/authentication-mechanism/edit/:id' do
  "Edit Authentication-Mechanism"
end

post '/authentication-mechanism/update' do
  "Update Edited Authentication-Mechanism"
end

get '/authentication-mechanism/delete/:id' do
  "Delete Authentication-Mechanism"
end

get '/authentication-mechanism/destroy/:id' do
  "Destroy Authentication-Mechanism"
end

get '/authentication-mechanism/preview-soft-deletion/:id' do
  "Preview Soft-Deletion Of Authentication-Mechanism"
end

post '/authentication-mechanism/confirm-soft-deletion/:id' do
  "Confirm Soft-Deletion Of Authentication-Mechanism"
end

# Login-Mechanism Routes
get '/login-mechanism/index' do
  "List Of Login-Mechanisms"
end

get '/login-mechanism/create' do
  "Create Login-Mechanism"
end

post '/login-mechanism/store' do
  "Store Created Login-Mechanism"
end

get '/login-mechanism/show/:id' do
  "Show Login-Mechanism"
end

get '/login-mechanism/edit/:id' do
  "Edit Login-Mechanism"
end

post '/login-mechanism/update' do
  "Update Edited Login-Mechanism"
end

get '/login-mechanism/delete/:id' do
  "Delete Login-Mechanism"
end

get '/login-mechanism/destroy/:id' do
  "Destroy Login-Mechanism"
end

get '/login-mechanism/preview-soft-deletion/:id' do
  "Preview Soft-Deletion Of Login-Mechanism"
end

post '/login-mechanism/confirm-soft-deletion/:id' do
  "Confirm Soft-Deletion Of Login-Mechanism"
end

# Participant-Authentication-Authentication-Mechanism Routes
get '/participant/all/participant-authentication/all/authentication-mechanism/index' do
  "List Of Authentications and Their Corresponding Authentication-Mechanisms For All Participants"
end

get '/participant/:participant_id/participant-authentication/all/authentication-mechanism/index' do
  "List Of Authentications and Their Corresponding Authentication-Mechanisms For Specified Participant"
end

get '/participant/:participant_id/participant-authentication/:participant_authentication_id/authentication-mechanism/create' do
  "Create Authentication-Mechanism For Specified Authentication For Specified Participant"
end

post '/participant/:participant_id/participant-authentication/:participant_authentication_id/authentication-mechanism/store' do
  "Store Created Authentication-Mechanism For Specified Authentication For Specified Participant"
end

get '/participant/:participant_id/participant-authentication/:participant_authentication_id/authentication-mechanism/show/:id' do
  "Show Authentication-Mechanism For Specified Authentication For Specified Participant"
end

get '/participant/:participant_id/participant-authentication/:participant_authentication_id/authentication-mechanism/edit/:id' do
  "Edit Authentication-Mechanism For Specified Authentication For Specified Participant"
end

post '/participant/:participant_id/participant-authentication/:participant_authentication_id/authentication-mechanism/update' do
  "Update Edited Authentication-Mechanism For Specified Authentication For Specified Participant"
end

get '/participant/:participant_id/participant-authentication/:participant_authentication_id/authentication-mechanism/delete/:id' do
  "Delete Authentication-Mechanism For Specified Authentication For Specified Participant"
end

get '/participant/:participant_id/participant-authentication/:participant_authentication_id/authentication-mechanism/destroy/:id' do
  "Destroy Authentication-Mechanism For Specified Authentication For Specified Participant"
end

get '/participant/:participant_id/participant-authentication/:participant_authentication_id/authentication-mechanism/preview-soft-deletion/:id' do
  "Preview Soft-Deletion Of Authentication-Mechanism For Specified Authentication For Specified Participant"
end

post '/participant/:participant_id/participant-authentication/:participant_authentication_id/authentication-mechanism/confirm-soft-deletion/:id' do
  "Confirm Soft-Deletion Of Authentication-Mechanism For Specified Authentication For Specified Participant"
end

# Participant-Login-Login-Mechanism Routes
get '/participant/all/participant-login/all/login-mechanism/index' do
  "List Of Logins and Their Corresponding Login-Mechanisms For All Participants"
end

get '/participant/:participant_id/participant-login/all/login-mechanism/index' do
  "List Of Logins and Their Corresponding Login-Mechanisms For Specified Participant"
end

get '/participant/:participant_id/participant-login/:participant_login_id/login-mechanism/create' do
  "Create Login-Mechanism For Specified Login For Specified Participant"
end

post '/participant/:participant_id/participant-login/:participant_login_id/login-mechanism/store' do
  "Store Created Login-Mechanism For Specified Login For Specified Participant"
end

get '/participant/:participant_id/participant-login/:participant_login_id/login-mechanism/show/:id' do
  "Show Login-Mechanism For Specified Login For Specified Participant"
end

get '/participant/:participant_id/participant-login/:participant_login_id/login-mechanism/edit/:id' do
  "Edit Login-Mechanism For Specified Login For Specified Participant"
end

post '/participant/:participant_id/participant-login/:participant_login_id/login-mechanism/update' do
  "Update Edited Login-Mechanism For Specified Login For Specified Participant"
end

get '/participant/:participant_id/participant-login/:participant_login_id/login-mechanism/delete/:id' do
  "Delete Login-Mechanism For Specified Login For Specified Participant"
end

get '/participant/:participant_id/participant-login/:participant_login_id/login-mechanism/destroy/:id' do
  "Destroy Login-Mechanism For Specified Login For Specified Participant"
end

get '/participant/:participant_id/participant-login/:participant_login_id/login-mechanism/preview-soft-deletion/:id' do
  "Preview Soft-Deletion Of Login-Mechanism For Specified Login For Specified Participant"
end

post '/participant/:participant_id/participant-login/:participant_login_id/login-mechanism/confirm-soft-deletion/:id' do
  "Confirm Soft-Deletion Of Login-Mechanism For Specified Login For Specified Participant"
end
