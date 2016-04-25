require 'rails_helper'

describe BlogPost do
  describe 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :share_link }
  end
end
