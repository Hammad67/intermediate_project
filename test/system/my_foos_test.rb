require "application_system_test_case"

class MyFoosTest < ApplicationSystemTestCase
  setup do
    @my_foo = my_foos(:one)
  end

  test "visiting the index" do
    visit my_foos_url
    assert_selector "h1", text: "My Foos"
  end

  test "creating a My foo" do
    visit my_foos_url
    click_on "New My Foo"

    fill_in "Name", with: @my_foo.name
    click_on "Create My foo"

    assert_text "My foo was successfully created"
    click_on "Back"
  end

  test "updating a My foo" do
    visit my_foos_url
    click_on "Edit", match: :first

    fill_in "Name", with: @my_foo.name
    click_on "Update My foo"

    assert_text "My foo was successfully updated"
    click_on "Back"
  end

  test "destroying a My foo" do
    visit my_foos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My foo was successfully destroyed"
  end
end
