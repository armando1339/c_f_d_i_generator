require 'active_model'
require 'c_f_d_i_generator/components/catalogs'
require 'c_f_d_i_generator/components/schemes'

module CFDIGenerator
  module Components
    # Class father for all components
    #
    class Component
      # Including ActiveModel for Validations.
      #
      include ActiveModel::Validations

      # Including catalogs module for Validations
      #
      include CFDIGenerator::Components::Catalogs

      # Including schemas for build diferent components
      #
      include CFDIGenerator::Components::Schemes

      # DESCRIPTION: Definition of variables for errors.
      #
      @@presence_message = 'no puede ser nulo o estar vacio.'
      @@numericality_message = 'no es un numero.'
      @@inclusion_message = 'no esta incluido en catalogo.'

      # =>
      #
      def initialize(attributes = {})
        attributes.each_pair do |key, value|
          instance_variable_set("@#{key}", value)
        end
      end

      # In accordance with the validations, verifies that the component is valid
      #
      def component_is_valid?
        valid?
      end

      # Returns a hash with all the errors that the validation throws
      # returns false if it isn't
      #
      def component_errors
        component_is_valid? ? false : errors.messages
      end

      # Biuld component like a hash if it's valid,
      # returns false if it isn't
      #
      def component_to_hash
        component_is_valid? ? build_hash_component : false
      end

      private

      # Build the component as a hash according to the defined schema
      #
      def build_hash_component
        scheme = {}
        SCHEMES[model_name.singular].each do |key, value|
          if attribute_exists_and_is_not_blank?(value)
            scheme[key] = instance_variable_get("@#{value}")
          end
        end
        scheme
      end

      # Verifies that an attribute exists in the instance and it isn't blank
      #
      def attibute_exists_and_is_not_blank?(attribute)
        respond_to?(attribute) && !instance_variable_get("@#{attribute}").blank?
      end
    end
  end
end
