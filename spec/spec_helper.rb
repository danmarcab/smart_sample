require 'simplecov'
require 'codeclimate-test-reporter'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  CodeClimate::TestReporter::Formatter
]

SimpleCov.start do
  add_filter '/spec/'
end

require 'debugger'
require 'smart_sample'

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.color = true
  config.formatter = :documentation
# Run specs in random order to surface order dependencies. If you find an
# order dependency and want to debug it, you can fix the order by providing
# the seed, which is printed after each run.
# --seed 1234
  config.order = 'random'
end
