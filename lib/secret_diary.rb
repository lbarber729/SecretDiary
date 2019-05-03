class Secret_diary

  def initialize
    @locked = true
    #secret_diary = []
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

  def add_entry
    fail "The diary is locked, cannot add entry!" if @locked == true
    #secret_diary << add_entry if false
  end

  def get_entries
    fail "The diary is locked, cannot see entries!" if @locked == true
    #puts secret_diary if false
  end
end
