# Doubles are a tool that we use when we want to test that one class interacts with another in the correct way. We create a double that acts the same as the collaborator class, and then verify that the class we're trying to test does its job correctly.

RSpec.describe "Building Double examples - test series - simple to sophesticated" do

    context "setting up a double" do
        it "it sets up a double" do
            fake = double :fake # setting up a double - same as when we create a fake class and then call here
            expect(fake).to be # .to be means it exists
        end
    end

    context "add a method to double" do
        it "it calls a method and prints it out" do
            fake = double :fake, greet: "Hello, world!" # greet method that maps to hello, world and returns it
            expect(fake.greet).to eq "Hello, world!"
        end
    end


    context "when a method has a argument - cheat way -  eg1" do
        it "it passes the argument to the method" do
            fake = double :fake, greet: "Hello, world!" # greet method that returns hello, world
            expect(fake.greet("Shilpa")).to eq "Hello, world!"
        end
    end

    context "when a method has a argument - best precise way -  eg2" do
        it "it passes the argument(s) to the method" do
            fake = double :fake
            allow(fake).to receive(:greet).with("Shilpa").and_return("Hello, Shilpa!")
             expect(fake.greet("Shilpa")).to eq "Hello, Shilpa!" # number of args in allow line and expect line have to match
              expect(fake).to receive(:greet).with("Harsha", "Meg").and_return("return anything") # we expect it to happen rather than allow to happen
              expect(fake.greet("Harsha", "Meg")).to eq "return anything" # so, we need to call it right arg's atleast once
              
        end
    end


end


