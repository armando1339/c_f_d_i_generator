require "spec_helper"
require "c_f_d_i_generator/components/parte"

RSpec.describe CFDIGenerator::Components::Parte do

  it { should respond_to(:clave_prod_serv) }
  it { should respond_to(:no_identificacion) }
  it { should respond_to(:cantidad) }
  it { should respond_to(:unidad) }
  it { should respond_to(:descripcion) }
  it { should respond_to(:valor_unitario) }
  it { should respond_to(:importe) }

  let :record { CFDIGenerator::Components::Parte.new }
  let :presence_error_message { "no puede ser nulo o estar vacio." }

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
    describe '#descripcion' do
      it { expect(record.errors[:descripcion]).to include(presence_error_message) }
    end
    describe '#cantidad' do
      it { expect(record.errors[:cantidad]).to include(presence_error_message) }
    end
  end

  context 'validate inclusion of' do
    describe '#clave_prod_serv' do
      it { expect(record.errors[:clave_prod_serv]).to include(inclusion_error_message) }
    end
  end
end