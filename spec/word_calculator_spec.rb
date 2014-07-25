require('rspec')
require('word_calculator')

describe("word_calculator") do
  it('adds two numbers in a sentence') do
  expect(word_calculator('What is 2 plus 2?')).to(eq(4))
  end
end
