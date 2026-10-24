# 📌 Contexto Geral do Projeto - PAC Extensão Imigrante Cidadão

**Data:** 17/09/2026  
**Instituição:** Centro Universitário Católica de Santa Catarina (Joinville)  
**Projeto:** Plataforma Web Imigrante Cidadão  
**Equipe:** Yan Carlos Farias e Marcos Vinicius da Silva Zacchi  
**Coordenação Parceira:** Profª. Dra. Glaci Gurgacz  

---

## 🎯 1. Objetivo do Projeto
Substituir a distribuição de materiais via WhatsApp por um portal web unificado, responsivo e adaptado para imigrantes em vulnerabilidade (Venezuela, Haiti, etc.) que realizam o curso de Língua Portuguesa (120h).

---

## 💻 2. O que já foi desenvolvido
1. **Conexão Figma MCP:**
   - Token do Figma com escopo `file_content:read` configurado em `~/.gemini/config/mcp_config.json`.
   - Limpeza e foco no idioma **PT-BR** (`1440w light`).
2. **Código Base em Alta Fidelidade Concluído:**
   - Arquivo único e autocontido: [`portal-imigrante/index.html`](./portal-imigrante/index.html) (com logotipo oficial da Católica SC importado).
   - Estilização completa com Tailwind CSS e Lucide Icons, paleta institucional vinho `#9c1c28`, ardósia `#1e293b` e branco.
   - **Barra Superior de Demonstração (Figma Fast Capture):** Permite alternar com 1 clique para qualquer tela ou modal diretamente no navegador.
   - **Telas Integradas:**
     - **Home / Landing Page:** Apresentação humanizada, estatísticas de impacto comunitário (120h, certificado, gratuito), seletor de idiomas simulado (PT/ES/HT/EN) e cards de acesso rápido para os 3 perfis.
     - **Módulo do Aluno (Imigrante):** Dashboard com barra de progresso visual das 120 horas (36h concluídas), indicador de turma ativa (*Português Básico I*) e grid com aulas liberadas pelo docente, botões de pré-visualização e download de PDF.
     - **Módulo do Professor (Docente/Monitor):** Abas de *Aulas & Materiais Didáticos* (com toggle para liberar/ocultar aos alunos em tempo real, botão de editar/substituir material RF04 e exclusão) e *Alunos Matriculados* (tabela completa com país de origem, contato, frequência e botão para matricular novo aluno RF05).
     - **Módulo do Administrador (Coordenação de Extensão):** Métricas gerais do projeto PAC (42 alunos atendidos, 120h, 3 voluntários, 2 turmas) e tabela de gestão/credenciamento de professores voluntários (RF01).
   - **Modais Funcionais:**
     - **Modal Login / Autenticação (RF09):** Alternância entre perfis Aluno, Professor e Administrador com credenciais pré-preenchidas para teste rápido.
     - **Modal Nova Aula (RF03):** Cadastro com upload simulado de PDF e chave toggle de liberação imediata.
     - **Modal Editar / Substituir Material (RF04):** Alteração de título, descrição e substituição de arquivo PDF.
     - **Modal Matricular Aluno (RF05):** Cadastro de nome, país de origem (Haiti, Venezuela, etc.), telefone e vínculo de turma.
     - **Modal Cadastrar Professor (RF01):** Nome, e-mail institucional e disciplina atribuída.
     - **Modal Cartilha do Imigrante (RF07):** Informações essenciais de acolhimento em Joinville (documentos CPF/RNM, SUS, direitos trabalhistas e download do PDF).
     - **Modal Leitor de PDF Didático (RF06):** Simulação de página editorial da apostila oficial da Católica SC.

---

## 🔄 3. Protótipo de Alta Fidelidade no Figma (Concluído e Validado)
- **Link do Arquivo Figma:** [Acessar Projeto no Figma](https://www.figma.com/design/ViT9wvf3f2AtY3xaMPmZMU/Sem-t%C3%ADtulo?node-id=10-3459)
- **Validação via API do Figma:**
  - Todas as telas e modais foram inspecionados com sucesso:
    1. `Html Body` (ID `10:1605`): Home / Landing Page institucional com cards dos perfis.
    2. `Html Body1` (ID `10:1850`): Portal do Aluno (progresso 120h, disciplinas e aulas em PDF).
    3. `Html Body2` (ID `10:2138`): Portal do Professor (gestão de aulas, toggle de liberação e ações).
    4. `Html Body3` (ID `10:2502`): Painel Institucional da Coordenação / Admin (KPIs e docentes voluntários).
    5. `Html Body4` (ID `10:2770`): Modal Cartilha Informativa do Imigrante.
    6. `Html Body5` (ID `10:3104`): Modal Leitor / Visualizador de PDF Didático.
    7. `Html Body6` (ID `10:3459`): Modal de Acesso e Autenticação por Perfil.

---

## 🤖 4. Como retomar esta conversa no outro computador
- Suba a pasta inteira `PAC/` para o Google Drive.
- No outro computador, abra a pasta `PAC/` no seu editor/Antigravity.
- O arquivo `CONTEXTO_PROJETO.md` e o `ENTREGAS_N1_PAC.md` contêm todo o histórico e instruções prontas para o assistente retomar exatamente do ponto onde paramos!
