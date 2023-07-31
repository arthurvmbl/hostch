# HOSTCH
Script simples em bash com a finalidade de automatizar o processo de descoberta e inserção de hostnames (**/etc/hosts**) no sistema linux.
O programa tem como foco CTFs no geral. Nos prints abaixo, utilizei máquina 'Pilgrimage' do HackTheBox como exemplo:

![img1.png]

![img2.png]

**Modo de uso:**
`chmod +x hostch.sh`
`sudo ./hostch.sh <IP>`

**Modo de instalação:**
`chmod +x install.sh`
`sudo ./install.sh <IP>`
*Agora é só usar diretamente de qualquer lugar do sistema.*

## Como funciona?

- Através de um request to curl descobrimos a localização que o IP está convertendo.
- Através de um regex, separa tudo que está entre '**/dominio.com/**' para ser o novo domínio e manda para um arquivo temporário chamado "dom".
- Adiciona o primeiro primeiro argumento (IP) um TAB e o conteúdo de "dom" com o novo nome de host na última linha de /etc/hosts. 
- Printa o endereço disponível na tela e remove o arquivo temporário "dom".
