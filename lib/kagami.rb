require "kagami/version"

module Kagami
  class << self
    def max_width(line)
      return line.lines.map{|x| x.chomp.size}.max
    end

    def ljust(line)
      width = max_width(line)
      return line.lines.map{|x| x.chomp.ljust(width)}.join("\n")
    end

    def reversed(line)
      return line.lines.map{|x| x.chomp.reverse}.join("\n")
    end

    def readable(line)
      return line.gsub(/(\w+(:? \w+)*)/){|s| s.reverse}
    end

    def convert(line)
      # Align string
      aligned_line = ljust(line)

      # Reverse
      reversed_line = reversed(aligned_line)

      # Rereverse readable words only!!!!!
      readable_line = readable(reversed_line)

      return readable_line
    end

    def run(source)
      puts convert(source)
    end
  end
end
