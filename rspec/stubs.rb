class Book 
end

describe Book do
  it 'rspec 3 stub syntax example' do
    book = double('book')
    allow(book).to receive(:name) {'Get Rich Quick'}
    
    expect(book.name).to eq('Get Rich Quick')
  end
end