require "spec_helper"
require "c_f_d_i_generator/components/impuestos"

RSpec.describe CFDIGenerator::Components::Impuestos do

  it { should respond_to(:total_impuestos_retenidos) }
  it { should respond_to(:total_impuestos_trasladados) }
end