# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "opencv-ffi/version"
require "rake"

Gem::Specification.new do |s|
  s.name        = "opencv-ffi"
  s.version     = Opencv::Ffi::VERSION
  s.authors     = ["Aaron Marburg"]
  s.email       = ["aaron.marburg@pg.canterbury.ac.nz"]
  s.homepage    = ""
  s.summary     = %q{Wrapper around OpenCV using FFI}
  s.description = %q{Wrapper around OpenCV using FFI}

  s.rubyforge_project = "opencv-ffi"

  s.files         = `git ls-files`.split("\n")
  s.extensions    = FileList["ext/mkrf_conf.rb"]
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "nice-ffi"
  s.add_dependency "mkrf"
end
