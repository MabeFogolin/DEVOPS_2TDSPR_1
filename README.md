
<h1 align="left"> Challenge Odontoprev: DevOps Tools & Cloud Computing ☁️</h1>
<p align="left">O projeto N.I.B. visa desenvolver um aplicativo que permite aos segurados da Odontoprev monitorar suas rotinas diárias, coletando informações sobre hábitos de saúde e bem-estar. Utilizando modelos de inteligência artificial, o aplicativo prevê a probabilidade de acionamento de sinistros para procedimentos odontológicos mais custosos.</p>

<h2 align="left">Objetivos do Projeto</h2>
<ul>
  <li>📊 <strong>Monitoramento de Rotinas:</strong> Registro das atividades diárias dos usuários. </li>
  <li>🔍 <strong>Identificação de Tendências:</strong> Análise de dados para reconhecer perfis propensos a intervenções de alto custo. </li>
  <li>🔒 <strong>Autenticidade e Confiabilidade:</strong> Verificação cruzada realizada por profissionais de odontologia. </li>
</ul>

<h2 align="left">Tecnologias Utilizadas</h2>
<ul>
  <li>⚙️ <strong>Backend:</strong> Java com Spring. </li>
  <li>🗄️ <strong>Banco de Dados:</strong> Oracle. </li>
  <li>☁️ <strong>Docker container:</strong> Provisionamento de containers docker em máquinas virtuais</li>
  
</ul>

### Etapas e comandos para rodar a aplicação

1. **Acessar a VM**
```bash
   Como primeiro passo, é necessário acessar a Máquina Virtual
```

2. **Iniciar um terminal PowerShell**
```bash
   Em seguida, inicialize o terminal e navegue até o diretório NIB_challenge para poder seguir os próximos passos
```

3. **Comando para derrubar o ambiente Docker e remover todas as imagens construídas para garantir que não haja interferências**

```bash
   docker compose down --rmi all
```


4. **Comando para construir uma imagem docker com o seguinte nome: nib-challenge**

```bash
   docker build --tag nib-challenge .
```


5. **Comando para iniciar os contêineres do Docker definidos no docker-compose.yml**

```bash
  docker compose up
```

6. **Comando para realizar uma requisição POST para criar um novo usuário no sistema**

```bash
  Invoke-RestMethod -Uri http://localhost:8080/usuario/criar -Method Post -Headers @{"Content-Type"="application/json"} -Body '{"cpfUser": "92712116003", "nomeUser": "teste cpf", "sobrenomeUser": "Fogolin", "telefoneUser": 1234567890, "dataNascimentoUser": "1990-01-01", "planoUser": "Premium", "emailUser": "maria.fogolin@example.com"}'
```
***Atenção: Esta requisição gera o erro 409, indicando conflito pois já há um usuário cadastrado no banco de dados com o CPF informado***

7. **Comando para listar todos os usuários**

```bash
  curl http://localhost:8080/usuario/todos
```

8. **Comando para realizar uma segunda requisição POST para persistir dados de um novo usuário na nuvem.**

```bash
  Invoke-RestMethod -Uri http://localhost:8080/usuario/criar -Method Post -Headers @{"Content-Type"="application/json"} -Body '{"cpfUser": "18724858048", "nomeUser": "Persistencia dados", "sobrenomeUser": "Nuvem", "telefoneUser": 1234567890, "dataNascimentoUser": "2024-11-04", "planoUser": "Premium", "emailUser": "maria.fogolin@example.com"}'
```


<h2 align="left"> 🧑‍🤝‍🧑 Integrantes</h2>
<ul>
  <li> Igor Gabriel Pereira Marcondes <strong>RM 553544 </strong></li>
  <li> Maria Beatriz Reis Fogolin de Godoy <strong>RM 552669 </strong></li>
  <li> Nicholas Pereira Paulo Lima Barbosa <strong>RM 552744 </strong></li>
</ul>
