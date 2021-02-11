class SecretDiary

  def initialize
    @locked = true
  end





  def add_entry
    fail 'SecretDiary is locked!' if @locked == true
    "Coming back to how to add entries later"
  end

  def unlock
    @locked = false
  end





end
