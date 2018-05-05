RSpec.describe Member do
  member = DeadAgeHack.new(TestDoc::DATA).members.first
  it 'returns HP' do
    expect(member.hp).to eq(400)
  end
  it 'returns ammo' do
    expect(member.ammo).to eq(999)
  end
  context 'modifying' do
    hack = DeadAgeHack.new(TestDoc::DATA)
    it 'modifies hp' do
      hack.members.first.hp = 10
      expect(hack.doc).to include('<hp>10</hp>')
    end
  end
end
