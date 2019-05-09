require_relative 'padlock'

class Secret_diary

  def initialize(padlock = Padlock.new)
    @padlock = padlock
    @secret_diary = []
  end

  def padlock
    @padlock
  end

  def add_entry(entry)
    fail "The diary is locked, cannot add entry!" if @padlock.locked? == true
    @secret_diary << entry
  end

  def get_entries
    fail "The diary is locked, cannot see entries!" if @padlock.locked? == true
    @secret_diary
  end
end
