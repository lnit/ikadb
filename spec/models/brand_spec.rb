require 'rails_helper'

RSpec.describe Brand, type: :model do
  describe "初期値" do
    subject { described_class.count }
    it { should == 17 }
  end
end
