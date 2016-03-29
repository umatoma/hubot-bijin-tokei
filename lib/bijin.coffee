# Dependencies
_ = require 'lodash'
util = require 'util'

# Const
BASE_URL = 'http://www.bijint.com/assets/pict'
AREAS =
  '奈良': 'nara'
  '福岡': 'fukuoka'
  '宮崎': 'miyazaki'
  '岡山': 'okayama'
  '茨城': 'ibaraki'
  '山口': 'yamaguchi'
  '新潟': 'niigata'
  '宮城': 'sendai'
  '京都': 'kyoto'
  '神奈川': 'kanagawa'
  '沖縄': 'okinawa'
  '福井': 'fukui'
  '徳島': 'tokushima'
  '長野': 'nagano'
  '東京': 'tokyo'
  '栃木': 'tochigi'
  '青森': 'aomori'
  '鹿児島': 'kagoshima'
  '愛知': 'nagoya'
  '岩手': 'iwate'
  '埼玉': 'saitama'
  '広島': 'hiroshima'
  '山梨': 'yamanashi'
  '佐賀': 'saga'
  '群馬': 'gunma'
  '大阪': 'osaka'
  '秋田': 'akita'
  '香川': 'kagawa'
  '長崎': 'nagasaki'
  '北海道': 'hokkaido'
  '静岡': 'shizuoka'
  '石川': 'kanazawa'
  '千葉': 'chiba'
  '兵庫': 'kobe'
  '鳥取': 'tottori'
  '熊本': 'kumamoto'
  'ジュニア時計': 'junior2'
  '早稲田スタイル時計': 'wasedastyle'
  'キッズ時計': 'kids'
  'マッチョ時計 for ラグビー': 'macho'
  '十勝キッズ時計': 'tokachi-kids02'
  'マスク美人': 'mask-bijin'
  'ぽちゃカワ時計': 'pochacawa'
  'パナホーム兵庫ファミリー時計': 'panahome-hyogo'
  'VIVI': 'vivi'
  '美男時計': 'binan'
  '美魔女時計': 'bimajo'
  '美人時計全国版2012': '2012jp'
  'ヘアスタイル時計': 'hairstyle'
  '美人時計全国版2013': '2013jp'
  '美人時計全国版2011': '2011jp'
  'F・O・インターナショナル x キッズ時計': 'kids-fo'
  'Photo studio x キッズ時計': 'kids-photostudio'
  'BABYDOLL x I LOVE mama x Primama x キッズ時計': 'kids-babydoll'
  'サーキット時計': 'cc'
  'SARA': 'sara'
  '美男時計（鹿児島）': 'binan-kagoshima'
  '美男時計 in 韓流ぴあ': 'binan_hanryupia'
  '美男時計（京都）': 'binan-kyoto'
  'メガネ時計': 'megane'
  '花嫁時計': 'hanayome'
  'Thailand': 'thailand'
  'Taiwan': 'taiwan'
  'Hawaii': 'hawaii'
  'Jakarta': 'jakarta'

class BijinTokei
  @getAt: (time) ->
    area = _.sample AREAS
    util.format '%s/%s/pc/%s.jpg', BASE_URL, area, time

  @getAtByArea: (time, area) ->
    if _.has AREAS, area
      util.format '%s/%s/pc/%s.jpg', BASE_URL, AREAS[area], time
    else if _.includes AREAS, area
      util.format '%s/%s/pc/%s.jpg', BASE_URL, area, time
    else
      null


module.exports = BijinTokei