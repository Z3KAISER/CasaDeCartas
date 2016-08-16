Pod::Spec.new do |spec|
  spec.name = "CasaDeCartas"
  spec.version = "0.1.4"
  spec.summary = "A Functional and Reactive Card Stack Collection Framework"
  spec.homepage = "https://github.com/z3kaiser/CasaDeCartas"
  spec.license = { type: 'MIT', file: 'LICENSE' }
  spec.authors = { "Andrew Wilhelm" => "andrewwilhelmex@gmail.com" }
  spec.social_media_url = "http://twitter.com/z3kaiser"

  spec.platform = :ios, "8.4"
  spec.requires_arc = true
  spec.source = { git: "https://github.com/z3kaiser/CasaDeCartas.git", tag: "#{spec.version}", submodules: true }
  spec.source_files = "CasaDeCartas/**/*.{h,swift}"

  spec.dependency "RxSwift", "~> 2.0"
  spec.dependency "RxCocoa", "~> 2.0"
end