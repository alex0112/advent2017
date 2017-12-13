def special_sum(num)
  num
    .to_s
    .split('')
    .map {|e| e.to_i}
    .instance_eval { self.push(self[0]) }
    .each_cons(2).map { |set| set[0] if set[0] == set[1] }
    .compact
    .sum
end
