$denominations = [
  [ 'PENNY', 1],
  [ 'NICKEL', 5],
  [ 'DIME', 10 ],
  [ 'QUARTER', 25 ],
  [ 'HALF DOLLAR', 50 ],
  [ 'ONE', 100 ],
  [ 'TWO', 200 ],
  [ 'FIVE', 500 ],
  [ 'TEN', 1000 ],
  [ 'TWENTY', 2000 ],
  [ 'FIFTY', 5000 ],
  [ 'ONE HUNDRED', 10000 ]
].reverse

@c= []

def calc_change amount_left
  return 'ERROR' if amount_left < 0
  return 'ZERO' if amount_left == 0

  change = []
  for denom, value in $denominations do
    while value <= amount_left do
      change << denom
      amount_left -= value
    end
    break if amount_left == 0
  end

  change.sort.join(',')
end

def to_cents str
  dollars, cents = str.split('.')
  cents ||= 0
  dollars.to_i * 100 + cents.to_i
end
m=[]
ARGF.each do |line|
 s = line.split(";")
 s.each do |v|
  m << to_cents(v)
 end
 m.each do |pp, ch|
  puts calc_change(ch)
 end 
end