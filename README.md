# Teste Nilo de Automação com Robot Framework

## Instalação
1. Instale a ultima versão estável do Python 3.10.4 (https://www.python.org/downloads/)
2. Adicione o path da instação do Python e de Scrips nas variaveis de ambiente.
3. Instale o Robot Framework.
   A. No cmd digite pip install robotframework e precione enter
   B. Depois: pip install --upgrade robotframework-seleniumlibrary
   C. Por fim: pip install robotframework-faker
4. Opcional: Instale o VSCode com o plugin "Robot Framework Language Server" da Robocorp. 
   Esse plugin permite fazer debug, executando individualmente os cenários.
5. No terminal aberto na mesma pasta que o arquivo "pratice_tests.robot" digite "robot pratice_tests.robot" para executar o teste completo.



##Observações
O cenário 01 é um caso negativo, ele vai retornar como sucedido sempre que não achar o resultado na busca.
O cenário 02 foi interpretado como "verifique se é retornado mensagem de item não existe", mas foi enviado um email no dia da execução do teste para confirmar isso. Talvez seja alterado se necessário.
