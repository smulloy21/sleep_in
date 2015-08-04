require('rspec')
require('sleep_in?.rb')

describe('String#sleep_in?') do
  it('converts a date string to a date and gives the day as a string') do
    expect(("8/4/2015").sleep_in?()).to(eq("Tuesday"))
  end

  it('tells user to sleep in on weekends') do
    expect(("8/8/2015").sleep_in?()).to(eq("Saturday - sleep in!"))
  end
end
