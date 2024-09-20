require 'cpf_cnpj'

cpf_valido = false

while !cpf_valido
  puts "\n Informe um CPF"
  cpf = gets.chomp

  if CPF.valid?(cpf)
    cpf_valido = true
    cpf_formatado = CPF.new(cpf).formatted
    puts "O cpf #{cpf_formatado} é válido!"
  else
    cpf_formatado = CPF.new(cpf).formatted
    puts "\n O cpf #{cpf_formatado} é inválido, tente novamente. "
  end
end


