require 'c_f_d_i_generator/components/component'

module CFDIGenerator
  module Components
    # Class that generate CfdiRelacionados component
    #
    class CfdiRelacionado < Component
      attr_accessor :uuid

      validates :uuid,
                presence: {
                  message: @@presence_message
                }
    end
  end
end
