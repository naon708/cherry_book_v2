# NumerOn(ヌメロン) https://www.roomie.jp/2012/07/14669/
class NumerOn
  def judge(cpu, inputs)
    eat = eat_judge(cpu, inputs)
    bite = bite_judge(cpu, inputs)
    puts "EAT: #{eat}, BITE: #{bite}"
  end

  private

  def eat_judge(cpu_numbers, inputs)
    eat_count = 0
    cpu_numbers.each_with_index do |cpu_number, index|
      eat_count += 1 if cpu_number == inputs[index]
    end
    eat_count
  end
  
  def bite_judge(cpu_numbers, inputs)
    bite_count = 0
    cpu_numbers.each_with_index do |cpu_number, index|
      if inputs.include?(cpu_number) && cpu_number != inputs[index]
        bite_count += 1 
      end
    end
    bite_count
  end
end

p cpu = (0..9).to_a.shuffle.slice(0, 3)
inputs = gets.chomp.chars.map(&:to_i)

NumerOn.new.judge(cpu, inputs)
