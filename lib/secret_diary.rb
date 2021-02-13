require_relative 'entry'
require_relative 'key'


class SecretDiary

  attr_reader :entries, :key

  def initialize(key = Key.new)
    @entries = []
		@key = key
  end

  def add_entry(entry)
    fail 'SecretDiary is locked!' if @key.locked? 
    @entries << entry
  end

  def get_entries
    fail 'SecretDiary is locked!' if @key.locked? 
    for entry in @entries
      puts "#{entry.title}: #{entry.body}"
    end
  end



end
