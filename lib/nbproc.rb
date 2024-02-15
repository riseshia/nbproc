# frozen_string_literal: true

require_relative "nbproc/version"

require "nbproc/nbproc"

module Nbproc
  class Error < StandardError; end
end

Object.define_method(:nbproc) do |&block|
  proc(&block).isolate
end
