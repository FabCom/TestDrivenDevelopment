require_relative('../lib/day_traider')

describe 'max gain verification' do
  it 'must return an array with date of buy and date of send' do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end
end
