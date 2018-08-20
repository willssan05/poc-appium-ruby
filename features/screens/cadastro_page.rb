class CadastroPage < BaseScreen
    #O método abaixo eu criei uma hash com várias variáveis recebendo o elemento mapeado da tela.
    
    
      def elementos_do_cadastro
        {
          nome: 'firstName',
          sobrenome: 'lastName',
          usuario: 'username',
          senha: "//input[@name='Passwd']",
          confisenha: "//input[@name='ConfirmPasswd']"
        }
      end
    
    #Criei um método para fazer cadastro passando os métodos da classe "BaseScreen" passando o elemento mapeado e a variável e passando o valor.Onde preencho o e-mail, senha e clico no logar.
      def realizar_cadastro(nome, sobrenome, usuario, senhausuario, confsenhausuario)
        send_keys_id elementos_do_cadastro[:nome], nome
        send_keys_id elementos_do_cadastro[:sobrenome], sobrenome
        @driver.find_element(:id,"username").clear
        send_keys_id elementos_do_cadastro[:usuario], usuario
        send_keys_xpath elementos_do_cadastro[:senha], senhausuario
        send_keys_xpath elementos_do_cadastro[:confisenha], confsenhausuario
        @driver.find_element(:class,"CwaK9").click
      end
    end