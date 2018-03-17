def fibs(n)
	ary = [0, 1]

	(n-2).times do |n|
		ary << ary[ary.length-1] + ary[ary.length-2]
	end
	return ary
end

print fibs(20)

def fibs_rec(n)
	if n <= 2 then return n == 2 ? [0,1] : [0] end
	ary = fibs_rec(n-1)
	return ary << ary[-1] + ary[-2]
end

puts "\n"
print fibs_rec(20)