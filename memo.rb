require "csv"
while true
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
    memo_type = gets.to_i
 
    if memo_type == 1
        puts "拡張子を除いたファイル名を入力してください"
        file_name = gets.chomp
    
        puts "メモしたい内容を記入してください"
        puts "完了したらCtrl+Dを押下してください"
    
        memo = gets.chomp
    
        CSV.open("#{file_name}.csv","w") do |content|
            content << ["#{memo}"]
        end
        break
    elsif memo_type == 2
        puts "拡張子を除いたファイル名を入力してください"
        file_name = gets.chomp
    
        puts "追記したい内容を記入してください"
        puts "完了したらCtrl+Dを押下してください"
    
        memo = gets
    
        CSV.open("#{file_name}.csv","a") do |content|
            content << ["#{memo}"]
        end
        break
    else
        puts "1or2を入力してください"
    end
end