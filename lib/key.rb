class Key
	attr_reader :locked

	def initialize
		@locked = true
	end

	def unlock
    @locked = false
  end


  def lock
    @locked = true
  end

	def locked?
		@locked
	end
end

#key.lock => locked = true
# diary.get_entries
# !diary.add_entry(entry)