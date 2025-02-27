module Informers
  module Backends
    module Onnx
      def self.device_to_execution_providers(device)
        case device&.to_s
        when "cpu", nil
          []
        when "cuda"
          ["CUDAExecutionProvider"]
        when "coreml"
          ["CoreMLExecutionProvider"]
        else
          supported_devices = ["cpu", "cuda", "coreml"]
          raise ArgumentError, "Unsupported device: #{device}. Should be one of: #{supported_devices.join(", ")}"
        end
      end
    end
  end
end
