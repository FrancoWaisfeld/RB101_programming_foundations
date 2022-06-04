REPLACEMENTS = {
  '%{adjective}' => %w(quick lazy sleepy ugly),
  '%{noun}'=> %w(fox dog head leg),
  '%{verb}' => %w(jumps lifts bites licks),
  '%{adverb}' => %w(easily lazily noisily excitedly)
}

madlibs = File.open("madlibs.txt")
madlibs_lines = madlibs.readlines

madlibs_lines.each do |line|
  REPLACEMENTS.each { |key, value| line.gsub!(key, value.sample) }
end

puts madlibs_lines.join

madlibs.close
