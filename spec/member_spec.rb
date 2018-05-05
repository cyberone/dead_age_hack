RSpec.describe Member do
  member = DeadAgeHack.new(TestDoc::DATA).members.first
  it 'returns HP' do
    expect(member.hp).to eq(400)
  end
end
