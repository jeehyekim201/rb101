require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

LANGUAGE = 'es'

def messages(message, lang='es')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end



def number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end

def operation_to_message(op)
  word =  case op
          when '1'
            messages('adding')
          when '2'
            messages('subtracting')
          when '3'
            messages('multiplying')
          when '4'
            messages('dividing')
          end
  word
end

prompt(messages('welcome'))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name'))
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt(messages('first_number'))
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt(messages('validity_question'))
    end
  end

  number2 = ''
  loop do
    prompt(messages('second_number'))
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt(messages('validity_question'))
    end
  end

  prompt(messages('operator'))

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('choose'))
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt(messages('again?'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages('thankyou'))
