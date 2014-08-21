# print loop of odd numbers from 1-99 
# Author: Anthony lombardi

def fibonacci( n )
  return  n  if ( 0..1 ).include? n
  ( fibonacci( n - 1 ) + fibonacci( n - 2 ) ) 
end

args = 0
until args == nil
  args = gets 
	puts fibonacci( args.to_i )
end