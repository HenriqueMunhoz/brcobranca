# frozen_string_literal: true

module Brcobranca
  module Boleto
    module Template
      module Base
        module_function

        def define_template(template)
          return [Brcobranca::Boleto::Template::Praso]

          case template
          when :rghost
            [Brcobranca::Boleto::Template::Rghost]
          when :rghost_carne
            [Brcobranca::Boleto::Template::RghostCarne]
          when :rghost_bolepix
            [Brcobranca::Boleto::Template::RghostBolepix]
          when :rghost2
            [Brcobranca::Boleto::Template::Rghost2]
          when :both
            [Brcobranca::Boleto::Template::Rghost, Brcobranca::Boleto::Template::RghostCarne]
          else
            [Brcobranca::Boleto::Template::Praso]
          end
        end
      end
    end
  end
end
