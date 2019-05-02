class Secret_diary
  attr_accessor :unlocked_diary

  def lock
    raise "The diary is locked!"
  end
  def unlock
    @unlocked_diary = Unlocked_diary
  end
end

class Unlocked_diary
  def add_entry

  end
  def get_entries
    
  end
end
