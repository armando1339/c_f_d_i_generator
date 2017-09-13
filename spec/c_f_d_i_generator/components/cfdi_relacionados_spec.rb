require "spec_helper"
require "c_f_d_i_generator/components/cfdi_relacionados"

RSpec.describe CFDIGenerator::Components::CfdiRelacionados do

  it { should respond_to(:tipo_relacion) }

  let :record { CFDIGenerator::Components::CfdiRelacionados.new }
  let :presence_error_message { "no puede ser nulo o estar vacio." }
  let :numericality_error_message { "no es un numero." }
  let :inclusion_error_message { "no esta incluido en catalogo." }

  before do 
    record.valid?
  end

  context 'validate presence of' do
    describe '#tipo_relacion' do
      it { expect(record.errors[:tipo_relacion]).to include(presence_error_message) }
    end
  end

  context 'validate numericality of' do
    describe '#tipo_relacion' do
      it { expect(record.errors[:tipo_relacion]).to include(numericality_error_message) }
    end
  end

  context 'validate inclusion of' do
    describe '#tipo_relacion' do
      it { expect(record.errors[:tipo_relacion]).to include(inclusion_error_message) }
    end
  end
end