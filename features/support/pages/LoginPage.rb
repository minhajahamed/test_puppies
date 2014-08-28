class LoginPage
  include PageObject
  text_field(:username, :id => 'loginName')
  text_field(:password, :id => 'password')
  text_field(:providerCode, :id=>'providerCode')
  button(:login, :id => 'submitButton')
end

