require 'spec_helper'
describe 'sample_api' do

  context 'with defaults for all parameters' do
    it { should contain_class('sample_api') }
  end
end
