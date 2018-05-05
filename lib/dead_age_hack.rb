require 'dead_age_hack/version'
require 'rexml/document'

# The member of the camp
class Member
  def initialize(element)
    @element = element
  end

  def hp
    @element.get_elements('hp').first.text.to_i
  end
end

# Main class that decorates the savefile
class DeadAgeHack
  def initialize(source)
    @source = REXML::Document.new(source)
  end

  # Returns members of the camp
  # @return [Member]
  def members
    @source.get_elements('//Member').map { |item| Member.new(item) }
  end
end
