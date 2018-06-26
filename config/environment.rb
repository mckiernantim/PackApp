# Load the Rails application.
require_relative 'application'
Time::DATE_FORMATS[:custom_time] = "%I:%M%P"

# Initialize the Rails application.
Rails.application.initialize!
