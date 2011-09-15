class Progress

  def self.next
    STDOUT.print "."
    STDOUT.flush
  end

  def self.end
    STDOUT.puts
  end
end

