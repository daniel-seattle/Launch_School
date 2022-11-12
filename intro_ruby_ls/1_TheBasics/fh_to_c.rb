fh = File.read("fh.dat")
c = (fh - 32)*5/9

c_out = File.new("c.dat","w")
c_out.puts c
c_out.close
