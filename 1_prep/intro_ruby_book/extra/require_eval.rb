=begin
Local vars are scoped to the file they are defined in, when you use
require or load. You could make it global, but unless this is just a
quick hack, it’s not a good solution.

Another option is to read and eval the file. If the myhash variable has
been assigned before you eval, then the assignment in stuff.rb will
propagate to the mainprog.rb. Like so:
=end

myhash = nil
eval File.read(“stuff.rb”)
p myhash

=begin
This is ok for some purposes, but you have to know in advance which
variables the file is going to define. Also, you may have scope
collisions: any other local var in mainprog.rb can be affected by
assignments in stuff.rb.

My preference is to read the file as a string and use module_eval:
=end

#stuff.rb
Myhash = { “a” => “ay”, “b” => “bee”, “c” => “sea” }

#mainprog.rb
m = Module.new
m.module_eval(File.read(“stuff.rb”), File.expand_path(“stuff.rb”))
p m::Myhash



=begin
Local vars stay local. Constants are accessible in the scope of the
newly defined module m. The second arg to module_eval means that errors
are reported with the correct file name.

This is the approach used by my “script” lib on raa. It adds some
sugar and features. 
=end