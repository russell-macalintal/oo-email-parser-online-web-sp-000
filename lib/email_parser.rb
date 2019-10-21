# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
  attr_accessor :parse

  def initialize(email_addresses)
    @parse = []
    raw_data = email_addresses.split(/\s|,/)
    raw_data.each do |email|
      if email != "" && email != nil && !@parse.include?(email)
        @parse << email
      end
    end
  end

end
