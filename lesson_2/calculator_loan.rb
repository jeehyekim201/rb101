require 'yaml'
MESSAGES = YAML.load_file('calculator_loan_messages.yml')

def messages(message, lang='en')
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

loop do
  loan_amount = ''
  loop do
    prompt(messages('loan_amount'))
    loan_amount = Kernel.gets().chomp()

    if number?(loan_amount)
      loan_amount = loan_amount.to_i()
      prompt("Oh, that's not bad. $#{loan_amount}!")
      break
    else
      prompt(messages('validity_question'))
    end
  end

  monthly_interest_rate = ''
  loop do
    prompt(messages('apr'))
    monthly_interest_rate = Kernel.gets().chomp()

    if number?(monthly_interest_rate)
      monthly_interest_rate = monthly_interest_rate.to_f() / 12
      prompt("Ok, that is #{monthly_interest_rate}% per month!")
      break
    else
      prompt(messages('validity_question'))
    end
  end

  loan_duration_in_months = ''
  loop do
    prompt(messages('loan_duration'))
    loan_duration_in_months = Kernel.gets().chomp()

    if number?(loan_duration_in_months)
      loan_duration_in_months = loan_duration_in_months.to_i()
      prompt("Okay, #{loan_duration_in_months} months...
      you will repay in no time!")
      break
    else
      prompt(messages('validity_question'))
    end
  end

  monthly_payment = loan_amount * ((monthly_interest_rate * 0.01) /
  (1 - (1 + (monthly_interest_rate * 0.01))**(-loan_duration_in_months)))
  monthly_payment = monthly_payment.round(2)

  prompt("The monthly payment will be $#{monthly_payment}")

  prompt(messages('again?'))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages('thankyou'))
