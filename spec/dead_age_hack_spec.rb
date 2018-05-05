RSpec.describe DeadAgeHack do
  it 'has a version number' do
    expect(DeadAgeHack::VERSION).not_to be nil
  end

  it 'extracts members' do
    xml = <<XML
      <?xml version="1.0" encoding="utf-16"?>
      <SaveContainer
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xmlns:xsd="http://www.w3.org/2001/XMLSchema">
        <camp>
          <Camp>
            <Member>
              <ID>Student</ID>
            </Member>
          </Camp>
        </camp>
      </SaveContainer>
XML
    expect(DeadAgeHack.new(xml).members.size).to eq 1
  end
end
