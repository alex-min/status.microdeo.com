# Creating the default user
User.create!([{
                email: ENV['ADMIN_EMAIL'],
                password: '12345678', # this is not used and replaced just after
                twillo_account_sid: ENV['TWILLO_ACCOUNT_SID'],
                twillo_auth_token: ENV['TWILLO_AUTH_TOKEN'],
                twillo_root_phone: ENV['TWILLO_ROOT_PHONE']
}])
admin = User.find_by(email: ENV['ADMIN_EMAIL'])
admin.encrypted_password = ENV['ADMIN_ENCRYPTED_PASSWORD']
admin.save!
