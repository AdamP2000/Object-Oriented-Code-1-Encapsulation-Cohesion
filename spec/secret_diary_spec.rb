require 'secret_diary'

describe SecretDiary do
  it "locks the diary by default" do
    secret_diary = SecretDiary.new
    expect { secret_diary.add_entry }.to raise_error 'SecretDiary is locked!'
  end
end
