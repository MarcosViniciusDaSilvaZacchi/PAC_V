# CENTRO UNIVERSITÁRIO CATÓLICA DE SANTA CATARINA

## ENGENHARIA DE SOFTWARE

### CAMPUS JOINVILLE



**YAN CARLOS FARIAS**
**MARCOS VINICIUS DA SILVA ZACCHI**


# RELATÓRIO FINAL DE PROJETO DE APLICAÇÃO COMUNITÁRIA (PAC EXTENSIONISTA)

## PLATAFORMA EDUCACIONAL E DE APOIO AO IMIGRANTE CIDADÃO (PORTAL IMIGRANTE CIDADÃO)





**JOINVILLE – SC**
**SETEMBRO DE 2026**

---

### FICHA DE IDENTIFICAÇÃO E APROVAÇÃO

**RELATÓRIO DO PAC EXTENSIONISTA** apresentado como requisito parcial de avaliação na disciplina de Projeto de Aplicação Comunitária (PAC Extensionista) nos cursos de graduação em Engenharia de Software / Sistemas de Informação do Centro Universitário Católica de Santa Catarina (Campus Joinville).

**Orientador / Professor Responsável:** Prof. Me. Rogério Elias da Cunha
**Organização Parceira / Cliente:** Projeto de Extensão Imigrante Cidadão – Católica SC / FERJ
**Coordenadora Responsável no Parceiro:** Profª. Dra. Glaci Gurgacz
**Data de Aprovação:** 18 de setembro de 2026


---

**Prof. Me. Rogério Elias da Cunha**
Professor Responsável / Avaliador


---

**Profª. Dra. Glaci Gurgacz**
Coordenadora do Projeto de Extensão Parceiro

---

## SUMÁRIO

1. [INTRODUÇÃO](#1-introdução)
2. [DESCRIÇÃO DO PÚBLICO BENEFICIADO PELAS AÇÕES DE EXTENSÃO](#2-descrição-do-público-beneficiado-pelas-ações-de-extensão)
3. [OBJETIVOS](#3-objetivos)
   - 3.1 [Objetivo Geral](#31-objetivo-geral)
   - 3.2 [Objetivos Específicos](#32-objetivos-específicos)
4. [DESCRIÇÃO DAS PRINCIPAIS ATIVIDADES REALIZADAS](#4-descrição-das-principais-atividades-realizadas)
   - 4.1 [Ambiente Único e Centralizado de Distribuição de Materiais Didáticos em PDF](#41-ambiente-único-e-centralizado-de-distribuição-de-materiais-didáticos-em-pdf)
   - 4.2 [Estruturação de Perfis de Acesso e Gerenciamento de Turmas e Usuários](#42-estruturação-de-perfis-de-acesso-e-gerenciamento-de-turmas-e-usuários)
   - 4.3 [Disponibilização Digital e Acessibilidade da Cartilha Informativa](#43-disponibilização-digital-e-acessibilidade-da-cartilha-informativa)
   - 4.4 [Processo Ágil, Arquitetura de Software e Prototipação de Alta Fidelidade](#44-processo-ágil-arquitetura-de-software-e-prototipação-de-alta-fidelidade)
5. [AVALIAÇÃO DO PROJETO PELO PÚBLICO BENEFICIADO](#5-avaliação-do-projeto-pelo-público-beneficiado)
6. [CONSIDERAÇÕES FINAIS – AUTOAVALIAÇÃO DO PAC EXTENSIONISTA](#6-considerações-finais--autoavaliação-do-pac-extensionista)
7. [REFERÊNCIAS](#7-referências)
8. [APÊNDICES](#8-apêndices)
   - [Apêndice A – Matriz de Requisitos Funcionais (RF) e Não Funcionais (RNF)](#apêndice-a--matriz-de-requisitos-funcionais-rf-e-não-funcionais-rnf)
   - [Apêndice B – Modelagem Arquitetural C4 (Contexto e Contêiner)](#apêndice-b--modelagem-arquitetural-c4-contexto-e-contêiner)
   - [Apêndice C – Diagrama Entidade-Relacionamento (DER Relacional)](#apêndice-c--diagrama-entidade-relacionamento-der-relacional)
   - [Apêndice D – Protótipo de Alta Fidelidade no Figma (Telas e Links)](#apêndice-d--protótipo-de-alta-fidelidade-no-figma-telas-e-links)
9. [ANEXOS](#9-anexos)
   - [Anexo A – Dados Cadastrais Institucionais da Entidade Parceira (FERJ)](#anexo-a--dados-cadastrais-institucionais-da-entidade-parceira-ferj)

---

## 1. INTRODUÇÃO

O fenômeno da migração internacional contemporânea tem apresentado expressivo crescimento no Brasil, trazendo para o município de Joinville famílias e trabalhadores oriundos de nações como Venezuela, Haiti, Paquistão e Cuba, motivados por crises humanitárias, políticas e socioeconômicas. Ao chegarem ao país, a principal barreira imediata enfrentada para a conquista da cidadania, obtenção de documentação regular e inserção digna no mercado formal de trabalho reside no domínio da Língua Portuguesa.

Sensível a essa realidade comunitária, o Centro Universitário Católica de Santa Catarina desenvolve, no campus de Joinville, o **Projeto de Extensão Imigrante Cidadão**, liderado pela Profª. Dra. Glaci Gurgacz. A iniciativa oferece gratuitamente formação linguística em Língua Portuguesa com carga horária de 120 horas (divididas em níveis Básico e Intermediário), prestando ainda orientação jurídica, distribuição de donativos e apoio à integração cultural e cidadã.

Todavia, ao observar a dinâmica operacional das aulas e o fluxo pedagógico da iniciativa, constatou-se uma problemática crítica: toda a comunicação, gestão de turmas e compartilhamento de materiais didáticos (arquivos em PDF, exercícios e avisos da coordenação) vinha ocorrendo de maneira descentralizada por meio de grupos no aplicativo WhatsApp.

Esse modelo informal gerava severos gargalos:

1. **Perda e dispersão de arquivos:** Alunos que ingressavam tardiamente ou enfrentavam problemas técnicos em seus aparelhos telefônicos perdiam o histórico de apostilas e comunicados;
2. **Dificuldade no acompanhamento pedagógico:** Inexistência de um controle visual claro da evolução da carga horária obrigatória das 120 horas curriculares;
3. **Ausência de usabilidade inclusiva:** Grupos de troca de mensagens instantâneas misturam conversas paralelas e não oferecem uma interface com acessibilidade visual simplificada para pessoas que ainda se encontram em estágio inicial de alfabetização em língua portuguesa.

Diante desse cenário-problema, os acadêmicos de Engenharia de Software / Sistemas de Informação propuseram a concepção, especificação arquitetural e prototipação da **Plataforma Educacional e de Apoio ao Imigrante Cidadão (Portal Imigrante Cidadão)**. A proposta consiste em uma aplicação web responsiva (*Mobile-First*), acessível via navegador sem necessidade de instalação, capaz de centralizar a gestão pedagógica dos professores, organizar as disciplinas e permitir o acesso direto, inclusivo e transparente dos alunos aos seus materiais formativos.

A relevância social do projeto consubstancia-se na democratização do acesso aos recursos educacionais para uma população em vulnerabilidade social extrema, transformando a tecnologia em vetor direto de dignidade humana e inclusão cidadã. Para os estudantes desenvolvedores, a pertinência acadêmica reside na oportunidade de aplicar metodologias ágeis (Scrum/MoSCoW), engenharia de requisitos, boas práticas de UX/UI acessível e modelagem arquitetural (Modelo C4 e DER relacional) em uma demanda real da comunidade, cumprindo a missão extensionista universitária.

---

## 2. DESCRIÇÃO DO PÚBLICO BENEFICIADO PELAS AÇÕES DE EXTENSÃO

O público diretamente beneficiado pelas ações do projeto é composto por aproximadamente **40 a 50 imigrantes e refugiados matriculados anualmente** nos cursos de extensão de Língua Portuguesa ministrados no Centro Universitário Católica de Santa Catarina (Campus Joinville).

* **Origem e Perfil Sociodemográfico:** O contingente atendido abrange homens e mulheres adultos, além de jovens, procedentes principalmente da Venezuela (falantes nativos de espanhol), do Haiti (falantes de Crioulo Haitiano e Francês) e do Paquistão (falantes de Urdu/Inglês). A esmagadora maioria encontra-se em situação de migração forçada, vulnerabilidade socioeconômica, desemprego ou subemprego informal, residindo em bairros periféricos de Joinville.
* **Competência Linguística e Tecnológica:** Os estudantes apresentam níveis heterogêneos de letramento. Enquanto alguns possuem formação superior em seus países de origem, outros possuem instrução básica incompleta. Em termos de infraestrutura tecnológica, o acesso à internet se dá predominantemente via *smartphones* de entrada, conectados a planos de dados móveis 3G/4G restritos ou redes Wi-Fi públicas. Por essa razão, a solução foi orientada com foco intransigente na responsividade leve, consumo reduzido de banda e dispensa de downloads pesados em lojas de aplicativos.
* **Público Beneficiado Indireto:** Abrange os professores voluntários, monitores acadêmicos da Católica SC e a coordenação de extensão, que ganham uma ferramenta administrativa organizada para publicação de aulas, controle de liberação de materiais e matrícula de novos estudantes.

---

## 3. OBJETIVOS

### 3.1 Objetivo Geral

Desenvolver e validar a arquitetura, especificação técnica e protótipo de alta fidelidade de uma plataforma web responsiva voltada a centralizar a distribuição de materiais didáticos em PDF, o gerenciamento de turmas e a disponibilização digital da cartilha informativa para os alunos e docentes do Projeto de Extensão Imigrante Cidadão da Católica SC.

### 3.2 Objetivos Específicos

1. **Disponibilizar um ambiente único e centralizado de acesso a materiais didáticos em PDF**, organizados por disciplina e aula, substituindo a distribuição descentralizada via grupos de WhatsApp e permitindo controle de liberação pelos docentes.
2. **Estruturar o gerenciamento de turmas e usuários por meio de perfis de acesso distintos** (Administrador/Coordenação, Professor/Monitor e Aluno Imigrante), assegurando controle de permissões (RBAC) e matrícula organizada dos participantes.
3. **Disponibilizar digitalmente a Cartilha Informativa do Imigrante**, garantindo consulta imediata e intuitiva a orientações de cidadania, emissão de documentos (CPF e RNM na Polícia Federal) e acesso gratuito à rede pública de saúde (SUS).

---

## 4. DESCRIÇÃO DAS PRINCIPAIS ATIVIDADES REALIZADAS

O projeto foi conduzido seguindo os princípios da Engenharia de Software Moderna, integrando levantamento empírico de requisitos junto à cliente (Profª. Dra. Glaci Gurgacz), estruturação de backlog ágil, modelagem arquitetural e prototipação em alta fidelidade. As atividades distribuíram-se em correspondência direta aos objetivos específicos estabelecidos:

### 4.1 Ambiente Único e Centralizado de Distribuição de Materiais Didáticos em PDF

Para atender à primeira meta, foi desenhado o fluxo de upload, categorização e download de materiais:

* **Mapeamento Pedagógico:** Foram analisados os materiais reais utilizados pela coordenação em sala de aula (como as apostilas *Básico Aula Nº 3*, *Aula Nº 4* e *Curso Intermediário*).
* **Controle de Liberação / Ocultação (Toggle Switch):** Criou-se a funcionalidade pedagógica em que o docente pode cadastrar a aula previamente no portal e manter o PDF em modo "Rascunho Oculto", liberando a visualização para os alunos apenas no momento em que o tópico for ministrado em sala presencial.
* **Leitor de PDF Embutido:** Especificou-se um visualizador interno na própria aplicação, permitindo que o aluno leia a apostila diretamente na tela do celular sem a obrigatoriedade de possuir aplicativo leitor de PDF instalado.

### 4.2 Estruturação de Perfis de Acesso e Gerenciamento de Turmas e Usuários

Para viabilizar o segundo objetivo específico, implementou-se a divisão formal de papéis (*Role-Based Access Control* - RBAC):

* **Perfil Aluno (Imigrante):** Focado na simplicidade extrema e redução de ruído cognitivo. Apresenta barra de progresso visual da carga horária de 120 horas (ex.: 36h / 30% concluídas), indicação da turma matriculada e listagem das aulas liberadas com botões diretos de visualização e download.
* **Perfil Professor (Docente/Monitor):** Permite a gestão das disciplinas ativas (*Português Básico I*, *Português Intermediário*), cadastro de novas aulas com formulário de anexo PDF, edição e substituição de materiais já postados (RF04) e gerenciamento dos alunos matriculados com histórico de frequência.
* **Perfil Administrador (Coordenação de Extensão):** Painel gerencial voltado a acompanhar os KPIs do projeto extensionista (42 alunos atendidos, 120 horas curriculares, 3 professores voluntários cadastrados) e credenciamento de novos docentes no sistema (RF01).

### 4.3 Disponibilização Digital e Acessibilidade da Cartilha Informativa

Em atendimento ao terceiro objetivo, consolidou-se a digitalização da cartilha de apoio comunitário:

* **Navegação Modular:** O conteúdo foi fragmentado em tópicos de consulta rápida: (1) Documentação Essencial (CPF, Carteira de Trabalho Digital e Registro Nacional Migratório na Polícia Federal); (2) Acesso Universal à Saúde (direitos constitucionais do SUS e rede de UBS em Joinville); (3) Certificação e Direitos do Trabalhador.
* **Design Inclusivo:** Inclusão de seletor visual de idiomas simulado no topo da interface (`PT` | `ES` | `HT` | `EN`) para acolher imigrantes falantes de espanhol e crioulo haitiano.

### 4.4 Processo Ágil, Arquitetura de Software e Prototipação de Alta Fidelidade

As atividades técnicas de sustentação abrangeram:

1. **Backlog Priorizado com Método MoSCoW:** Elicitação e especificação de 9 Requisitos Funcionais (RF01 a RF09) e 6 Requisitos Não Funcionais (RNF01 a RNF06), organizados em 9 User Stories com estimativa de 29 Story Points divididos em Sprints no Jira Software (Projeto `PIC`).
2. **Modelagem Arquitetural no Modelo C4:**
   * *Nível 1 (Diagrama de Contexto):* Delimitação do sistema e interação dos 3 atores com serviços externos de Object Storage (S3 API).
   * *Nível 2 (Diagrama de Contêiner):* Especificação da SPA em Vue.js 3 / Tailwind CSS, API RESTful em Node.js / Express, Banco Relacional PostgreSQL e armazenamento em nuvem Cloudflare R2 / AWS S3.
3. **Modelagem de Dados (DER Relacional):** Entidades estruturadas com integridade referencial (`Usuario`, `Disciplina`, `Matricula`, `Material` e `Cartilha`).
4. **Prototipação de Alta Fidelidade no Figma:** Construção do código autocontido em HTML5/Tailwind e migração assistida via engenharia reversa para o Figma, gerando 7 telas e modais completos em layout editável.

---

## 5. AVALIAÇÃO DO PROJETO PELO PÚBLICO BENEFICIADO

A avaliação preliminar das soluções propostas ocorreu mediante reuniões de alinhamento com a coordenadora do projeto de extensão, Profª. Dra. Glaci Gurgacz, e apresentação dos protótipos funcionais concebidos.

* **Metodologia de Coleta e Validação:** Utilizou-se a técnica de demonstração interativa de protótipo de alta fidelidade (*walkthrough* de telas), simulando as jornadas de uso de um aluno imigrante com baixo domínio de português acessando a plataforma pelo celular, e de um professor publicando e liberando uma nova apostila.
* **Percepções da Coordenação e Docentes:** A cliente enfatizou que a centralização dos materiais didáticos resolve uma das maiores dores históricas do projeto — o reenvio repetitivo de arquivos no WhatsApp para alunos faltosos ou novatos. A chave de liberação/ocultação de aulas foi elogiada por conferir autoridade pedagógica ao professor, evitando que os estudantes se adiantem ou se confundam com tópicos ainda não explicados.
* **Percepção Social e Acessibilidade:** A disponibilização da barra de progresso das 120 horas e a facilidade de acesso à Cartilha Digital em formato responsivo foram apontadas como instrumentos de forte empoderamento, pois conferem transparência e previsibilidade aos imigrantes sobre sua formatura e certificação.

---

## 6. CONSIDERAÇÕES FINAIS – AUTOAVALIAÇÃO DO PAC EXTENSIONISTA

### 1. O objetivo geral do projeto foi alcançado? Descreva os principais resultados alcançados junto ao público/comunidade.

Sim. O objetivo geral foi plenamente alcançado no escopo do planejamento e concepção da N1. Entregou-se uma especificação arquitetural robusta, moderna e documentada, acompanhada de um protótipo navegável de alta fidelidade no Figma contendo todas as interfaces de interação para Alunos, Professores e Administradores. A comunidade acadêmica e extensionista do Projeto Imigrante Cidadão passa a dispor de uma base de engenharia sólida para a substituição definitiva da distribuição dispersa via WhatsApp por uma plataforma institucional segura, inclusiva e adaptada.

### 2. Quais foram os pontos fortes e os pontos frágeis deste PAC Extensionista?

* **Pontos Fortes:** A forte sinergia com uma demanda comunitária real e urgente dentro da própria instituição; a escolha criteriosa de uma stack tecnológica acessível, escalável e de baixo custo de manutenção (Vue 3, Node.js, PostgreSQL e Tailwind CSS); o rigor metodológico na modelagem arquitetural (Modelo C4 e DER) e o desenvolvimento ágil suportado pelo Jira e Confluence.
* **Pontos Frágeis:** A restrição temporal da fase inicial, que postergou a internacionalização completa e dinâmica dos textos da interface para múltiplos idiomas (Espanhol e Crioulo Haitiano nativos) para fases futuras de implementação, mantendo-a inicialmente como mockup funcional de acessibilidade.

### 3. De que forma os pontos frágeis poderiam ser corrigidos nas próximas edições do projeto?

Nas fases subsequentes de desenvolvimento (N2 e implementação de código de produção), a fragilidade linguística poderá ser mitigada por meio da integração de bibliotecas de internacionalização dinâmicas (como `vue-i18n`), permitindo a tradução contextualizada de cada tela com o suporte de alunos e voluntários bilíngues do próprio projeto de extensão. Adicionalmente, planeja-se a inclusão de recursos de acessibilidade por voz (áudio-descrição dos vocabulários básicos) para alunos que enfrentam analfabetismo funcional.

### 4. Quais os principais aprendizados e dificuldades observadas durante a implementação do projeto?

O principal aprendizado consistiu em exercitar a empatia no design de software (UX inclusiva), compreendendo que sistemas voltados a públicos em vulnerabilidade social exigem simplicidade radical, linguagem clara, pouca densidade textual e dispensa de processos burocráticos de instalação. A principal dificuldade residiu em equilibrar a riqueza funcional desejada com a necessidade de manter a aplicação extremamente leve para conexões móveis instáveis de baixo custo.

### 5. Como foi o PAC extensionista para vocês, enquanto equipe?

A experiência do PAC Extensionista foi transformadora para a equipe acadêmica. O projeto permitiu ir muito além da teoria de sala de aula, aplicando boas práticas de Engenharia de Software a serviço de uma causa nobre de justiça social e direitos humanos. Trabalhar diretamente com a Profª. Dra. Glaci Gurgacz e entender a realidade de quem reconstrói sua vida em nosso país ampliou profundamente nossa consciência profissional sobre o papel transformador da tecnologia na sociedade.

---

## 7. REFERÊNCIAS

1. BROWN, Simon. **The C4 model for visualising software architecture**. Disponível em: [https://c4model.com/](https://c4model.com/). Acesso em: 15 set. 2026.
2. CENTRO UNIVERSITÁRIO CATÓLICA DE SANTA CATARINA. **Manual de Orientações para Normatização de Trabalhos Acadêmicos da Católica SC**. Joinville: Católica SC, 2024.
3. PRESSMAN, Roger S.; MAXIM, Bruce R. **Engenharia de software: uma abordagem profissional**. 9. ed. Porto Alegre: AMGH, 2021.
4. SCHWABER, Ken; SUTHERLAND, Jeff. **O Guia do Scrum: As Regras do Jogo**. Scrum.org, 2020.
5. SOMMERVILLE, Ian. **Engenharia de software**. 10. ed. São Paulo: Pearson Education do Brasil, 2019.

---

## 8. APÊNDICES

### Apêndice A – Matriz de Requisitos Funcionais (RF) e Não Funcionais (RNF)

|       ID       | Classificação | Descrição do Requisito                                                                       | Perfil Vinculado |
| :-------------: | :-------------: | :--------------------------------------------------------------------------------------------- | :---------------: |
| **RF01** |    Funcional    | O sistema deve permitir que o administrador cadastre professores na plataforma.                |   Administrador   |
| **RF02** |    Funcional    | O sistema deve permitir que o professor cadastre disciplinas vinculadas às turmas.            |     Professor     |
| **RF03** |    Funcional    | O sistema deve permitir que o professor insira materiais didáticos em formato PDF.            |     Professor     |
| **RF04** |    Funcional    | O sistema deve permitir que o professor edite ou substitua materiais didáticos já inseridos. |     Professor     |
| **RF05** |    Funcional    | O sistema deve permitir que o professor cadastre/matricule alunos em cada disciplina.          | Professor / Admin |
| **RF06** |    Funcional    | O sistema deve permitir que o aluno visualize materiais das disciplinas matriculadas.          |       Aluno       |
| **RF07** |    Funcional    | O sistema deve disponibilizar a Cartilha Informativa do projeto em formato digital.            |   Aluno / Todos   |
| **RF08** |    Funcional    | O sistema deve restringir ações de cadastro e edição aos perfis Admin e Professor.         |  Sistema / RBAC  |
| **RF09** |    Funcional    | O sistema deve permitir autenticação (login) individual para Admin, Professor e Aluno.       |       Todos       |
| **RNF01** | Não Funcional | Responsividade adaptada para desktop e dispositivos móveis (Mobile-First).                    |      Sistema      |
| **RNF02** | Não Funcional | Acesso direto via navegador sem obrigatoriedade de instalação de aplicativo.                 |      Sistema      |
| **RNF03** | Não Funcional | Interface visual simples, amigável a usuários em fase de alfabetização em português.      |       UX/UI       |
| **RNF04** | Não Funcional | Segurança, integridade e conformidade com a Lei Geral de Proteção de Dados (LGPD).          |    Segurança    |
| **RNF05** | Não Funcional | Compatibilidade transversal com navegadores modernos (Chrome, Safari, Firefox, Edge).          |  Infraestrutura  |
| **RNF06** | Não Funcional | Desempenho e leveza de carregamento otimizados para redes móveis 3G/4G restritas.             |    Desempenho    |

### Apêndice B – Modelagem Arquitetural C4 (Contexto e Contêiner)

* **C4 Nível 1 (Contexto):** Mapeamento dos três atores (Admin, Professor, Aluno), da fronteira da aplicação Web do Portal Imigrante Cidadão e dos serviços de nuvem externos (Object Storage S3).
* **C4 Nível 2 (Contêineres):**
  * *Front-end:* SPA Vue.js 3 (Composition API) + Tailwind CSS hospedado em CDN de borda (Vercel/Netlify).
  * *Back-end:* API RESTful Node.js / Express em camadas estruturadas em PaaS (Render/Railway).
  * *Banco de Dados:* PostgreSQL gerenciado com rotinas automatizadas de backup.
  * *Armazenamento:* Object Storage compatível com AWS S3 (Cloudflare R2 / Supabase Storage).

### Apêndice C – Diagrama Entidade-Relacionamento (DER Relacional)

* `Usuario` (id, nome, email, senha_hash, perfil, data_cadastro)
* `Disciplina` (id, nome, descricao, professor_id [FK], criado_em)
* `Matricula` (id, aluno_id [FK], disciplina_id [FK], data_matricula)
* `Material` (id, titulo, descricao, arquivo_pdf, disciplina_id [FK], liberada, data_upload)
* `Cartilha` (id, titulo, arquivo_pdf, versao, atualizado_em)

### Apêndice D – Protótipo de Alta Fidelidade no Figma (Telas e Links)

* **Link Interativo Oficial:** [Protótipo no Figma - Portal Imigrante Cidadão](https://www.figma.com/design/ViT9wvf3f2AtY3xaMPmZMU/Sem-t%C3%ADtulo?node-id=10-3459)
* **Estrutura das Telas Validadas no Figma:**
  1. `01_Home_LandingPage` (ID `10:1605`): Início e seleção rápida de acesso por perfil.
  2. `02_Portal_Aluno` (ID `10:1850`): Dashboard do aluno com indicador da carga de 120h e aulas liberadas.
  3. `03_Portal_Professor` (ID `10:2138`): Gestão de aulas com toggle de liberação e edição.
  4. `04_Portal_Coordenacao_Admin` (ID `10:2502`): Painel institucional com KPIs e gestão de professores.
  5. `05_Modal_Cartilha_Imigrante` (ID `10:2770`): Guia de direitos e cidadania em Joinville.
  6. `06_Modal_Leitor_PDF_Didatico` (ID `10:3104`): Leitor da apostila oficial da Católica SC.
  7. `07_Modal_Autenticacao_Login` (ID `10:3459`): Tela de login com chaveamento de perfis.

---

## 9. ANEXOS

### Anexo A – Dados Cadastrais Institucionais da Entidade Parceira (FERJ)

* **Razão Social:** Fundação Educacional Regional Jaraguaense (FERJ)
* **CNPJ:** 83.130.229/0002-59
* **Endereço Institucional:** Rua Visconde de Taunay, 427 – Atiradores, Joinville – SC, CEP: 89201-462
* **Telefone:** (47) 3145-9760
* **Responsável pelo Projeto:** Profª. Dra. Glaci Gurgacz (glacigurgacz@gmail.com)
* **Testemunha Institucional:** Adalcia Tibisay Torres (adalcia.aray@catolicasc.org.br)
