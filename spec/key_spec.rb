require 'key'

describe Key do
	# key should unlock

	describe '#unlock' do
		it 'should unlock a diary' do
			subject.unlock
			expect(subject.locked?).to be false
		end
	end
	# key should lock
	describe '#lock' do
		it 'should lock a diary' do
			subject.unlock
			subject.lock
			expect(subject.locked?).to be true
		end
	end
end