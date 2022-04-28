hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

fruit_colors_and_vegetable_sizes =
  hsh.map do |_, description|
    if description[:type] == 'fruit'
      description[:colors].map { |color| color.capitalize }
    elsif description[:type] == 'vegetable'
      description[:size].upcase
    end
  end

p fruit_colors_and_vegetable_sizes
