require 'censorius'
require 'yaml'

project.name = 'DemoXcode14OpaqueTypesNoWarning'

application_for :ios, '12.0' do |target|
  target.name = 'DemoXcode14OpaqueTypesNoWarning'
  target.all_configurations.each do |config|
    config.product_bundle_identifier = 'com.igor.demoxcode14opaquetypesnowarning'
  end
end

project.before_save do |generated_project|
  generated_project.sort
  generator = Censorius::UUIDGenerator.new([generated_project])
  generator.generate!
  generator.write_debug_paths unless ENV['CENSORIUS_SPEC_DEBUG'].nil?
end

project.after_save do
  system "rm -rf \"#{project.name}.xcodeproj/xcshareddata/xcschemes\""
end
