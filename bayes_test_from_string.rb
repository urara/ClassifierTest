#encoding: utf-8
require './naive_bayes'
require 'pp'

b = NaiveBayes.new(["good", "bad"])

goodData = open("train/good_yamato.txt","r+").read
badData = open("train/bad_yamato.txt","r+").read

b.train("good", goodData)

b.train("bad", badData)

text ="ミニキャブ・ミーブのボディーには、ネコロジーのシンボルの葉や、ネコロジーのロゴマーク、EVであることを伝える図柄をあしらい、環境配慮を訴える。ネコロジーでは「使わない（車両台数の抑制）」「使うならエコ（低公害な集配車両の導入）」「使い方（エコドライブの推進、走行距離の短縮）」の3つの戦略を展開している。" 


pp b.probabilities(text)
puts "text > " + b.classify(text)
puts "hoge"

