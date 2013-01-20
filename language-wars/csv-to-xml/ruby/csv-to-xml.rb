puts "<records>"
  STDIN.read.split("\n").each do |r| 
    puts "  <record>"
    r.split(",").each do |f|
      puts " " * 4 + "<field>#{f}</field>"
    end
    puts "  </record>"
  end
puts "</records>"
