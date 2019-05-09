require 'secret_diary'
require 'padlock'

describe Secret_diary do

  let(:subject) { described_class.new(Padlock.new) }

  it "is locked" do
    expect(subject.padlock.locked?).to eq true
  end

  it "can add an entry" do
    subject.padlock.unlock
    subject.add_entry("Hi")
    expect(subject.get_entries).to eq ["Hi"] 
  end

  it "Raises an error when tryinig to add an entry to locked diary" do
    expect{ subject.add_entry("Hi") }.to raise_error "The diary is locked, cannot add entry!"
  end

  it "Raises an error when trying to get entries to locked diary" do
    expect{ subject.get_entries }.to raise_error "The diary is locked, cannot see entries!"
  end

end
