RSpec.describe DeadAgeHack do
  it 'has a version number' do
    expect(DeadAgeHack::VERSION).not_to be nil
  end

  it 'extracts members' do
    expect(DeadAgeHack.new(TestDoc::DATA).members.size).to eq 1
  end
end
