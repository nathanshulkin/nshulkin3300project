require 'rails_helper'

RSpec.feature "Posts", type: :feature do
  context "Create new post" do
    before(:each) do
      visit new_post_path
      within("form") do
        fill_in "Title", with: "Test title"
      end
    end

    scenario "should be successful" do
      fill_in "Text", with: "Test description"
      click_button "Create Post"
      expect(page).to have_content("Test title")
    end

    scenario "should fail" do
      click_button "Create Post"
      expect(page).to have_content("Text can't be blank")
    end

  end

  context "Update Post" do
    let(:post) { Post.create(title: "Test title", text: "Test content") }
    before(:each) do
      visit edit_post_path(post)
    end

    scenario "should be successful" do
      within("form") do
        fill_in "Text", with: "New description content"
      end
      click_button "Update Post"
      expect(page).to have_content("New description content")
    end

    scenario "should fail" do
      within("form") do
        fill_in "Text", with: ""
      end
      click_button "Update Post"
      expect(page).to have_content("Text can't be blank")
    end

    scenario "should fail" do
      within("form") do
        fill_in "Title", with: ""
      end
      click_button "Update Post"
      expect(page).to have_content("Title can't be blank")
    end
  end

  context "Remove existing project" do
    let!(:post) { Post.create(title: "Test title", text: "Test content") }
    scenario "remove project" do
      visit edit_post_path(post)
      click_link "Eliminate"
      expect(Post.count).to eq(0)
    end
  end
end