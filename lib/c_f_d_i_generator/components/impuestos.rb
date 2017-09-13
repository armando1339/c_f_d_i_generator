require 'c_f_d_i_generator/components/component'

module CFDIGenerator
  module Components
    # Class that generate Impuestos component
    #
    class Impuestos < Component
      attr_accessor :total_impuestos_retenidos, 
                    :total_impuestos_trasladados
    end
  end
end