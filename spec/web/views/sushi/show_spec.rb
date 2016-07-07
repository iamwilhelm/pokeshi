require 'spec_helper'
require_relative '../../../../apps/web/views/sushi/show'

describe Web::Views::Sushi::Show do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/sushi/show.html.erb') }
  let(:view)      { Web::Views::Sushi::Show.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
