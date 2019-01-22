require 'rails_helper'

describe User do
  let(:user) {User.create!(password:"password", email:"mail@email.com")}

  it "it is a valid email" do
   expect(user.email).to eq "mail@email.com"
 end
end
