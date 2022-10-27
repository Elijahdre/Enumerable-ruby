module MyEnumerable
  def all?
    result = true
    each { |el| result = false unless yield el }
    result
  end

  def any?
    result = false

    each { |el| result = true if yield el }

    result
  end

  def filter?
    result = []

    each { |el| result.push(el) if yield el }

    result
  end
end
