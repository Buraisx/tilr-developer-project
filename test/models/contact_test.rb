require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  setup do
    @contact = build(:contact)
    # @newcontact = create(:contact)
  end

  test "full name method" do
    @contact.first_name = "test"
    @contact.last_name = "person"
    assert_equal(@contact.full_name, "test person")
  end

  test "search term produces results " do
    @contact.save
    search_term = "john"
    assert_equal(Contact.search(search_term)[0], @contact)
  end
end
