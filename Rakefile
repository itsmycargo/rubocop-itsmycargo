# frozen_string_literal: true

require "bump/tasks"
require "bundler/gem_tasks"
require "rspec/core/rake_task"

Bump.tag_by_default = true
Bump.changelog = true

RSpec::Core::RakeTask.new(:spec)

task default: :spec
