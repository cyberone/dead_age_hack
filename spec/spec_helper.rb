require 'bundler/setup'
require 'dead_age_hack'

class TestDoc
  DATA = <<XML.freeze
      <SaveContainer
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xmlns:xsd="http://www.w3.org/2001/XMLSchema">
        <camp>
          <Camp>
            <Member>
              <ID>Student</ID>
              <hp>400</hp>
              <mEquipment>
                <AmmoSlot>
                  <Amount>999</Amount>
                </AmmoSlot>
              </mEquipment>
            </Member>
          </Camp>
        </camp>
      </SaveContainer>
XML
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
