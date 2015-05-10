require 'active_support'
require 'yashare/version'
require 'yashare/helpers'
require 'yashare/widget'

ActiveSupport.on_load(:action_view) do
  include Yashare::Helpers
end
