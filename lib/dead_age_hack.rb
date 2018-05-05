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

  def hp=(new_hp)
    @element.get_elements('hp').first.text = new_hp
  end

  def ammo
    element = @element.get_elements('mEquipment/AmmoSlot/Amount').first
    return element.text.to_i unless element.nil?
    nil
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

  def doc
    output = ""
    @source.write(output)
    output
  end
end
