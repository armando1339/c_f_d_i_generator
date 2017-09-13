require 'c_f_d_i_generator/components/component'

module CFDIGenerator
  module Components
    # Class that generate CfdiRelacionados component
    #
    class CfdiRelacionados < Component
      attr_accessor :tipo_relacion

      validates :tipo_relacion,
                presence: { message: @@presence_message },
                numericality: { message: @@numericality_message },
                inclusion: {
                  in: RELATIONSHIP_TYPE,
                  message: @@inclusion_message
                }
    end
  end
end
