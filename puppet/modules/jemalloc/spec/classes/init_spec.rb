require 'spec_helper'
describe 'jemalloc' do

  context 'with defaults for all parameters' do
    it { should contain_class('jemalloc') }
  end
end
