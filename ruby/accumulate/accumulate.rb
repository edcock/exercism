class Array
  def accumulate(&args)
    return enum_for(:accumulate) unless block_given?
    modified = []
    self.each { |e| modified << args.call(e) }
    modified
  end
end

