
-- Cargos
-- 1 admin
-- 2 avaliado

INSERT INTO `avalia`.`roles` (`id`, `code`, `title`, `sumary`, `responsibilities`, `created`, `updated`) VALUES (NULL, '0005', 'Diretor Geral', 'Assegurar a obtenção dos resultados definidos nos planos operacionais e administrativos, em conformidade com a missão da empresa, seus princípios e filosofia de negócios, dentro das diretrizes estratégicas e operacionais estabelecidas, por meio da coordenação geral de todas as áreas da empresa.', '<p>Conduzir a elaboração e implementação dos planos estratégicos e operacionais, em todas as áreas da empresa, visando a assegurar o seu desenvolvimento, crescimento e continuidade.</p>
<p>Definir as políticas e objetivos específicos de cada área, coordenando a execução dos respectivos planos de ação, facilitando e integrando o trabalho das equipes, visando a otimizar os esforços para a consecução dos objetivos da empresa.</p>
<p>Identificar oportunidades, avaliar a viabilidade e fazer recomendações sobre novos investimentos ou desenvolvimento de novos negócios, visando a garantir um retorno adequado aos acionistas e resguardar a segurança dos ativos da empresa.</p>
<p>Manter contatos com a direção das empresas clientes para identificar oportunidades de ampliação ou melhoria nos produtos / serviços prestados ou solução de eventuais problemas contratuais ou operacionais, visando a manter a satisfação do cliente e projetar uma imagem positiva da empresa no mercado.</p>
<p>Conduzir os processos de mudanças na cultura da organização, visando conquistar o engajamento de todos os seus integrantes e garantir a consolidação de uma cultura organizacional orientada para a contínua busca da qualidade e de altos padrões de desempenho individual e coletivo.</p>
<p>Coordenar as negociações para aquisições, fusões, associações, etc. com outras empresas, visando ao crescimento e consolidação dos negócios.</p>
<p>Manter contatos com a direção de outras empresas, entidades de classe e órgãos governamentais, visando a harmonizar esforços que se traduzam em benefícios para os clientes, o mercado e a comunidade em geral.</p>', '2010-06-24 23:20:25', '2010-06-24 23:20:28');

INSERT INTO `avalia`.`roles` (`id`, `code`, `title`, `sumary`, `responsibilities`, `created`, `updated`) VALUES (NULL, '006', 'Programador', 'Elaborar e testar programas de computador, estabelecendo os processos operacionais necessários para o tratamento dos dados, baseando-se nas definições fornecidas na fase de análise de sistemas e valendo-se de métodos e técnicas adequadas aos equipamentos e aplicações a que se destinam.', '<p>Proceder a codificação dos programas de computador, estudando os objetivos propostos, analisando as características dos dados de entrada e o processamento necessário a obtenção dos dados de saída desejados.</p>
<p>Executar a compilação de linguagens de programação, visando conferir e acertar sintaxe do programa.</p>
<p>Realizar testes em condições operacionais simuladas, visando verificar se o programa executa corretamente dentro do especificado e com a performance adequada.</p>
<p>Modificar programas, alterando o processamento, a codificação e demais elementos, visando corrigir falhas e/ou atender alterações de sistemas e necessidades novas.</p>
<p>Aperfeiçoar conhecimentos técnicos, através de pesquisas, estudo de manuais e participação em cursos, visando a otimização da utilização dos recursos disponíveis na empresa.</p>
<p>Realizar simulações e criar ambientes de produção a fim de aferir os resultados dos programas.</p>
<p>Criar documentações complementares, como "helps", instruções de operação ou de acertos de consistência.</p>', '2010-06-24 23:22:08', '2010-06-24 23:22:11');


-- Colaboradores
INSERT INTO `avalia`.`employees` (`id`, `role_id`, `code`, `password`, `name`, `is_leader`, `is_admin`, `created`, `updated`) VALUES
(NULL, '1', '00000005', '1212121212121212', 'Tarcísio Ferreira Sassara', '0', '1', '2010-06-24 23:25:12', '2010-06-24 23:25:15'),
(NULL, '1', '00000006', '1212121212121212', 'Gilmar Sassara Fernandes', '1', '0', '2010-06-24 23:25:27', '2010-06-24 23:25:29'),
(NULL, '2', '00000007', '1212121212121212', 'João da Silva', '0', '0', '2010-06-24 23:25:27', '2010-06-24 23:25:29');



-- Avaliação
INSERT INTO `avalia`.`appraisals` (`id`, `admin_id`, `role_id`, `title`, `created`, `updated`) VALUES
(NULL, '1', '2', 'Avaliação do cargo Programador', '2010-06-24 23:17:40', '2010-06-24 23:17:42');

-- Grupos
INSERT INTO `avalia`.`groups` (`id`, `appraisal_id`, `title`, `created`, `updated`) VALUES
(NULL, '1', 'Perguntas do grupo I', '2010-06-24 22:55:49', '2010-06-24 22:55:51'),
(NULL, '1', 'Perguntas do grupo II', '2010-06-24 22:55:49', '2010-06-24 22:55:51'),
(NULL, '1', 'Perguntas do grupo III', '2010-06-24 22:55:49', '2010-06-24 22:55:51');


-- Questões
INSERT INTO `avalia`.`questions` (`id`, `group_id`, `title`, `description`, `created`, `updated`) VALUES
(NULL, '1', 'Credibilidade e Confiança', 'É o grau de confiabilidade das informações/atividades/serviços prestados, sob sua responsabilidade.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '1', 'Compartilhamento das Atividades', 'É a capacidade de compartilhar as informações para o desenvolvimento das atividades/serviços, de modo que estes não fiquem prejudicados e condicionados à presença do funcionário executor da atividade. É o ato da descentralização da informação.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '1', 'Trabalho em Equipe', 'É a capacidade de interagir e cooperar no compartilhamento de idéias, objetivos, atividades e soluções para atingir os objetivos Institucionais.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '1', 'Disponibilidade', 'São as atitudes no que se refere a estar disponível para atender solicitações na participação em atividades/serviços , de acordo com as necessidades.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '1', 'Comprometimento', 'É a pré-disposição para a ação e para o esforço em prol da Instituição, quanto ao compartilhamento de valores entre esta e as pessoas que nela atuam, buscando atingir os objetivos organizacionais.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '1', 'Flexibilidade', 'É a forma como compreende e responde às novas situações de trabalho, podendo exercer múltiplas atividades/serviços, inerentes à sua área de atuação.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '1', 'Foco no usuário de sua atividade/serviço', 'É o interesse em atender as necessidades atuais e futuras dos usuários, desenvolvendo estratégias, planos, ações, processos, etc, respeitadas as normas vigentes.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '1', 'Aplicação do Conhecimento', 'É a aplicação do conhecimento/experiência no uso das ferramentas, conceitos, métodos, procedimentos, software, equipamentos, etc, para melhorar o desenvolvimento das atividades em geral.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '1', 'Organização do Tempo e Trabalho - Prioridade', 'São as atitudes em relação à administração de tempo e trabalho, considerando a assiduidade, a pontualidade, interrupções durante o período de trabalho e/ou programações quanto aos prazos para a realização das atividades.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '1', 'Relacionamento Interpessoal', 'É a capacidade de se relacionar de forma cordial com as pessoas dos diversos níveis hierárquicos e culturais, incluindo os usuários/clientes, de forma a manter o ambiente de trabalho agradável e produtivo.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '1', 'Comunicação', 'É a capacidade de se expressar (nas diversas formas) de maneira clara, objetiva e adequada, bem como a capacidade de ouvir os outros e dar respostas consistentes, contribuindo para atingir os objetivos.', '2010-06-24 22:36:55', '2010-06-24 22:36:57');

INSERT INTO `avalia`.`questions` (`id`, `group_id`, `title`, `description`, `created`, `updated`) VALUES
(NULL, '2', 'Capacidade de Agregar Valor', 'É a capacidade de agregar valor e contribuir para o desenvolvimento da área no que se refere à otimização de recursos, implantação e disseminação de novas metodologias, procedimentos, protocolos, etc.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '2', 'Qualidade do trabalho', 'É a capacidade de realizar atividades/serviços de forma organizada, clara, consistente e objetiva atingindo objetivos pré-estabelecidos.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '2', 'Planejamento', 'É a capacidade de visualizar e organizar as sequências de ações necessárias para atingir os objetivos/metas e estimar prazos e recursos requeridos.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '2', 'Capacidade para Resolver Problemas', 'É a capacidade de resolver problemas e imprevistos, de forma eficaz, a partir do conhecimento /experiência, para alcançar os objetivos esperados.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '2', 'Comportamento Ético', 'É a atitude pautada pelo respeito ao próximo, integridade, senso de justiça, impessoalidade nas ações e a valorização do conceito de cidadania e do bem público.', '2010-06-24 22:36:55', '2010-06-24 22:36:57');

INSERT INTO `avalia`.`questions` (`id`, `group_id`, `title`, `description`, `created`, `updated`) VALUES
(NULL, '3', 'Administração de Conflitos', 'É a capacidade de lidar e procurar solucionar conflitos, opiniões divergentes e condições adversas no ambiente de trabalho.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '3', 'Criação ou Inovação', 'É a capacidade de criar ou inovar projetos, planos, idéias, metodologias, processos, etc para aplicação na execução das atividades/serviços, que gerem impacto e otimização nos processos e formas de trabalho.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '3', 'Capacitação e Desenvolvimento Profissional', 'É o interesse pela busca ativa de qualificação e aprimoramento pessoal e profissional, na área de atuação, com o objetivo de melhorar o desenvolvimento das atividades/serviços.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '3', 'Utilização das ferramentas e recursos materiais básicos', 'É a capacidade de utilizar os recursos materiais, equipamentos e procedimentos rotineiros, levando em consideração fatores de custos, disponibilidades e uso correto, etc.', '2010-06-24 22:36:55', '2010-06-24 22:36:57'),
(NULL, '3', 'Adaptabilidade às Mudanças', 'É a capacidade de adaptar-se com agilidade às mudanças de métodos, processos, ferramentas, equipamentos, etc, respondendo às demandas.', '2010-06-24 22:36:55', '2010-06-24 22:36:57');


-- Opções
INSERT INTO `avalia`.`options` (`id`, `question_id`, `title`, `value`, `created`, `updated`) VALUES
(NULL, '1', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '1', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '1', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '1', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '1', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '2', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '2', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '2', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '2', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '2', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '3', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '3', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '3', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '3', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '3', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '4', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '4', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '4', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '4', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '4', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '5', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '5', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '5', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '5', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '5', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '6', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '6', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '6', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '6', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '6', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '7', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '7', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '7', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '7', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '7', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '8', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '8', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '8', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '8', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '8', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '9', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '9', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '9', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '9', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '9', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '10', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '10', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '10', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '10', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '10', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '11', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '11', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '11', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '11', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '11', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '12', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '12', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '12', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '12', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '12', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '13', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '13', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '13', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '13', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '13', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '14', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '14', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '14', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '14', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '14', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '15', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '15', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '15', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '15', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '15', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '16', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '16', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '16', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '16', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '16', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '17', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '17', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '17', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '17', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '17', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '18', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '18', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '18', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '18', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '18', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '19', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '19', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '19', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '19', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '19', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '20', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '20', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '20', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '20', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '20', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),

(NULL, '21', 'Muito Satisfeito',   '0', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '21', 'Satisfeito',         '1', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '21', 'Indiferente',        '2', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '21', 'Insatisfeito',       '3', '2010-06-24 23:32:11', '2010-06-24 23:32:13'),
(NULL, '21', 'Muito Insatisfeito', '4', '2010-06-24 23:32:11', '2010-06-24 23:32:13');
--

