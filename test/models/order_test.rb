require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  include ActiveJob::TestHelper

  perform_enquewed_jobs do
    click_button "Place Order"
  end

end
