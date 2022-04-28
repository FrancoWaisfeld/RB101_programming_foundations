def uuid
  options = []
  (0..9).each { |number| options << number.to_s }
  ('a'..'f').each { |letter| options << letter }

  sections = [8, 4, 4, 4, 12]
  uuid = ''

  sections.each_with_index do |section, index|
    section.times do
      uuid << options.sample
    end

    uuid << '-' if index < sections.length - 1
  end
  uuid
end

p uuid
