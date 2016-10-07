remark = Array.new

remark <<"4?"

# remark.reject{ |x| x.upcase = x}


remark.delete_if{|x| x.upcase! == remark && x.split(/[A-Z]*/).empty? }

p remark