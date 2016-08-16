Pod::Spec.new do |spec|
  spec.name = "CasaDeCartas"
  spec.version = "0.2.0"
  spec.summary = "A functional and reacive card stack collection"
  spec.homepage = "https://github.com/z3kaiser/CasaDeCartas"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Your Name" => "your-email@example.com" }
  spec.social_media_url = "http://twitter.com/z3kaiser"

  spec.platform = :ios, "9.1"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/z3kaiser/CasaDeCartas.git", tag: "v#{spec.version}", submodules: true }
  spec.source_files = "CasaDeCartas/**/*.{h,swift}"

  spec.dependency "RxSwift", "~> 2.0"
  spec.dependency "RxCocoa", "~> 2.0"
end