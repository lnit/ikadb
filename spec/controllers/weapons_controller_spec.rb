require 'rails_helper'

RSpec.describe WeaponsController, type: :controller do
  render_views
  describe "GET index" do
    def res
      get :index, format: :json
      JSON.parse(response.body)
    end

    describe "返却される情報" do
      subject { res[0] }
      its(["name"]) { is_expected.to eq "わかばシューター" }

      describe "main_weapon" do
        subject { super()["main_weapon"] }
        its(["type_name"]) { is_expected.to eq "シューター" }
        its(["spec1"]) { is_expected.to eq 32 }
        its(["spec2"]) { is_expected.to eq 32 }
        its(["spec3"]) { is_expected.to eq 75 }
      end

      describe "sub_weapon" do
        subject { super()["sub_weapon"] }
        its(["name"]) { is_expected.to eq "スプラッシュボム" }
      end

      describe "special_weapon" do
        subject { super()["special_weapon"] }
        its(["name"]) { is_expected.to eq "バリア" }
      end
    end

    describe "ブキ種別の並び" do
      subject { res.map{|w| w["main_weapon"]["type_name"]}.uniq }
      it { is_expected.to eq ["シューター", "ブラスター", "チャージャー", "ローラー", "スロッシャー", "スピナー"] }
    end

    describe "同じブキ種別の場合のメインウェポンのソート" do
      subject { res.map{|w| w["name"]}.select{|w| w =~ /リールガン/} }
      it { is_expected.to eq ["L3リールガン", "L3リールガンD", "H3リールガン", "H3リールガンD"] }
    end
  end
end
