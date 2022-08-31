puts "最初はグー、じゃんけん・・・"

$jankens = ["グー", "チョキ", "パー"]
$judge = {0 => "\nあいこで", 1 => "\nあなたの負けです", 2 => "\nあなたの勝ちです"}
$direction = ["↑", "→", "↓", "←"]


def janken(p)
  com = rand(3)
  result = (p - com + 3)% 3
  puts "あなたの手:#{$jankens[p]},相手の手#{$jankens[com]}\n" + $judge[result]
  
  if result == 0 
    return $nextgame = true
  elsif result == 1 
    puts"\nあっち向いて"
    puts "好きな方向を選んでください"
    puts "0:↑\n1:→\n2:↓\n3:←"
    acchimuiteHoi_c(gets.to_i)
    
  elsif result == 2
    puts"\nあっち向いて"
    puts "好きな方向を選んでください"
    puts "0:↑\n1:→\n2:↓\n3:←"
    acchimuiteHoi_p(gets.to_i)
  end
    
end

def acchimuiteHoi_p(a)
  com_a = rand(4)
  puts "あなたの方向:#{$direction[a]},相手の方向:#{$direction[com_a]}"
  if a == com_a
    puts "あなたの勝ちです。"
    return $nextgame = false
  else
    puts "ハズレです。"
    puts "\n最初はグー"
    return $nextgame = true
  end
end

def acchimuiteHoi_c(a)
  com_a = rand(4)
  puts "あなたの方向:#{$direction[a]},相手の方向:#{$direction[com_a]}"
  if a == com_a
    puts "あなたの負けです。"
    return $nextgame = false
  else
    puts "ハズレです。"
    puts "\n最初はグー"
    return $nextgame = true
  end
end

$nextgame = true
while $nextgame 
  puts "\n好きな数字を選んでください。\n"
  puts "0:グー\n1:チョキ\n2:パー" 
  janken(gets.to_i)
end


