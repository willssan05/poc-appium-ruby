#encoding: utf-8

Dado(/^que eu esteja no site do google para criar um e\-mail$/) do
  @selenium_driver = @appium_driver.start_driver
  @selenium_driver.get("https://accounts.google.com/signup/v2/webcreateaccount?hl=pt-BR&flowName=GlifWebSignIn&flowEntry=SignUp")   
end                                                                                           
                                                                                              
Quando(/^preencho todos os campos do formulario e clico no botão próxima etapa\.$/) do |table| 
  @nome = table.rows_hash['Nome']
  @sobrenome = table.rows_hash['Sobrenome']
  @usuario = table.rows_hash['usuário']
  @senha = table.rows_hash['senha']
  @confirmar_senha = table.rows_hash['confirmarSenha']

  @cadastro = CadastroPage.new
  @cadastro.realizar_cadastro(@nome, @sobrenome, @usuario, @senha, @confirmar_senha)
  #@driver.find_element(:name,"Passwd").send_keys(@senha)   
  #@driver.find_element(:name,"ConfirmPasswd").send_keys(@confirmar_senha)
  #@driver.find_element(:class,"CwaK9").click

  sleep(10)                                                                                          
end                                                                                           
                                                                                              
Então(/^eu vejo a próxima tela para Verifique seu número de telefone$/) do                    
  @mensagem = $driver.find_element(:xpath,"//h1[@class='sfYUmb']")
  expect(@mensagem.text).to eql 'Verifique seu número de telefone'
  #@selenium_driver.quit     
end
                                                                                         