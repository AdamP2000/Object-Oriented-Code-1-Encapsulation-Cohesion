require 'secret_diary'


describe SecretDiary do
  before(:each) do
    @secret_diary = SecretDiary.new
  end
  describe '#add_entry' do
    it "locks the diary by default" do
      expect { @secret_diary.add_entry }.to raise_error 'SecretDiary is locked!'
    end
    it "let's you add an entry if you unlock it" do
      @secret_diary.unlock
      expect { @secret_diary.add_entry }.not_to raise_error
    end
    it "raises an error when user calls lock" do
      @secret_diary.unlock
      @secret_diary.lock
      expect { @secret_diary.add_entry }.to raise_error 'SecretDiary is locked!'
    end
  end
  describe '#get_entries' do
    it "locks the diary by default" do
      expect { @secret_diary.get_entries }.to raise_error 'SecretDiary is locked!'
    end
    it "let's you add an entry if you unlock it" do
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
