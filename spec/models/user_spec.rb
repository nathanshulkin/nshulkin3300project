require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations users" do
    it "ensures users signed in" do
      project = Post.new(description: "no user signed in")
      expect(project.valid?).to eq(false)
    end
  end
end
