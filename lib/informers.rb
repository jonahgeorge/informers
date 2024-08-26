# dependencies
require "onnxruntime"
require "tokenizers"

# stdlib
require "io/console"
require "json"
require "open-uri"
require "stringio"
require "uri"

# modules
require_relative "informers/utils/core"
require_relative "informers/utils/hub"
require_relative "informers/utils/math"
require_relative "informers/utils/tensor"
require_relative "informers/configs"
require_relative "informers/env"
require_relative "informers/model"
require_relative "informers/models"
require_relative "informers/tokenizers"
require_relative "informers/pipelines"

module Informers
  class Error < StandardError; end

  class Todo < Error
    def message
      "not implemented yet"
    end
  end
end
