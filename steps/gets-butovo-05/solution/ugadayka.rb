# encoding: utf-8

def attempt_to_guess(number, proba)
  if proba == number # если номер совпал
    abort 'Ура, вы выиграли!' # завершаем программу
  else
  # первый вложенный if, проверка в какую сторону ошибся пользователь
    if proba > number
    puts 'нужно меньше'
    else
      puts 'нужно больше'
    end

    # второй вложенный if – вывод "тепло" или "холодно"
    if (proba - number).abs < 3
      puts 'Тепло'
    else
      puts 'Холодно'
    end
  end
end

number = rand(16)
puts 'Загадано число от 0 до 15, отгадайте какое?'
puts 'У тебя есть три попытки.'

(0..2).each do
  proba = gets.chomp.to_i
  attempt_to_guess(number, proba)
end
puts 'Вы использовали три попытки. Досвидос.'
=begin
proba = gets.chomp.to_i
attempt_to_guess(number, proba)
proba = gets.chomp.to_i
attempt_to_guess(number, proba)
proba = gets.chomp.to_i
attempt_to_guess(number, proba)
=end
=begin
# случайное число, которое будем отгадывать
number = rand(16)

puts 'загадано число от 0 до 15, отгадайте какое?'

# преобразуем то, что ввел пользователь в целое число методом to_i
proba = gets.chomp.to_i

if proba == number # если номер совпал
  abort 'Ура, вы выиграли!' # завершаем программу
else
  # первый вложенный if, проверка в какую сторону ошибся пользователь
  if proba > number
    puts 'нужно меньше'
  else
    puts 'нужно больше'
  end

  # второй вложенный if – вывод "тепло" или "холодно" 
  if (proba - number).abs < 3
    puts 'Тепло'
  else
    puts 'Холодно'
  end
end

# Далее еще 2 раза повторяем тот же самый код от строки 7 до строки 25,
# а затем выводим прощальное сообщение.

# 2 раз
proba = gets.chomp.to_i
if proba == number
  abort 'Ура, вы выиграли!'
else
  if proba > number
    puts 'нужно меньше'
  else
    puts 'нужно больше'
  end

  if (proba - number).abs < 3
    puts 'Тепло'
  else
    puts 'Холодно'
  end
end

# 3 раз
proba = gets.chomp.to_i
if proba == number
  abort 'Ура, вы выиграли!'
else
  if proba > number
    puts 'нужно меньше'
  else
    puts 'нужно больше'
  end

  if (proba - number).abs < 3
    puts 'Тепло'
  else
    puts 'Холодно'
  end
end

# расскажем пользователю, что же было загадано
puts 'В этот раз вам не повезло. Было загадано число ' + number.to_s
=end
