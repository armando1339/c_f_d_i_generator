require 'c_f_d_i_generator/components/component'

module CFDIGenerator
	module Components 
		class CfdiRelacionado < Component

			attr_accessor :uuid 

			validates :uuid, presence: { message: @@presence_message }

			def initilize( attributes = {} )
				super
			end
		end
	end
end