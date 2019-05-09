require 'padlock'

describe Padlock do

  it "locks" do
    expect(subject).to respond_to(:lock)
  end

  it "Unlocks" do
    expect(subject).to respond_to(:unlock)
  end

end
