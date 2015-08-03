require('rspec')
require('queen_attack')
require('pry')

describe('Array#queen_attack') do
  it('is false if the coordinates are not horizontally, diagonally, or vertically in line with each other') do
    expect([1,1].queen_attack?([2,3])).to(eq(false))
  end

  it('is true if the coordinates are not diagonally in line with each other') do
    expect([1,1].queen_attack?([4,4])).to(eq(true))
  end
end
