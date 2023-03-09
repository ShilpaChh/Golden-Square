require "password_checker"

RSpec.describe PasswordChecker do
    it "checks password's length" do
        pwd_check = PasswordChecker.new
        result = pwd_check.check("qwertyuio")
        expect(result).to eq true
    end

    it "checks for invalid password" do
        pwd_check = PasswordChecker.new
        expect {pwd_check.check("qwerty")}.to raise_error "Invalid password, must be 8+ characters."
    end
 
end

