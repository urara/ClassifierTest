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

=begin

text = " The woman had six other children before the set of eight, which were only the second set of octuplets recorded in the U.S. The babies' grandfather said Friday that his daughter wanted one more child and didn't expect this to happen. Kaiser Permanente's Bellflower Medical Center reports that all is well with the mother and children. Seven babies are breathing unassisted, and one is receiving assisted oxygen through a tube in the nose. Seven are being tube-fed donated breast milk."

text2 = "The online user-generated encyclopaedia Wikipedia is considering a radical change to how it is run. It is proposing a review of the rules, that would see revisions being approved before they were added to the site. The proposal comes after edits of the pages of Senators Robert Byrd and Edward Kennedy gave the false impression both had died. The editing change has proved controversial and sparked a row among the site's editors. Wikipedia's founder, Jimmy Wales, is proposing a system of flagged revisions, which would mean any changes made by a new or unknown user would have to be approved by one of the site's editors, before the changes were published."

text3 = "Man Utd extend their lead at the top of the Premier League as Cristiano Ronaldo's penalty secures a 1-0 win over Everton."

text4 = "Smartphones drive mobile markets There is no doubt that 2008 was the year of the smartphone. The last 12 months has seen the launch of iconic devices such as the iPhone 3G, Google G1, Blackberry Storm and Nokia N97. It also saw the emergence of the electronic ecosystems needed to get the most out of such handsets. But all is not rosy in the smartphone garden. The popularity of these devices has brought to light several problems that look set to become acute in 2009."

text5 = " NEW YORK, Feb 1 (Reuters) - Canadian National Railway (CNR.TO) closed a deal on Saturday to buy the principal lines of Elgin, Joliet & Eastern Railway Co from United States Steel Corp (X.N), the two companies said on Sunday. Canadian National agreed in 2007 to purchase the EJ&E from U.S. Steel as part of a plan to route more freight trains around Chicago, where they face lengthy delays in the congested rail hub."

text6 = " Michael Phelps  may have won a record eight gold medals during the  2008 Summer Olympics in Beijing, but now he’s gaining notoriety for a less lofty achievement after a photo of the swimmer allegedly smoking marijuana from a bong was published in the United Kingdom’s News of the World, the  New York Daily News  reported. Phelps said yesterday he was sorry for his actions, issuing a public apology."

text7 = "Clickable is debuting version 2.0 of its search advertising management suite today, adding to the software a slew of features that should make it easier for small and medium-sized businesses to stay on top of online marketing campaigns held across a variety of advertising networks such as Google, Yahoo and MSN. While it was already possible for Clickable users to import different accounts in order to manage their campaigns from an interface designed to make them more intuitive and effective, Clickable Pro 2.0 now enables them to consolidate management of multiple search advertising campaigns across advertising networks from one central location. To achieve this, Clickable has added features like bulk editing and filtering of keywords which allow agencies and advertisers to rapidly search, edit and export high volumes of keywords across all advertising networks and accounts, as well as a recommendation engine that should allow advertisers to make search campaigns more effective."

pp b.probabilities(text)
puts "text > " + b.classify(text)
puts
pp b.probabilities(text2)
puts "text2 > " + b.classify(text2)

prob2 = b.probabilities(text2)
pp b.probabilities(text2)
puts "text2 > " + b.classify(text2)

puts
pp b.probabilities(text3)
puts "text3 > " + b.classify(text3)
puts
pp b.probabilities(text4)
puts "text4 > " + b.classify(text4)

prob4 = b.probabilities(text4)
pp b.probabilities(text4)
puts "text4 > " + b.classify(text4)


puts
pp b.probabilities(text5)
puts "text5 > " + b.classify(text5)
puts

prob6 = b.probabilities(text6)
pp b.probabilities(text6)
puts "text6 > " + b.classify(text6)

puts
prob7 = b.probabilities(text7)
pp b.probabilities(text7)
puts "text7 > " + b.classify(text7)

puts "text7 > " + b.classify(text7)
=end
