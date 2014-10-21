task :default => :ts

task :test do
	sh "ruby -I. tests/tc_numcomp.rb"
end

task :ts do
	sh "ruby -I. tests/tc_numcomp.rb -n /to_s/"
end
