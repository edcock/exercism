class Bob
  def hey(remark)
    if remark.split.empty?
      return "Fine. Be that way!"
    elsif  remark.upcase == remark && !remark.scan(/[A-Z]*/).join.empty?
      return 'Whoa, chill out!'
    elsif remark.split("").last == "?"
      return "Sure."
    else
      return "Whatever."
    end
  end
end
