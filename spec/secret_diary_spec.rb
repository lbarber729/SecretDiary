require './lib/secret_diary'

describe "secret diary" do
  secret_diary = Secret_diary.new

  it "locks" do
    expect(secret_diary).to respond_to(:lock)
  end

  it "raises an error whilst locked" do
    expect{secret_diary.lock}.to raise_error("The diary is locked!")
  end

  it "unlocks" do
    expect(secret_diary).to respond_to(:unlock)
  end

end

describe "Entries" do
  diary_entries = Diary_entries.new

  it "You can add an entry" do
    expect(diary_entries).to respond_to(:add_entry)
  end

  it "You can get all the entries" do
    expect(diary_entries).to respond_to(:get_entries)
  end

end
