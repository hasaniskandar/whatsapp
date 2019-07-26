# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/pry-byebug/all/pry-byebug.rbi
#
# pry-byebug-3.6.0
module PryByebug
  def check_file_context(target, e = nil); end
  def current_remote_server; end
  def current_remote_server=(arg0); end
  def file_context?(target); end
  def self.check_file_context(target, e = nil); end
  def self.file_context?(target); end
end
module Byebug
end
class Byebug::PryProcessor < Byebug::CommandProcessor
  def at_breakpoint(breakpoint); end
  def at_end; end
  def at_line; end
  def at_return(_return_value); end
  def bold(*args, &block); end
  def n_hits(breakpoint); end
  def output(*args, &block); end
  def perform(action, options = nil); end
  def perform_backtrace(_options); end
  def perform_down(options); end
  def perform_finish(*arg0); end
  def perform_frame(options); end
  def perform_next(options); end
  def perform_step(options); end
  def perform_up(options); end
  def pry; end
  def pry=(arg0); end
  def resume_pry; end
  def run(&_block); end
  def self.start; end
  extend Forwardable
end
class Pry
  def self.start_with_pry_byebug(target = nil, options = nil); end
  def self.start_without_pry_byebug(target = nil, options = nil); end
end
module PryByebug::Helpers
end
module PryByebug::Helpers::Navigation
  def breakout_navigation(action, options = nil); end
end
class PryByebug::BacktraceCommand < Pry::ClassCommand
  def process; end
  include PryByebug::Helpers::Navigation
end
module PryByebug::Helpers::Multiline
  def check_multiline_context; end
end
class PryByebug::NextCommand < Pry::ClassCommand
  def process; end
  include PryByebug::Helpers::Multiline
  include PryByebug::Helpers::Navigation
end
class PryByebug::StepCommand < Pry::ClassCommand
  def process; end
  include PryByebug::Helpers::Navigation
end
module PryByebug::Helpers::Breakpoints
  def bold_puts(msg); end
  def breakpoints; end
  def current_file; end
  def max_width; end
  def print_breakpoints_header; end
  def print_full_breakpoint(br); end
  def print_short_breakpoint(breakpoint); end
end
class PryByebug::ContinueCommand < Pry::ClassCommand
  def process; end
  include PryByebug::Helpers::Breakpoints
  include PryByebug::Helpers::Navigation
end
class PryByebug::FinishCommand < Pry::ClassCommand
  def process; end
  include PryByebug::Helpers::Navigation
end
class PryByebug::UpCommand < Pry::ClassCommand
  def process; end
  include PryByebug::Helpers::Navigation
end
class PryByebug::DownCommand < Pry::ClassCommand
  def process; end
  include PryByebug::Helpers::Navigation
end
class PryByebug::FrameCommand < Pry::ClassCommand
  def process; end
  include PryByebug::Helpers::Navigation
end
module Pry::Byebug
end
module Pry::Byebug::Breakpoints
  def add_file(file, line, expression = nil); end
  def add_method(method, expression = nil); end
  def breakpoints; end
  def change(id, expression = nil); end
  def change_status(id, enabled = nil); end
  def delete(id); end
  def delete_all; end
  def disable(id); end
  def disable_all; end
  def each(&block); end
  def enable(id); end
  def find_by_id(id); end
  def last; end
  def size; end
  def to_a; end
  def validate_expression(exp); end
  extend Enumerable
  extend Pry::Byebug::Breakpoints
end
class Pry::Byebug::Breakpoints::FileBreakpoint < SimpleDelegator
  def source_code; end
  def to_s; end
end
class Pry::Byebug::Breakpoints::MethodBreakpoint < SimpleDelegator
  def initialize(byebug_bp, method); end
  def source_code; end
  def to_s; end
end
class PryByebug::BreakCommand < Pry::ClassCommand
  def add_breakpoint(place, condition); end
  def new_breakpoint; end
  def option_to_method(option); end
  def options(opt); end
  def print_all; end
  def process; end
  def process_condition; end
  def process_delete; end
  def process_delete_all; end
  def process_disable; end
  def process_disable_all; end
  def process_enable; end
  def process_show; end
  include PryByebug::Helpers::Breakpoints
  include PryByebug::Helpers::Multiline
end
class PryByebug::ExitAllCommand < Pry::Command::ExitAll
  def process; end
end
