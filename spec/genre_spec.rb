require_relative '../classes/genre'
require_relative '../classes/item'

describe Genre do
  before(:each) do
    @genre = Genre.new('pop')
    @item = Item.new(@genre)
  end

  it 'has name to be pop' do
    expect(@genre.name).to eq 'pop'
  end

  it 'has 1 genre' do
    @genre.add_item(@item)
    expect(@genre.items.size).to be 1
  end
end
