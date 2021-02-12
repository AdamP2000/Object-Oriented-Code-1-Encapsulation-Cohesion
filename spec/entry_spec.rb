require 'entry'

describe Entry do
let(:title) {'March 1st'}
let(:body) {'Ate Bread'}
let(:entry) {Entry.new(title, body)}
  describe '#initialization' do
		it 'should give an entry a title' do
			expect(entry.title).to be_a String
		end

		it 'should give an entry a body' do
			expect(entry.body).to be_a String
		end
	end
end
