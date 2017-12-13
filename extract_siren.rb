require 'colorize'

line_num=0
text=File.open('siren.csv')

i = 0
text.each_line do | line |
  column = line.force_encoding("iso-8859-1").split(";")

  if column[42].to_s == '"8551Z"' ||  column[42].to_s == '"9313Z"' ||  column[42].to_s == '"9329Z"'
    puts ""
    a = column[0].to_s.split('"')
    puts a[1].to_s.colorize(:green)
    b = column[2].to_s.split('"')
    puts b[1].to_s.colorize(:blue)
    c = column[3].to_s.split('"')
    puts c[1].to_s.colorize(:red)
    d = column[4].to_s.split('"')
    puts d[1].to_s.colorize(:yellow)
    e = column[5].to_s.split('"')
    puts e[1].to_s.colorize(:green)
    f = column[6].to_s.split('"')
    puts f[1].to_s.colorize(:blue)
    g = column[7].to_s.split('"')
    puts g[1].to_s.colorize(:red)
    h = column[42].to_s.split('"')
    puts h[1].to_s.colorize(:yellow)
    puts "=*=*=*=*=*=*=*=*=*=*=*=*".colorize(:purple)

    File.open("sporticy.csv", "a+") do |aFile|
    	aFile << "#{a[1]},#{b[1]},#{c[1]},#{d[1]},#{e[1]},#{f[1]},#{g[1]},#{h[1]}\n"
    end

  end

 i += 1
  sleep(0.02)
  print "\r #{i} lignes traitées sur 9910725"
end
