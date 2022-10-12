require 'date'
require './classes/book'

describe Book do
  context 'Book class tests' do
    before(:each) do
      @book = Book.new('Shahira', Date.parse('2022/10/15'), 'good')
    end

    it 'should be a Book class instance' do
      expect(@book).to be_an_instance_of Book
    end

    it 'should return correct book publisher' do
      expect(@book.publisher).to eq 'Shahira'
    end

    it 'should return correct book cover state' do
      expect(@book.cover_state).to eq 'good'
    end

    it 'should return correct book publish_date' do
      expect(@book.publish_date).to eq Date.parse('2022/10/15')
    end

    it 'should return false unless @archived || cover_state == bad' do
      expect(@book.can_be_archived?).to eq false
    end
  end
end
