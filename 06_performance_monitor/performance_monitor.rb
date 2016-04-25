def measure(n = 1)
  timer_start = Time.now
  n.times { |x| yield }
  (Time.now - timer_start) / (n == 0 ? 1 : n)
end
