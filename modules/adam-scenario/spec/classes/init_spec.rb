require 'spec_helper'
describe 'scenario' do

  context 'with defaults for all parameters' do
    it { should contain_class('scenario') }
  end
end
