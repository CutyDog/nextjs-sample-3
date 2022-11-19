makers_hash = {
  'ホンダ' => 'japan',
  'ヤマハ' => 'japan',
  'カワサキ' => 'japan',
  'ハーレーダビッドソン' => 'america',
  'インディアン' => 'america',
  'トライアンフ' => 'england',
  'BMW' => 'germany'
}
makers = makers_hash.map do |name, country|
  Maker.create(name: name, country: country)
end

# create bikes data
bikes_hash = {
  'ホンダ' => 'CB250RS',
  'ヤマハ' => 'YZF-R25',
  'カワサキ' => 'ZRX1200',
  'ハーレーダビッドソン' => 'CVO FLTRXSE',
  'インディアン' => 'スプリングフィールド',
  'トライアンフ' => 'ロケット3 GT',
  'BMW' => 'M1000RR'
}
bikes_hash.each do |maker_name, name|
  maker = Maker.find_by!(name: maker_name)
  Bike.create(name: name, maker_id: maker.id, country: maker.country)
end
