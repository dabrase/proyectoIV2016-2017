require 'rake/testtask'
Rake::TestTask.new do |t|
  t.libs << "lib"
  t.test_files = FileList['test/test_*.rb']
  t.verbose = false
  t.warning = true
end

task :default => :test
