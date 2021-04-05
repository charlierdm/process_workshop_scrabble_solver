class Scrabble

  def score(word)

    letters = { "aeioulnrst" => 1,
                "dg" => 2,
                "bcmp" => 3,
                "fhvwy" => 4,
                "k" => 5,
                "jx" => 8,
                "qz" => 10
                          }
                          
    points = []

    if word.nil? || word.empty?
      0
    elsif word.include?('\\')
      0
    elsif word.downcase.chars { |i| letters.each { |k, v| k.include?(i) ? points.push(v) : nil } }

    end

    points.sum

  end

end

