class Secret_diary
  attr_accessor :unlocked_diary

  def lock
    raise "The diary is locked!"
  end
  def unlock
    @unlocked_diary
  end
end

class Diary_entries
  def add_entry
    @unlocked_diary
  end
  def get_entries
    @unlocked_diiary
  end
end
