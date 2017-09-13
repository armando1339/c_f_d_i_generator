require "spec_helper"
require "c_f_d_i_generator/components/concepto"

RSpec.describe CFDIGenerator::Components::Concepto do

  it { should respond_to(:clave_prod_serv) }
  it { should respond_to(:no_identificacion) }
  it { should respond_to(:cantidad) }
  it { should respond_to(:clave_unidad) }
  it { should respond_to(:unidad) }
  it { should respond_to(:descripcion) }
  it { should respond_to(:valor_unitario) }
  it { should respond_to(:importe) }
  it { should respond_to(:descuento) }

  let :record { CFDIGenerator::Components::Concepto.new }
  let :presence_error_message { "no puede ser nulo o estar vacio." }
  let :numericality_error_message { "no es un numero." }
  let :inclusion_error_message { "no esta incluido en catalogo." }

  before do 
    record.valid?
  end

  context 'validate presence of' do
    describe '#clave_prod_serv' do
      it { expect(record.errors[:clave_prod_serv]).to include(presence_error_message) }
    end
    describe '#cantidad' do
      it { expect(record.errors[:cantidad]).to include(presence_error_message) }
    end
    describe '#clave_unidad' do
      it { expect(record.errors[:clave_unidad]).to include(presence_error_message) }
    end
    describe '#descripcion' do
      it { expect(record.errors[:descripcion]).to include(presence_error_message) }
    end
    describe '#valor_unitario' do
      it { expect(record.errors[:valor_unitario]).to include(presence_error_message) }
    end
    describe '#importe' do
      it { expect(record.errors[:importe]).to include(presence_error_message) }
    end
  end

  context 'validate numericality of' do
    describe '#clave_prod_serv' do
      it { expect(record.errors[:clave_prod_serv]).to include(numericality_error_message) }
    end
    describe '#cantidad' do
      it { expect(record.errors[:cantidad]).to include(numericality_error_message) }
    end
    describe '#valor_unitario' do
      it { expect(record.errors[:valor_unitario]).to include(numericality_error_message) }
    end
    describe '#importe' do
      it { expect(record.errors[:importe]).to include(numericality_error_message) }
    end
    describe '#descuento' do
      it { expect(record.errors[:descuento]).to include(numericality_error_message) }
    end
  end

  context 'validate inclusion of' do
    describe '#clave_prod_serv' do
      it { expect(record.errors[:clave_prod_serv]).to include(inclusion_error_message) }
    end
    describe '#clave_unidad' do
      it { expect(record.errors[:clave_unidad]).to include(inclusion_error_message) }
    end
  end
end