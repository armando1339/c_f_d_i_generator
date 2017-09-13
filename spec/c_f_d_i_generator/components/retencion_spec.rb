require "spec_helper"
require "c_f_d_i_generator/components/retencion"

RSpec.describe CFDIGenerator::Components::Retencion do

  it { should respond_to(:impuesto) }
  it { should respond_to(:importe) }

  let :record { CFDIGenerator::Components::Retencion.new }
  let :presence_error_message { "no puede ser nulo o estar vacio." }
  let :numericality_error_message { "no es un numero." }
  let :inclusion_error_message { "no esta incluido en catalogo." }

  before do 
    record.valid?
  end

  context 'validate presence of' do
    describe '#impuesto' do
      it { expect(record.errors[:impuesto]).to include(presence_error_message) }
    end
    describe '#importe' do
      it { expect(record.errors[:importe]).to include(presence_error_message) }
    end
  end

  context 'validate numericality of' do
    describe '#importe' do
      it { expect(record.errors[:importe]).to include(numericality_error_message) }
    end
  end

  context 'validate inclusion of' do
    describe '#impuesto' do
      it { expect(record.errors[:impuesto]).to include(inclusion_error_message) }
    end
  end
end