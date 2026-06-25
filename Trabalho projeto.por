programa
{
    inclua biblioteca Util --> aleatorio

    funcao inicio()
    {
        inteiro vJog, vFen, atqJog, defJog, atqFen, defFen, dano, acao
        inteiro rodada = 0
        inteiro renasceu = 0

        vJog = 10
        vFen = 12

        escreva("\n--- LUTA: VOCÊ VS FÊNIX ---")
        escreva("\nSua vida: ", vJog)
        escreva("\nVida da Fênix: ", vFen)

        enquanto (vJog > 0 e vFen > 0)
        {
            rodada = rodada + 1
            escreva("\n\n===== RODADA ", rodada, " =====")

            faca
            {
                escreva("\nEscolha: 1 - Atacar | 2 - Defender: ")
                leia(acao)
            } enquanto (acao != 1 e acao != 2)

            limpa()

            se (acao == 1)
            {
                atqJog = aleatorio.sorteia(1, 10)
                defFen = aleatorio.sorteia(1, 8)

                se (atqJog > defFen)
                {
                    dano = 1
                    se (atqJog >= 9) dano = 2
                    escreva("\nVocê acertou! Dano: ", dano)
                    vFen = vFen - dano
                }
                senao
                {
                    escreva("\nEla bloqueou o golpe!")
                }

                se (vFen > 0)
                {
                    atqFen = aleatorio.sorteia(1, 11)
                    defJog = aleatorio.sorteia(1, 7)
                    se (atqFen > defJog)
                    {
                        dano = 1
                        se (atqFen >= 10) dano = 2
                        escreva("\nA Fênix ataca com fogo! Dano: ", dano)
                        vJog = vJog - dano
                    }
                    senao
                    {
                        escreva("\nVocê defendeu o ataque!")
                    }
                }
            }
            senao
            {
                escreva("\nVocê se prepara para defender...")
                atqFen = aleatorio.sorteia(1, 11)
                defJog = aleatorio.sorteia(1, 9)

                se (atqFen > defJog)
                {
                    dano = 1
                    escreva("\nO calor passou pela defesa! Dano: ", dano)
                    vJog = vJog - dano
                }
                senao
                {
                    escreva("\nDefesa perfeita! Você contra-ataca!")
                    vFen = vFen - 1
                }
            }

            se (vFen <= 0 e renasceu == 0)
            {
                escreva("\n\nA FÊNIX EXPLODE EM CHAMAS E RENASCE!")
                escreva("\nEla retorna com 6 pontos de vida!")
                vFen = 6
                renasceu = 1
            }

            escreva("\nSua vida: ", vJog)
            escreva("\nVida da Fênix: ", vFen)
        }

        escreva("\n\n=== FIM DA LUTA ===")
        se (vJog <= 0)
        {
            escreva("\nVocê foi derrotado pela Fênix!")
        }
        senao
        {
            escreva("\nParabéns! Você venceu a Fênix de verdade!")
        }
    }
}