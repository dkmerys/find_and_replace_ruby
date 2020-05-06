require ("rspec")
require ("pry")
require ("find_and_replace")

describe('#find_and_replace') do
  it("splits a user-inputted sentence into an array of individual words") do
    fnr = FNR.new("Hello world")
    expect(fnr.sentence_array).to(eq(["Hello", "world"]))
  end
  it("saves inputted word from user as constructor") do
    fnr = FNR.new("Hello world")
    expect(fnr.word_to_replace("world")).to(eq("world"))
  end
end