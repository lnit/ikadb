namespace :record do
  desc "ブキのスペシャル減少率を更新"
  task update_loss_special_rate: :environment do
    names_75p = [
      "スプラシューターコラボ",
      "オクタシューター レプリカ",
      ".96ガロンデコ",
      "ノヴァブラスターネオ",
      "ダイナモローラー",
      "ダイナモローラーテスラ",
      "スプラチャージャー",
      "ヒーローチャージャー レプリカ",
      "ヒーローチャージャー レプリカ",
      "スプラスコープ",
    ]
    names_60p = [
      "わかばシューター",
      ".52ガロン",
      "ノヴァブラスター",
      "ホットブラスターカスタム",
      "L3リールガンD",
      "カーボンローラー",
      "スプラローラーコラボ",
      "ヒッセン",
      "スプラチャージャーワカメ",
      "スプラスコープワカメ",
      "リッター3K",
      "リッター3Kカスタム",
      "3Kスコープ",
      "3Kスコープカスタム",
      "スプラスピナーコラボ",
      "バレルスピナーデコ",
    ]

    p "start update loss_special_rate: 75%"
    weapons_75p = Weapon.where(name: names_75p)
    p weapons_75p.pluck(:name)
    p weapons_75p.update_all(loss_special_rate: 75)

    p "start update loss_special_rate: 60%"
    weapons_60p = Weapon.where(name: names_60p)
    p weapons_60p.pluck(:name)
    p weapons_60p.update_all(loss_special_rate: 60)

    p "start update loss_special_rate: 40%"
    weapons_40p = Weapon.where.not(name: names_75p + names_60p)
    p weapons_40p.pluck(:name)
    p weapons_40p.update_all(loss_special_rate: 40)

    p "finished."
  end
end
