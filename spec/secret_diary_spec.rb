require 'secret_diary'

describe SecretDiary do
  it "locks the diary by default" do
    secret_diary = SecretDiary.new
    expect { secret_diary.add_entry }.to raise_error 'SecretDiary is locked!'
  end
  it "let's you add an entry if you unlock it" do
    secret_diary = SecretDiary.new
    secret_diary.unlock
    expect { secret_diary.add_entry }.not_to raise_error
  end
end
