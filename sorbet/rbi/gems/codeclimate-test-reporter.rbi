# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/codeclimate-test-reporter/all/codeclimate-test-reporter.rbi
#
# codeclimate-test-reporter-1.0.7
module CodeClimate
end
module CodeClimate::TestReporter
  def self.ci_service_data; end
  def self.configuration; end
  def self.configure; end
  def self.configured_branch; end
  def self.current_branch; end
  def self.environment_variable_set?; end
  def self.logger; end
  def self.run(results); end
  def self.run?; end
  def self.run_on_current_branch?; end
  def self.start; end
  def self.tddium?; end
end
class CodeClimate::TestReporter::CalculateBlob
  def blob_id; end
  def calculate_with_file; end
  def calculate_with_git; end
  def initialize(file_path); end
end
class CodeClimate::TestReporter::Client
  def batch_post_results(files); end
  def ca_file; end
  def compress(str); end
  def host; end
  def http_client(uri); end
  def post_results(result); end
end
class CodeClimate::TestReporter::PostResults
  def initialize(results); end
  def post; end
  def write_to_file?; end
end
class CodeClimate::TestReporter::ShortenFilename
  def apply_prefix(filename); end
  def initialize(filename); end
  def short_filename; end
end
class CodeClimate::TestReporter::WebMockMessage
  def instructions; end
  def library_name; end
end
class CodeClimate::TestReporter::VCRMessage
  def instructions; end
  def library_name; end
end
class CodeClimate::TestReporter::ExceptionMessage
  def exception_class; end
  def http_stubbing_exception; end
  def initialize(exception); end
  def message; end
end
class CodeClimate::TestReporter::InvalidPayload < StandardError
end
class CodeClimate::TestReporter::PayloadValidator
  def commit_sha; end
  def commit_sha_from_ci_service; end
  def commit_sha_from_git; end
  def committed_at; end
  def initialize(payload); end
  def run_at; end
  def self.validate(payload); end
  def source_files?; end
  def valid_source_file?(file); end
  def valid_source_files?; end
  def validate; end
end
class CodeClimate::TestReporter::Formatter
  def format(results); end
  def merge_results(results); end
  def partial?; end
  def round(numeric, precision); end
  def to_payload(result); end
end
class CodeClimate::TestReporter::Configuration
  def branch; end
  def branch=(arg0); end
  def default_logger; end
  def git_dir; end
  def git_dir=(arg0); end
  def gzip_request; end
  def gzip_request=(arg0); end
  def initialize; end
  def logger; end
  def logger=(arg0); end
  def path_prefix; end
  def path_prefix=(arg0); end
  def profile; end
  def profile=(arg0); end
  def skip_token; end
  def timeout; end
  def timeout=(arg0); end
end
class CodeClimate::TestReporter::Git
  def self.branch_from_git; end
  def self.branch_from_git_or_ci; end
  def self.clean_git_branch; end
  def self.clean_service_branch; end
  def self.committed_at_from_ci; end
  def self.committed_at_from_git; end
  def self.committed_at_from_git_or_ci; end
  def self.configured_git_dir; end
  def self.git(command); end
  def self.git_dir; end
  def self.head_from_ci; end
  def self.head_from_git; end
  def self.head_from_git_or_ci; end
  def self.info; end
  def self.rails_git_dir_present?; end
end
class CodeClimate::TestReporter::Ci
  def self.service_data(env = nil); end
end
