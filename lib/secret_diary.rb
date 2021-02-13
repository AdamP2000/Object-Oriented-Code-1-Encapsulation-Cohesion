require_relative 'entry'


class SecretDiary

  attr_reader :entries

  def initialize
    @locked = true
    @entries = []
  end

  def add_entry(entry)
    fail 'SecretDiary is locked!' if @locked == true
    @entries << entry
  end

  def get_entries
    fail 'SecretDiary is locked!' if @locked == true
    for entry in @entries
      puts "#{entry.title}: #{entry.body}"
    end
  end

  def unlock
    @locked = false
  end


  def lock
    @locked = true
  end

end
