Temperamento é um convensor de temperatura de linha de comando personalizavel, o usuário pode inserir formulas direto no código, é nescessario conhecimento básico em Lua. 

# Instruções

1. É nescessario ter o interpetrador Lua instalado no sistema

2. Abre o terminal no diretorio 'temperamento' e digite o seguinte comando

```
lua temperamento.lua
```

# Configurar o Temperamento no PATH no Linux

1. Coloque a pasta 'temperamento' no diretorio pessoal

2. Crie um arquivo com estenção sh dentro da pasta 'temperamento' ao lado dos arquivos Lua com o nome 'temperamento'

3. Adcione o seguinte código dentro do arquivo

```
#!/bin/bash

# Obtem o diretório do roteiro atual
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Executa o roteiro Lua
lua "$DIR/temperamento.lua"
```

4. No arquvo 'shrc' adcione o seguinte comando

```
export PATH=$PATH:/home/admin/temperamento
```

Substitua 'admin' pelo nome da pasta de de usuário

5. Agora é so executar o comando

```
temperamento
```
