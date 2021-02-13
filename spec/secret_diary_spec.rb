require 'secret_diary'


describe SecretDiary do
  let(:entry) { double :entry, title: :title, body: :body }
  before(:each) do
    @secret_diary = SecretDiary.new
  end
  describe '#add_entry' do
    it "locks the diary by default" do
      expect { @secret_diary.add_entry(entry) }.to raise_error 'SecretDiary is locked!'
    end
    it "won't raise an error if diary is unlocked" do
      @secret_diary.unlock
      expect { @secret_diary.add_entry(entry) }.not_to raise_error
    end
    it "raises an error when user calls lock" do
      @secret_diary.unlock
      @secret_diary.lock
      expect { @secret_diary.add_entry(entry) }.to raise_error 'SecretDiary is locked!'
    end
		it 'adds a new entry with a title and body when unlocked' do
			@secret_diary.unlock
			expect(@secret_diary.add_entry(entry)).to eq [entry]
		end
  end
  describe '#get_entries' do
    it "locks the diary by default" do
      expect { @secret_diary.get_entries }.to raise_error 'SecretDiary is locked!'
    end
    it "won't raise an error if diary is unlocked" do
      @secret_diary.unlock
      expect { @secret_diary.get_entries }.not_to raise_error
    end
    it "raises an error when user calls lock" do
      @secret_diary.unlock
      @secret_diary.lock
      expect { @secret_diary.get_entries }.to raise_error 'SecretDiary is locked!'
    end
  end
end
