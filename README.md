
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

<h2 align="left">Comandos para Rodar a Aplicação</h2>
<ol>
  <li>🔓 Acessar a VM: Como primeiro passo, é necessário acessar a Máquina Virtual.
    <ol>
      <li>⏯️ Iniciar um terminal PowerShell: Em seguida, inicialize o terminal e navegue até o diretório <code>NIB_challenge</code> para poder seguir os seguintes passos.
        <ol>
          <li><code>docker compose down --rmi all</code>: Derruba o ambiente Docker e remove todas as imagens relacionadas ao projeto.</li>
          <li><code>docker build --tag nib-challenge .</code>: Constrói a imagem Docker com o nome <strong>nib-challenge</strong>.</li>
          <li><code>docker compose up</code>: Inicia os contêineres do Docker definidos no <code>docker-compose.yml</code>.</li>
          <li><code>Invoke-RestMethod -Uri http://localhost:8080/usuario/criar -Method Post -Headers @{"Content-Type"="application/json"} -Body '{"cpfUser": "92712116003", "nomeUser": "teste cpf", "sobrenomeUser": "Fogolin", "telefoneUser": 1234567890, "dataNascimentoUser": "1990-01-01", "planoUser": "Premium", "emailUser": "maria.fogolin@example.com"}'</code>: Realiza uma requisição POST para criar um novo usuário no sistema.</li>
          <li><code>curl http://localhost:8080/usuario/todos</code>: Utiliza o comando <code>curl</code> para listar todos os usuários.</li>
          <li><code>http://localhost:8080/usuario/todos</code>: URL para acessar diretamente todos os usuários cadastrados (utilize no navegador ou em outra ferramenta de requisição HTTP).</li>
          <li><code>Invoke-RestMethod -Uri http://localhost:8080/usuario/criar -Method Post -Headers @{"Content-Type"="application/json"} -Body '{"cpfUser": "18724858048", "nomeUser": "Persistencia dados", "sobrenomeUser": "Nuvem", "telefoneUser": 1234567890, "dataNascimentoUser": "2024-11-04", "planoUser": "Premium", "emailUser": "maria.fogolin@example.com"}'</code>: Realiza uma segunda requisição POST para persistir dados de um novo usuário na nuvem.</li>
        </ol>
      </li>
    </ol>
  </li>
</ol>



<h2 align="left"> 🧑‍🤝‍🧑 Integrantes</h2>
<ul>
  <li> Igor Gabriel Pereira Marcondes <strong>RM 553544 </strong></li>
  <li> Maria Beatriz Reis Fogolin de Godoy <strong>RM 552669 </strong></li>
  <li> Nicholas Pereira Paulo Lima Barbosa <strong>RM 552744 </strong></li>
</ul>
