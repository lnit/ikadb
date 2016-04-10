require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the WeaponsHelper. For example:
#
# describe WeaponsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe WeaponsHelper, type: :helper do
  describe "sub_weapon_columns_for_select" do
    subject { helper.sub_weapon_columns_for_select.gsub(/<.*?>/,"").split }
    it do
      is_expected.to eq [
        "スプラッシュボム",
        "キューバンボム",
        "クイックボム",
        "チェイスボム",
        "ポイントセンサー",
        "トラップ",
        "スプリンクラー",
        "ジャンプビーコン",
        "スプラッシュシールド",
        "ポイズンボール",
      ]
    end
  end
end
