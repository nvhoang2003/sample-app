json.data do
  json.user do
    json.id @user.id
    json.name @user.name
    json.email @user.email
    # json.password @user.password
    # json.password_confirmation @user.password_confirmation
  end
end