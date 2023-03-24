require './classes/book'
require 'date'

describe Book do
  context 'Book class tests' do
    before(:each) do
      @book = Book.new('Crown Business', 'good', Date.parse('2022/12/12'))
    end

    it 'should create an instance fo Book class' do
      expect(@book).to be_an_instance_of(Book)
    end
  end
end