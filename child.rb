require 'childprocess'
require 'tempfile'

process = ChildProcess.build 'ruby', 'app.rb'
process.io.inherit!
#process.io.stdout = Tempfile.new 'child-out'
#process.io.stderr = Tempfile.new 'child-err'
process.cwd = Dir.pwd
process.start
begin
  process.poll_for_exit 10
rescue ChildProcess::TimeoutError
  process.alive? || !process.exited? ? retry : process.stop
end
