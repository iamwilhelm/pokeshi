require 'spec_helper'
require_relative '../../../../apps/web/controllers/sushi/show'

describe Web::Controllers::Sushi::Show do
  let(:action) { Web::Controllers::Sushi::Show.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
