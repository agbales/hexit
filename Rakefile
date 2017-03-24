require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs = ["lib"]
  t.test_files = FileList['specs/*_spec.rb']
end

task default: :test
