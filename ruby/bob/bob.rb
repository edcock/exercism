class Bob
  def hey(remark)
    response ={
        asking: 'Sure.',
        yelling: 'Whoa, chill out!',
        silence: 'Fine. Be that way!',
        statement: 'Whatever.'
    }

    #lambdas
    silence = lambda {|s| s.split.empty?}
    yelling = lambda {|s| s == s.upcase && s =~ /[A-Z]/}
    asking  = lambda {|s| s =~ /[?]\z/ }


    case remark
      when silence then  response[:silence]
      when yelling then response[:yelling]
      when asking  then response[:asking]
      else
        response[:statement]
    end
  end


end
