def testar
  return rand(1..6)
end

def main
  puts "Vamos testar a sorte de vocês dois, quem tirar um número maior, ganha!"
  loop do
    puts "\nPressione Enter para lançar o dado ou digite 'sair' para encerrar o programa."
    input = gets.chomp.downcase
    break if input == 'sair'

    if input.empty?
      resultado_jogador1 = testar
      resultado_jogador2 = testar
      puts "O dado do jogador 1 é: #{resultado_jogador1}"
      puts "O dado do jogador 2 é: #{resultado_jogador2}"

      if resultado_jogador1 > resultado_jogador2
        puts "Jogador 1 ganhou!"
      elsif resultado_jogador2 > resultado_jogador1
        puts "Jogador 2 ganhou!"
      else
        puts "Empate!"
      end
    else
      puts "Entrada inválida. Tente novamente."
    end
  end

  puts "Obrigado por jogarem!"
end

main
