$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

task :build do
  system "gem build nuget_versions.gemspec"
end

task :release => :build do
  system "gem push nuget_versions-#{File.read("VERSION").strip}"
end
