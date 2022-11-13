require 'swagger_helper'

RSpec.describe 'products', type: :request do
  path '/products' do
    get('List products') do
      tags 'Products'
      consumes 'application/json'
      parameter name: :q, in: :query,
                type: :object, required: false,
                schema: {
                  type: :object,
                  properties: {
                    category_eq: { type: :integer },
                    name_or_product_category_name_cont: { type: :string }
                  }
                },
                description: 'Object with query filters'

      response(200, 'successful') do
        run_test!
      end
    end
  end
end
