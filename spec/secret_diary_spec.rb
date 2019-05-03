require './lib/secret_diary'

describe "secret diary" do
  secret_diary = Secret_diary.new

  it "locks" do
    expect(secret_diary).to respond_to(:lock)
  end

  it "unlocks" do
    expect(secret_diary).to respond_to(:unlock)
  end

  it "You can add an entry when unlocked" do
    expect(secret_diary).to respond_to(:add_entry)
  end

  it "You can get all the entries when unlocked" do
    secret_diary.unlock
    expect(secret_diary).to respond_to(:get_entries)
  end

  it "Raises an error when tryinig to add an entry to locked diary" do
    secret_diary.lock
    expect{secret_diary.add_entry}.to raise_error("The diary is locked, cannot add entry!")
  end

  it "Raises an error when trying to add an entry to locked diary" do
    secret_diary.lock
    expect{secret_diary.get_entries}.to raise_error("The diary is locked, cannot see entries!")
  end

end
