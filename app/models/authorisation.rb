class Authorisation < ActiveRecord::Base

after_save :write_authorised_keys


def write_authorised_keys

end

end
