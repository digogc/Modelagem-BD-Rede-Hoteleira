PGDMP      .            
    |            BD_Hotelaria    16.4    16.4 S   >           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            @           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            A           1262    24546    BD_Hotelaria    DATABASE     �   CREATE DATABASE "BD_Hotelaria" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "BD_Hotelaria";
                postgres    false            �            1259    24547    academia    TABLE     �   CREATE TABLE public.academia (
    numero numeric(10,0) NOT NULL,
    quantidade_equipamentos numeric(3,0),
    ultima_manutencao_bebedouro character varying(10) NOT NULL,
    quantidade_chuveiros numeric(2,0)
);
    DROP TABLE public.academia;
       public         heap    postgres    false            �            1259    24552 
   acomodacao    TABLE     �   CREATE TABLE public.acomodacao (
    numero numeric(10,0) NOT NULL,
    tipo character varying(20) NOT NULL,
    valor numeric(7,0) NOT NULL,
    ultima_limpeza date NOT NULL
);
    DROP TABLE public.acomodacao;
       public         heap    postgres    false            �            1259    24557    acumula    TABLE     t   CREATE TABLE public.acumula (
    nome character varying(30) NOT NULL,
    e_mail character varying(30) NOT NULL
);
    DROP TABLE public.acumula;
       public         heap    postgres    false            �            1259    24562    alimento    TABLE     �   CREATE TABLE public.alimento (
    id character(10) NOT NULL,
    nome character varying(30) NOT NULL,
    quantidade_desejada numeric(6,0) NOT NULL,
    quantidade_existente numeric(6,0) NOT NULL
);
    DROP TABLE public.alimento;
       public         heap    postgres    false            �            1259    24567    aluguel    TABLE       CREATE TABLE public.aluguel (
    id character(10) NOT NULL,
    pag_id character(10) NOT NULL,
    valor_total numeric(6,2) NOT NULL,
    valor_base numeric(6,2),
    multa numeric(7,0),
    data_pagamento date NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.aluguel;
       public         heap    postgres    false            �            1259    24574 	   amenidade    TABLE     K   CREATE TABLE public.amenidade (
    tipo character varying(30) NOT NULL
);
    DROP TABLE public.amenidade;
       public         heap    postgres    false            �            1259    24579    ar_livre    TABLE     �   CREATE TABLE public.ar_livre (
    numero numeric(6,0) NOT NULL,
    churrasqueira character(1),
    forno_a_lenha character(1),
    freezer character(1)
);
    DROP TABLE public.ar_livre;
       public         heap    postgres    false            �            1259    24584    armazena    TABLE     c   CREATE TABLE public.armazena (
    a_a_id character(10) NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.armazena;
       public         heap    postgres    false            �            1259    24589    assalariado    TABLE     �   CREATE TABLE public.assalariado (
    cpf character(14) NOT NULL,
    horassemana numeric(2,0) NOT NULL,
    salario_mensal numeric(7,2) NOT NULL
);
    DROP TABLE public.assalariado;
       public         heap    postgres    false            �            1259    24601    autonomo    TABLE     f   CREATE TABLE public.autonomo (
    cpf character(14) NOT NULL,
    valorhora numeric(6,2) NOT NULL
);
    DROP TABLE public.autonomo;
       public         heap    postgres    false            �            1259    24594    autorizacao    TABLE     �   CREATE TABLE public.autorizacao (
    id character(10) NOT NULL,
    nec_id character(10) NOT NULL,
    validade date NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.autorizacao;
       public         heap    postgres    false            �            1259    24606 	   banho_pet    TABLE     �   CREATE TABLE public.banho_pet (
    numero numeric(10,0) NOT NULL,
    nome_pet character varying(20),
    telefone_dono character(13) NOT NULL,
    m2_agua_gastos numeric(3,0),
    data date NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.banho_pet;
       public         heap    postgres    false            �            1259    24611    beneficiado    TABLE     m   CREATE TABLE public.beneficiado (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL
);
    DROP TABLE public.beneficiado;
       public         heap    postgres    false            �            1259    24616    beneficiados    TABLE     �   CREATE TABLE public.beneficiados (
    cpf character(14) NOT NULL,
    numero numeric(10,0) NOT NULL,
    nome character varying(30) NOT NULL
);
     DROP TABLE public.beneficiados;
       public         heap    postgres    false            �            1259    24621 	   beneficio    TABLE     l   CREATE TABLE public.beneficio (
    nome character varying(30) NOT NULL,
    valor numeric(6,2) NOT NULL
);
    DROP TABLE public.beneficio;
       public         heap    postgres    false            �            1259    24626    cafe_da_manha    TABLE     g   CREATE TABLE public.cafe_da_manha (
    id character(10) NOT NULL,
    reserva_de_mesa numeric(3,0)
);
 !   DROP TABLE public.cafe_da_manha;
       public         heap    postgres    false            �            1259    24636    campanha    TABLE     �   CREATE TABLE public.campanha (
    id character(10) NOT NULL,
    nome character varying(30),
    periodo character varying(20),
    objetivo character varying(40),
    verba numeric(6,2),
    pro_nome character varying(30)
);
    DROP TABLE public.campanha;
       public         heap    postgres    false            �            1259    24641    chatbot    TABLE     �   CREATE TABLE public.chatbot (
    registro_digital character varying(10) NOT NULL,
    cnpj character(18) NOT NULL,
    nome_avatar character varying(30),
    versao character varying(8)
);
    DROP TABLE public.chatbot;
       public         heap    postgres    false            �            1259    24648    compra    TABLE     �   CREATE TABLE public.compra (
    id character(10) NOT NULL,
    valor numeric(6,2) NOT NULL,
    horario character(6) NOT NULL,
    servico_de_quarto character(10),
    cafe_da_manha character(10),
    numero numeric(10,0) NOT NULL
);
    DROP TABLE public.compra;
       public         heap    postgres    false            �            1259    24653    consome    TABLE     �   CREATE TABLE public.consome (
    numero numeric(10,0) NOT NULL,
    id character(10) NOT NULL,
    dia date,
    horario character(6),
    quantidade numeric(2,0) NOT NULL
);
    DROP TABLE public.consome;
       public         heap    postgres    false            �            1259    24631    data_status    TABLE     �   CREATE TABLE public.data_status (
    numero numeric(10,0) NOT NULL,
    dia character varying(2) NOT NULL,
    mes numeric(2,0) NOT NULL,
    status character varying(8) NOT NULL
);
    DROP TABLE public.data_status;
       public         heap    postgres    false            �            1259    24658    delivery    TABLE     8  CREATE TABLE public.delivery (
    id character(10) NOT NULL,
    empresa_associada character varying(30) NOT NULL,
    data date NOT NULL,
    horario character(6) NOT NULL,
    valor numeric(6,2) NOT NULL,
    tipo character varying(15),
    fei_id character(10) NOT NULL,
    numero numeric(10,0) NOT NULL
);
    DROP TABLE public.delivery;
       public         heap    postgres    false            �            1259    24663    departamento    TABLE     �   CREATE TABLE public.departamento (
    numero numeric(2,0) NOT NULL,
    nome character varying(30) NOT NULL,
    id character(10) NOT NULL
);
     DROP TABLE public.departamento;
       public         heap    postgres    false            �            1259    24673    dependencia    TABLE     G  CREATE TABLE public.dependencia (
    numero numeric(10,0) NOT NULL,
    data_ultima_manutencao date NOT NULL,
    id character(10) NOT NULL,
    sala_eventos numeric(10,0),
    restaurante numeric(10,0),
    piscina numeric(10,0),
    empresa_turismo numeric(10,0),
    acomodacao numeric(10,0),
    academia numeric(10,0)
);
    DROP TABLE public.dependencia;
       public         heap    postgres    false            �            1259    24668 
   dependente    TABLE     }   CREATE TABLE public.dependente (
    cpf character(14) NOT NULL,
    hospede_principal_responsavel character(14) NOT NULL
);
    DROP TABLE public.dependente;
       public         heap    postgres    false            �            1259    24678 	   dispoe_de    TABLE     n   CREATE TABLE public.dispoe_de (
    numero numeric(10,0) NOT NULL,
    tipo character varying(30) NOT NULL
);
    DROP TABLE public.dispoe_de;
       public         heap    postgres    false            �            1259    24683 	   documento    TABLE     �   CREATE TABLE public.documento (
    id character(10) NOT NULL,
    e_r_id character(10) NOT NULL,
    tipo character varying(30) NOT NULL,
    data_emissao date,
    data_vencimento date NOT NULL
);
    DROP TABLE public.documento;
       public         heap    postgres    false            &           1259    24960    e_divulgada_por    TABLE     q   CREATE TABLE public.e_divulgada_por (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL
);
 #   DROP TABLE public.e_divulgada_por;
       public         heap    postgres    false            �            1259    24690    empresa_turismo    TABLE     �   CREATE TABLE public.empresa_turismo (
    numero numeric(10,0) NOT NULL,
    nome character varying(30),
    especialidade character varying(30)
);
 #   DROP TABLE public.empresa_turismo;
       public         heap    postgres    false            �            1259    24695    espaco    TABLE     *  CREATE TABLE public.espaco (
    numero numeric(6,0) NOT NULL,
    nome character varying(30),
    tamanho numeric(4,0) NOT NULL,
    valor numeric(7,2) NOT NULL,
    capacidade_maxima numeric(4,0) NOT NULL,
    sala numeric(6,0),
    ar_livre numeric(6,0),
    eng_numero numeric(5,0) NOT NULL
);
    DROP TABLE public.espaco;
       public         heap    postgres    false            �            1259    24700    espaco_eventos    TABLE     �   CREATE TABLE public.espaco_eventos (
    numero numeric(5,0) NOT NULL,
    id character(10) NOT NULL,
    senha_wifi character varying(30)
);
 "   DROP TABLE public.espaco_eventos;
       public         heap    postgres    false            �            1259    24707    estabelecimento    TABLE       CREATE TABLE public.estabelecimento (
    id character(10) NOT NULL,
    nome character varying(30),
    faturamento_mensal numeric(7,2),
    numero numeric(3,0) NOT NULL,
    teatro character(10),
    loja character(10),
    local_alimentacao character(10)
);
 #   DROP TABLE public.estabelecimento;
       public         heap    postgres    false            �            1259    24712    estadia_anterior    TABLE     �  CREATE TABLE public.estadia_anterior (
    id character(10) NOT NULL,
    responsavel character(14) NOT NULL,
    data_check_in character(10),
    data_check_out character(10),
    tipo_de_hospede character(1),
    valor_gasto numeric(7,2),
    unidade character(10) NOT NULL,
    acomodacao numeric(10,0) NOT NULL,
    pontos_gerados numeric(6,0) NOT NULL,
    cnpj character(18) NOT NULL
);
 $   DROP TABLE public.estadia_anterior;
       public         heap    postgres    false            �            1259    24717    evento    TABLE     U  CREATE TABLE public.evento (
    id character(10) NOT NULL,
    nome character varying(30),
    cpf_responsavel character(14) NOT NULL,
    acesso character varying(30) NOT NULL,
    valor numeric(6,2),
    dia date NOT NULL,
    horario character(6) NOT NULL,
    classificacao_indicativa character(2),
    numero numeric(10,0) NOT NULL
);
    DROP TABLE public.evento;
       public         heap    postgres    false            �            1259    24722    funcionario    TABLE     j  CREATE TABLE public.funcionario (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL,
    data_nascimento date,
    data_contratacao date NOT NULL,
    genero character(1),
    raca character varying(8),
    cargo character varying(30) NOT NULL,
    autonomo character(14),
    assalariado character(14),
    numero numeric(2,0) NOT NULL
);
    DROP TABLE public.funcionario;
       public         heap    postgres    false            �            1259    24727    ganhador    TABLE     �   CREATE TABLE public.ganhador (
    id character(10) NOT NULL,
    cpf character(14) NOT NULL,
    nome character varying(30)
);
    DROP TABLE public.ganhador;
       public         heap    postgres    false            �            1259    24732    garagem    TABLE     �   CREATE TABLE public.garagem (
    numero numeric(10,0) NOT NULL,
    tipo character varying(20) NOT NULL,
    capacidade_maxima numeric(5,0) NOT NULL,
    valordia numeric(2,2) NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.garagem;
       public         heap    postgres    false                        1259    24762    hospede    TABLE     5  CREATE TABLE public.hospede (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL,
    e_mail character varying(30),
    data_nascimento date,
    genero character(1),
    pod_cpf character(14),
    principal character(14),
    dependente character(14),
    cnpj character(18) NOT NULL
);
    DROP TABLE public.hospede;
       public         heap    postgres    false            �            1259    24737    hotel    TABLE       CREATE TABLE public.hotel (
    id character(10) NOT NULL,
    categoria character varying(20) NOT NULL,
    estado character(2),
    cidade character varying(30),
    bairro character varying(30),
    rua character varying(34),
    numero numeric(3,0),
    cep character(9) NOT NULL,
    nome_real character varying(30) NOT NULL,
    nome_fantasia character varying(30) NOT NULL,
    capacidade_maxima numeric(6,0) NOT NULL,
    area_m2 numeric(6,0) NOT NULL,
    data_inauguracao date NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.hotel;
       public         heap    postgres    false            �            1259    24742    hotel_empresarial    TABLE     �   CREATE TABLE public.hotel_empresarial (
    id character(10) NOT NULL,
    quantidade_salas_reuniao numeric(3,0),
    qualidade_wifi character varying(5) NOT NULL
);
 %   DROP TABLE public.hotel_empresarial;
       public         heap    postgres    false            �            1259    24747    hotel_familiar    TABLE     �   CREATE TABLE public.hotel_familiar (
    id character(10) NOT NULL,
    brinquedos character(1),
    salao_de_jogos_infantil character(1)
);
 "   DROP TABLE public.hotel_familiar;
       public         heap    postgres    false            �            1259    24752    hotel_para_adulto    TABLE     �   CREATE TABLE public.hotel_para_adulto (
    id character(10) NOT NULL,
    quantidade_bares numeric(2,0),
    quantidade_saunas numeric(2,0),
    quantidade_adegas numeric(2,0),
    salao_de_jogos_adultos character(1)
);
 %   DROP TABLE public.hotel_para_adulto;
       public         heap    postgres    false            �            1259    24757    hotel_para_pets    TABLE     �   CREATE TABLE public.hotel_para_pets (
    id character(10) NOT NULL,
    quantidade_patios numeric(2,0),
    area_brinquedos_pets character(1)
);
 #   DROP TABLE public.hotel_para_pets;
       public         heap    postgres    false                       1259    24767    inclui    TABLE     �   CREATE TABLE public.inclui (
    for_numero numeric(10,0) NOT NULL,
    numero numeric(5,0) NOT NULL,
    i_a_numero numeric(10,0) NOT NULL,
    periodo numeric(3,0) NOT NULL
);
    DROP TABLE public.inclui;
       public         heap    postgres    false                       1259    24774    influenciador_parceiro    TABLE     �   CREATE TABLE public.influenciador_parceiro (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL,
    numero_seguidores numeric(8,0),
    remuneracao numeric(7,2)
);
 *   DROP TABLE public.influenciador_parceiro;
       public         heap    postgres    false                       1259    24779 	   instagram    TABLE     �   CREATE TABLE public.instagram (
    nome character varying(30) NOT NULL,
    frequencia_stories character varying(10),
    frequencia_postagens character varying(10)
);
    DROP TABLE public.instagram;
       public         heap    postgres    false                       1259    24784    limpeza_de_pele    TABLE     u   CREATE TABLE public.limpeza_de_pele (
    numero character(6) NOT NULL,
    produtos_usados character varying(40)
);
 #   DROP TABLE public.limpeza_de_pele;
       public         heap    postgres    false                       1259    24789    lobby    TABLE     _   CREATE TABLE public.lobby (
    numero numeric(3,0) NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.lobby;
       public         heap    postgres    false                       1259    24796    local_alimentacao    TABLE     j   CREATE TABLE public.local_alimentacao (
    id character(10) NOT NULL,
    nicho character varying(30)
);
 %   DROP TABLE public.local_alimentacao;
       public         heap    postgres    false                       1259    24801    loja    TABLE     ]   CREATE TABLE public.loja (
    id character(10) NOT NULL,
    nicho character varying(30)
);
    DROP TABLE public.loja;
       public         heap    postgres    false                       1259    24806    massagem    TABLE     c   CREATE TABLE public.massagem (
    numero character(6) NOT NULL,
    tipo character varying(15)
);
    DROP TABLE public.massagem;
       public         heap    postgres    false            	           1259    24811    nota_fiscal    TABLE       CREATE TABLE public.nota_fiscal (
    id character(10) NOT NULL,
    valor_total numeric(8,2) NOT NULL,
    descontos numeric(8,0),
    multa numeric(8,0),
    data_limite date NOT NULL,
    quitada character(1) NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.nota_fiscal;
       public         heap    postgres    false            
           1259    24816    oferece    TABLE     l   CREATE TABLE public.oferece (
    numero numeric(10,0) NOT NULL,
    nome character varying(10) NOT NULL
);
    DROP TABLE public.oferece;
       public         heap    postgres    false                       1259    24821 	   pagamento    TABLE       CREATE TABLE public.pagamento (
    id character(10) NOT NULL,
    cnpj_destinatario character(18) NOT NULL,
    valor numeric(7,2) NOT NULL,
    referencia character varying(30) NOT NULL,
    data_pagamento date NOT NULL,
    cnpj character(18) NOT NULL
);
    DROP TABLE public.pagamento;
       public         heap    postgres    false                       1259    24836    peca    TABLE     �   CREATE TABLE public.peca (
    nome character varying(30) NOT NULL,
    valor numeric(3,2) NOT NULL,
    data date NOT NULL,
    horario character(6) NOT NULL,
    id character(10) NOT NULL
);
    DROP TABLE public.peca;
       public         heap    postgres    false                       1259    24826    permite    TABLE     c   CREATE TABLE public.permite (
    numero numeric(10,0) NOT NULL,
    cpf character(14) NOT NULL
);
    DROP TABLE public.permite;
       public         heap    postgres    false                       1259    24831    personal_trainer    TABLE     �   CREATE TABLE public.personal_trainer (
    cpf character(14) NOT NULL,
    nome character varying(30) NOT NULL,
    formacao character varying(30),
    valorhora numeric(4,2) NOT NULL
);
 $   DROP TABLE public.personal_trainer;
       public         heap    postgres    false                       1259    24841    piscina    TABLE     �   CREATE TABLE public.piscina (
    numero numeric(10,0) NOT NULL,
    tipo character varying(30) NOT NULL,
    profundidade numeric(3,2) NOT NULL,
    data_ultima_limpeza date NOT NULL
);
    DROP TABLE public.piscina;
       public         heap    postgres    false                       1259    24846 	   principal    TABLE     �   CREATE TABLE public.principal (
    cpf character(14) NOT NULL,
    id character(10) NOT NULL,
    forma_pagamento character varying(30) NOT NULL
);
    DROP TABLE public.principal;
       public         heap    postgres    false                       1259    24853    produto_frigobar    TABLE     �   CREATE TABLE public.produto_frigobar (
    id character(10) NOT NULL,
    nome character varying(30) NOT NULL,
    valorunidade numeric(4,2) NOT NULL
);
 $   DROP TABLE public.produto_frigobar;
       public         heap    postgres    false                       1259    24858    rede    TABLE     �   CREATE TABLE public.rede (
    cnpj character(18) NOT NULL,
    nome_real character varying(30) NOT NULL,
    nome_fantasia character varying(30) NOT NULL
);
    DROP TABLE public.rede;
       public         heap    postgres    false                       1259    24863    rede_social    TABLE     &  CREATE TABLE public.rede_social (
    nome character varying(30) NOT NULL,
    perfil character varying(30) NOT NULL,
    numero_seguidores numeric(8,0),
    media_curtidas numeric(8,0),
    youtube character varying(30),
    instagram character varying(30),
    cnpj character(18) NOT NULL
);
    DROP TABLE public.rede_social;
       public         heap    postgres    false                       1259    24868    refeicao    TABLE     �   CREATE TABLE public.refeicao (
    nome character varying(10) NOT NULL,
    horario character(13) NOT NULL,
    valor numeric(4,2) NOT NULL
);
    DROP TABLE public.refeicao;
       public         heap    postgres    false                       1259    24873 
   requisicao    TABLE     �  CREATE TABLE public.requisicao (
    id character varying(10) NOT NULL,
    unidade character varying(30) NOT NULL,
    origem character varying(18) NOT NULL,
    dependencia character varying(30) NOT NULL,
    data_inicio date NOT NULL,
    data_fim date,
    classificacao character varying(30) NOT NULL,
    complemento character varying(100) NOT NULL,
    registro_digital character varying(10) NOT NULL,
    cpf character(14) NOT NULL
);
    DROP TABLE public.requisicao;
       public         heap    postgres    false                       1259    24878    reserva    TABLE     �   CREATE TABLE public.reserva (
    numero numeric(10,0) NOT NULL,
    cpf character(14) NOT NULL,
    data_check_in date NOT NULL,
    data_check_out date NOT NULL,
    pontos_gerados numeric(6,0) NOT NULL
);
    DROP TABLE public.reserva;
       public         heap    postgres    false                       1259    24883    restaurante    TABLE     �   CREATE TABLE public.restaurante (
    numero numeric(10,0) NOT NULL,
    capacidade_maxima numeric(4,0),
    status character varying(30) NOT NULL
);
    DROP TABLE public.restaurante;
       public         heap    postgres    false                       1259    24888    robo_social    TABLE     �   CREATE TABLE public.robo_social (
    id character(10) NOT NULL,
    data_ultima_manutencao date NOT NULL,
    status character varying(30) NOT NULL
);
    DROP TABLE public.robo_social;
       public         heap    postgres    false                       1259    24893    sala    TABLE     �   CREATE TABLE public.sala (
    numero numeric(6,0) NOT NULL,
    quantidade_banheiros numeric(2,0),
    cozinha character(1),
    quantidade_televisao numeric(2,0),
    quantidade_ventiladores numeric(2,0),
    quantidade_ar_condicionado numeric(2,0)
);
    DROP TABLE public.sala;
       public         heap    postgres    false                       1259    24898    sala_eventos    TABLE     u   CREATE TABLE public.sala_eventos (
    numero numeric(10,0) NOT NULL,
    capacidade_maxima numeric(5,0) NOT NULL
);
     DROP TABLE public.sala_eventos;
       public         heap    postgres    false                       1259    24903    seguidor    TABLE     �   CREATE TABLE public.seguidor (
    e_mail character varying(30) NOT NULL,
    perfil character varying(30) NOT NULL,
    nome character varying(30)
);
    DROP TABLE public.seguidor;
       public         heap    postgres    false                       1259    24908    servico_de_quarto    TABLE     �   CREATE TABLE public.servico_de_quarto (
    id character(10) NOT NULL,
    item character varying(30),
    data character(10) NOT NULL,
    entregador character varying(30) NOT NULL
);
 %   DROP TABLE public.servico_de_quarto;
       public         heap    postgres    false                       1259    24913    sessao_terapia_ocupacional    TABLE        CREATE TABLE public.sessao_terapia_ocupacional (
    data date NOT NULL,
    horario character(6) NOT NULL,
    duracao character varying(6) NOT NULL,
    objetivo character varying(30),
    capacidade_maxima numeric(4,0),
    id character(10) NOT NULL
);
 .   DROP TABLE public.sessao_terapia_ocupacional;
       public         heap    postgres    false                       1259    24918    sorteio    TABLE     �   CREATE TABLE public.sorteio (
    id character(10) NOT NULL,
    item character varying(20) NOT NULL,
    quantidade numeric(2,0) NOT NULL,
    data date NOT NULL,
    horario character varying(6) NOT NULL,
    nome character varying(30) NOT NULL
);
    DROP TABLE public.sorteio;
       public         heap    postgres    false                       1259    24923    spa    TABLE     �   CREATE TABLE public.spa (
    numero numeric(4,0) NOT NULL,
    id character(10) NOT NULL,
    nome character varying(30),
    valordia numeric(4,2) NOT NULL
);
    DROP TABLE public.spa;
       public         heap    postgres    false                        1259    24930    teatro    TABLE     k   CREATE TABLE public.teatro (
    id character(10) NOT NULL,
    capacidade_maxima numeric(5,0) NOT NULL
);
    DROP TABLE public.teatro;
       public         heap    postgres    false            !           1259    24935 
   tratamento    TABLE     �   CREATE TABLE public.tratamento (
    numero character(6) NOT NULL,
    duracao character varying(6),
    exe_numero numeric(4,0) NOT NULL
);
    DROP TABLE public.tratamento;
       public         heap    postgres    false            "           1259    24940 
   usado_para    TABLE     n   CREATE TABLE public.usado_para (
    numero numeric(6,0) NOT NULL,
    nome character varying(30) NOT NULL
);
    DROP TABLE public.usado_para;
       public         heap    postgres    false            #           1259    24945    uso    TABLE     �   CREATE TABLE public.uso (
    nome character varying(30) NOT NULL,
    classificacao_indicativa character varying(5) NOT NULL
);
    DROP TABLE public.uso;
       public         heap    postgres    false            $           1259    24950    vaga    TABLE     �   CREATE TABLE public.vaga (
    for_numero numeric(10,0) NOT NULL,
    numero numeric(5,0) NOT NULL,
    status character varying(20) NOT NULL
);
    DROP TABLE public.vaga;
       public         heap    postgres    false            %           1259    24955    youtube    TABLE     v   CREATE TABLE public.youtube (
    nome character varying(30) NOT NULL,
    frequencia_videos character varying(10)
);
    DROP TABLE public.youtube;
       public         heap    postgres    false            �          0    24547    academia 
   TABLE DATA           v   COPY public.academia (numero, quantidade_equipamentos, ultima_manutencao_bebedouro, quantidade_chuveiros) FROM stdin;
    public          postgres    false    215   ��      �          0    24552 
   acomodacao 
   TABLE DATA           I   COPY public.acomodacao (numero, tipo, valor, ultima_limpeza) FROM stdin;
    public          postgres    false    216   �      �          0    24557    acumula 
   TABLE DATA           /   COPY public.acumula (nome, e_mail) FROM stdin;
    public          postgres    false    217   0�      �          0    24562    alimento 
   TABLE DATA           W   COPY public.alimento (id, nome, quantidade_desejada, quantidade_existente) FROM stdin;
    public          postgres    false    218   M�      �          0    24567    aluguel 
   TABLE DATA           c   COPY public.aluguel (id, pag_id, valor_total, valor_base, multa, data_pagamento, cnpj) FROM stdin;
    public          postgres    false    219   j�      �          0    24574 	   amenidade 
   TABLE DATA           )   COPY public.amenidade (tipo) FROM stdin;
    public          postgres    false    220   ��      �          0    24579    ar_livre 
   TABLE DATA           Q   COPY public.ar_livre (numero, churrasqueira, forno_a_lenha, freezer) FROM stdin;
    public          postgres    false    221   ��      �          0    24584    armazena 
   TABLE DATA           .   COPY public.armazena (a_a_id, id) FROM stdin;
    public          postgres    false    222   ��      �          0    24589    assalariado 
   TABLE DATA           G   COPY public.assalariado (cpf, horassemana, salario_mensal) FROM stdin;
    public          postgres    false    223   ަ      �          0    24601    autonomo 
   TABLE DATA           2   COPY public.autonomo (cpf, valorhora) FROM stdin;
    public          postgres    false    225   ��      �          0    24594    autorizacao 
   TABLE DATA           A   COPY public.autorizacao (id, nec_id, validade, cnpj) FROM stdin;
    public          postgres    false    224   �      �          0    24606 	   banho_pet 
   TABLE DATA           ^   COPY public.banho_pet (numero, nome_pet, telefone_dono, m2_agua_gastos, data, id) FROM stdin;
    public          postgres    false    226   5�      �          0    24611    beneficiado 
   TABLE DATA           0   COPY public.beneficiado (cpf, nome) FROM stdin;
    public          postgres    false    227   R�      �          0    24616    beneficiados 
   TABLE DATA           9   COPY public.beneficiados (cpf, numero, nome) FROM stdin;
    public          postgres    false    228   o�      �          0    24621 	   beneficio 
   TABLE DATA           0   COPY public.beneficio (nome, valor) FROM stdin;
    public          postgres    false    229   ��      �          0    24626    cafe_da_manha 
   TABLE DATA           <   COPY public.cafe_da_manha (id, reserva_de_mesa) FROM stdin;
    public          postgres    false    230   ��      �          0    24636    campanha 
   TABLE DATA           P   COPY public.campanha (id, nome, periodo, objetivo, verba, pro_nome) FROM stdin;
    public          postgres    false    232   Ƨ      �          0    24641    chatbot 
   TABLE DATA           N   COPY public.chatbot (registro_digital, cnpj, nome_avatar, versao) FROM stdin;
    public          postgres    false    233   �      �          0    24648    compra 
   TABLE DATA           ^   COPY public.compra (id, valor, horario, servico_de_quarto, cafe_da_manha, numero) FROM stdin;
    public          postgres    false    234    �                 0    24653    consome 
   TABLE DATA           G   COPY public.consome (numero, id, dia, horario, quantidade) FROM stdin;
    public          postgres    false    235   �      �          0    24631    data_status 
   TABLE DATA           ?   COPY public.data_status (numero, dia, mes, status) FROM stdin;
    public          postgres    false    231   :�                0    24658    delivery 
   TABLE DATA           e   COPY public.delivery (id, empresa_associada, data, horario, valor, tipo, fei_id, numero) FROM stdin;
    public          postgres    false    236   W�                0    24663    departamento 
   TABLE DATA           8   COPY public.departamento (numero, nome, id) FROM stdin;
    public          postgres    false    237   t�                0    24673    dependencia 
   TABLE DATA           �   COPY public.dependencia (numero, data_ultima_manutencao, id, sala_eventos, restaurante, piscina, empresa_turismo, acomodacao, academia) FROM stdin;
    public          postgres    false    239   ��                0    24668 
   dependente 
   TABLE DATA           H   COPY public.dependente (cpf, hospede_principal_responsavel) FROM stdin;
    public          postgres    false    238   ��                0    24678 	   dispoe_de 
   TABLE DATA           1   COPY public.dispoe_de (numero, tipo) FROM stdin;
    public          postgres    false    240   ˨                0    24683 	   documento 
   TABLE DATA           T   COPY public.documento (id, e_r_id, tipo, data_emissao, data_vencimento) FROM stdin;
    public          postgres    false    241   �      ;          0    24960    e_divulgada_por 
   TABLE DATA           4   COPY public.e_divulgada_por (cpf, nome) FROM stdin;
    public          postgres    false    294   �                0    24690    empresa_turismo 
   TABLE DATA           F   COPY public.empresa_turismo (numero, nome, especialidade) FROM stdin;
    public          postgres    false    242   "�                0    24695    espaco 
   TABLE DATA           m   COPY public.espaco (numero, nome, tamanho, valor, capacidade_maxima, sala, ar_livre, eng_numero) FROM stdin;
    public          postgres    false    243   ?�      	          0    24700    espaco_eventos 
   TABLE DATA           @   COPY public.espaco_eventos (numero, id, senha_wifi) FROM stdin;
    public          postgres    false    244   \�      
          0    24707    estabelecimento 
   TABLE DATA           p   COPY public.estabelecimento (id, nome, faturamento_mensal, numero, teatro, loja, local_alimentacao) FROM stdin;
    public          postgres    false    245   y�                0    24712    estadia_anterior 
   TABLE DATA           �   COPY public.estadia_anterior (id, responsavel, data_check_in, data_check_out, tipo_de_hospede, valor_gasto, unidade, acomodacao, pontos_gerados, cnpj) FROM stdin;
    public          postgres    false    246   ��                0    24717    evento 
   TABLE DATA           z   COPY public.evento (id, nome, cpf_responsavel, acesso, valor, dia, horario, classificacao_indicativa, numero) FROM stdin;
    public          postgres    false    247   ��                0    24722    funcionario 
   TABLE DATA           �   COPY public.funcionario (cpf, nome, data_nascimento, data_contratacao, genero, raca, cargo, autonomo, assalariado, numero) FROM stdin;
    public          postgres    false    248   Щ                0    24727    ganhador 
   TABLE DATA           1   COPY public.ganhador (id, cpf, nome) FROM stdin;
    public          postgres    false    249   ��                0    24732    garagem 
   TABLE DATA           P   COPY public.garagem (numero, tipo, capacidade_maxima, valordia, id) FROM stdin;
    public          postgres    false    250   
�                0    24762    hospede 
   TABLE DATA           s   COPY public.hospede (cpf, nome, e_mail, data_nascimento, genero, pod_cpf, principal, dependente, cnpj) FROM stdin;
    public          postgres    false    256   '�                0    24737    hotel 
   TABLE DATA           �   COPY public.hotel (id, categoria, estado, cidade, bairro, rua, numero, cep, nome_real, nome_fantasia, capacidade_maxima, area_m2, data_inauguracao, cnpj) FROM stdin;
    public          postgres    false    251   D�                0    24742    hotel_empresarial 
   TABLE DATA           Y   COPY public.hotel_empresarial (id, quantidade_salas_reuniao, qualidade_wifi) FROM stdin;
    public          postgres    false    252   a�                0    24747    hotel_familiar 
   TABLE DATA           Q   COPY public.hotel_familiar (id, brinquedos, salao_de_jogos_infantil) FROM stdin;
    public          postgres    false    253   ~�                0    24752    hotel_para_adulto 
   TABLE DATA              COPY public.hotel_para_adulto (id, quantidade_bares, quantidade_saunas, quantidade_adegas, salao_de_jogos_adultos) FROM stdin;
    public          postgres    false    254   ��                0    24757    hotel_para_pets 
   TABLE DATA           V   COPY public.hotel_para_pets (id, quantidade_patios, area_brinquedos_pets) FROM stdin;
    public          postgres    false    255   ��                0    24767    inclui 
   TABLE DATA           I   COPY public.inclui (for_numero, numero, i_a_numero, periodo) FROM stdin;
    public          postgres    false    257   ժ                0    24774    influenciador_parceiro 
   TABLE DATA           [   COPY public.influenciador_parceiro (cpf, nome, numero_seguidores, remuneracao) FROM stdin;
    public          postgres    false    258   �                0    24779 	   instagram 
   TABLE DATA           S   COPY public.instagram (nome, frequencia_stories, frequencia_postagens) FROM stdin;
    public          postgres    false    259   �                0    24784    limpeza_de_pele 
   TABLE DATA           B   COPY public.limpeza_de_pele (numero, produtos_usados) FROM stdin;
    public          postgres    false    260   ,�                0    24789    lobby 
   TABLE DATA           +   COPY public.lobby (numero, id) FROM stdin;
    public          postgres    false    261   I�                0    24796    local_alimentacao 
   TABLE DATA           6   COPY public.local_alimentacao (id, nicho) FROM stdin;
    public          postgres    false    262   f�                0    24801    loja 
   TABLE DATA           )   COPY public.loja (id, nicho) FROM stdin;
    public          postgres    false    263   ��                0    24806    massagem 
   TABLE DATA           0   COPY public.massagem (numero, tipo) FROM stdin;
    public          postgres    false    264   ��                0    24811    nota_fiscal 
   TABLE DATA           d   COPY public.nota_fiscal (id, valor_total, descontos, multa, data_limite, quitada, cnpj) FROM stdin;
    public          postgres    false    265   ��                0    24816    oferece 
   TABLE DATA           /   COPY public.oferece (numero, nome) FROM stdin;
    public          postgres    false    266   ګ                 0    24821 	   pagamento 
   TABLE DATA           c   COPY public.pagamento (id, cnpj_destinatario, valor, referencia, data_pagamento, cnpj) FROM stdin;
    public          postgres    false    267   ��      #          0    24836    peca 
   TABLE DATA           >   COPY public.peca (nome, valor, data, horario, id) FROM stdin;
    public          postgres    false    270   �      !          0    24826    permite 
   TABLE DATA           .   COPY public.permite (numero, cpf) FROM stdin;
    public          postgres    false    268   1�      "          0    24831    personal_trainer 
   TABLE DATA           J   COPY public.personal_trainer (cpf, nome, formacao, valorhora) FROM stdin;
    public          postgres    false    269   N�      $          0    24841    piscina 
   TABLE DATA           R   COPY public.piscina (numero, tipo, profundidade, data_ultima_limpeza) FROM stdin;
    public          postgres    false    271   k�      %          0    24846 	   principal 
   TABLE DATA           =   COPY public.principal (cpf, id, forma_pagamento) FROM stdin;
    public          postgres    false    272   ��      &          0    24853    produto_frigobar 
   TABLE DATA           B   COPY public.produto_frigobar (id, nome, valorunidade) FROM stdin;
    public          postgres    false    273   ��      '          0    24858    rede 
   TABLE DATA           >   COPY public.rede (cnpj, nome_real, nome_fantasia) FROM stdin;
    public          postgres    false    274   ¬      (          0    24863    rede_social 
   TABLE DATA           p   COPY public.rede_social (nome, perfil, numero_seguidores, media_curtidas, youtube, instagram, cnpj) FROM stdin;
    public          postgres    false    275   ߬      )          0    24868    refeicao 
   TABLE DATA           8   COPY public.refeicao (nome, horario, valor) FROM stdin;
    public          postgres    false    276   ��      *          0    24873 
   requisicao 
   TABLE DATA           �   COPY public.requisicao (id, unidade, origem, dependencia, data_inicio, data_fim, classificacao, complemento, registro_digital, cpf) FROM stdin;
    public          postgres    false    277   �      +          0    24878    reserva 
   TABLE DATA           ]   COPY public.reserva (numero, cpf, data_check_in, data_check_out, pontos_gerados) FROM stdin;
    public          postgres    false    278   6�      ,          0    24883    restaurante 
   TABLE DATA           H   COPY public.restaurante (numero, capacidade_maxima, status) FROM stdin;
    public          postgres    false    279   S�      -          0    24888    robo_social 
   TABLE DATA           I   COPY public.robo_social (id, data_ultima_manutencao, status) FROM stdin;
    public          postgres    false    280   p�      .          0    24893    sala 
   TABLE DATA           �   COPY public.sala (numero, quantidade_banheiros, cozinha, quantidade_televisao, quantidade_ventiladores, quantidade_ar_condicionado) FROM stdin;
    public          postgres    false    281   ��      /          0    24898    sala_eventos 
   TABLE DATA           A   COPY public.sala_eventos (numero, capacidade_maxima) FROM stdin;
    public          postgres    false    282   ��      0          0    24903    seguidor 
   TABLE DATA           8   COPY public.seguidor (e_mail, perfil, nome) FROM stdin;
    public          postgres    false    283   ǭ      1          0    24908    servico_de_quarto 
   TABLE DATA           G   COPY public.servico_de_quarto (id, item, data, entregador) FROM stdin;
    public          postgres    false    284   �      2          0    24913    sessao_terapia_ocupacional 
   TABLE DATA           m   COPY public.sessao_terapia_ocupacional (data, horario, duracao, objetivo, capacidade_maxima, id) FROM stdin;
    public          postgres    false    285   �      3          0    24918    sorteio 
   TABLE DATA           L   COPY public.sorteio (id, item, quantidade, data, horario, nome) FROM stdin;
    public          postgres    false    286   �      4          0    24923    spa 
   TABLE DATA           9   COPY public.spa (numero, id, nome, valordia) FROM stdin;
    public          postgres    false    287   ;�      5          0    24930    teatro 
   TABLE DATA           7   COPY public.teatro (id, capacidade_maxima) FROM stdin;
    public          postgres    false    288   X�      6          0    24935 
   tratamento 
   TABLE DATA           A   COPY public.tratamento (numero, duracao, exe_numero) FROM stdin;
    public          postgres    false    289   u�      7          0    24940 
   usado_para 
   TABLE DATA           2   COPY public.usado_para (numero, nome) FROM stdin;
    public          postgres    false    290   ��      8          0    24945    uso 
   TABLE DATA           =   COPY public.uso (nome, classificacao_indicativa) FROM stdin;
    public          postgres    false    291   ��      9          0    24950    vaga 
   TABLE DATA           :   COPY public.vaga (for_numero, numero, status) FROM stdin;
    public          postgres    false    292   ̮      :          0    24955    youtube 
   TABLE DATA           :   COPY public.youtube (nome, frequencia_videos) FROM stdin;
    public          postgres    false    293   �      V           2606    24551    academia id_acade_depen_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.academia
    ADD CONSTRAINT id_acade_depen_id PRIMARY KEY (numero);
 D   ALTER TABLE ONLY public.academia DROP CONSTRAINT id_acade_depen_id;
       public            postgres    false    215            X           2606    24556    acomodacao id_acomo_depen_id 
   CONSTRAINT     ^   ALTER TABLE ONLY public.acomodacao
    ADD CONSTRAINT id_acomo_depen_id PRIMARY KEY (numero);
 F   ALTER TABLE ONLY public.acomodacao DROP CONSTRAINT id_acomo_depen_id;
       public            postgres    false    216            Z           2606    24561    acumula id_acumula_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.acumula
    ADD CONSTRAINT id_acumula_id PRIMARY KEY (e_mail, nome);
 ?   ALTER TABLE ONLY public.acumula DROP CONSTRAINT id_acumula_id;
       public            postgres    false    217    217            \           2606    24566    alimento id_alimento_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.alimento
    ADD CONSTRAINT id_alimento_id PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.alimento DROP CONSTRAINT id_alimento_id;
       public            postgres    false    218            ^           2606    24571    aluguel id_aluguel_id 
   CONSTRAINT     S   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT id_aluguel_id PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT id_aluguel_id;
       public            postgres    false    219            b           2606    24578    amenidade id_amenidade_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.amenidade
    ADD CONSTRAINT id_amenidade_id PRIMARY KEY (tipo);
 C   ALTER TABLE ONLY public.amenidade DROP CONSTRAINT id_amenidade_id;
       public            postgres    false    220            d           2606    24583    ar_livre id_ar_li_espac_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.ar_livre
    ADD CONSTRAINT id_ar_li_espac_id PRIMARY KEY (numero);
 D   ALTER TABLE ONLY public.ar_livre DROP CONSTRAINT id_ar_li_espac_id;
       public            postgres    false    221            f           2606    24588    armazena id_armazena_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.armazena
    ADD CONSTRAINT id_armazena_id PRIMARY KEY (a_a_id, id);
 A   ALTER TABLE ONLY public.armazena DROP CONSTRAINT id_armazena_id;
       public            postgres    false    222    222            h           2606    24593    assalariado id_assal_funci_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.assalariado
    ADD CONSTRAINT id_assal_funci_id PRIMARY KEY (cpf);
 G   ALTER TABLE ONLY public.assalariado DROP CONSTRAINT id_assal_funci_id;
       public            postgres    false    223            n           2606    24605    autonomo id_auton_funci_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.autonomo
    ADD CONSTRAINT id_auton_funci_id PRIMARY KEY (cpf);
 D   ALTER TABLE ONLY public.autonomo DROP CONSTRAINT id_auton_funci_id;
       public            postgres    false    225            j           2606    24598    autorizacao id_autorizacao_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.autorizacao
    ADD CONSTRAINT id_autorizacao_id PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.autorizacao DROP CONSTRAINT id_autorizacao_id;
       public            postgres    false    224            p           2606    24610    banho_pet id_banho_pet_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.banho_pet
    ADD CONSTRAINT id_banho_pet_id PRIMARY KEY (numero);
 C   ALTER TABLE ONLY public.banho_pet DROP CONSTRAINT id_banho_pet_id;
       public            postgres    false    226            r           2606    24615    beneficiado id_beneficiado_id 
   CONSTRAINT     b   ALTER TABLE ONLY public.beneficiado
    ADD CONSTRAINT id_beneficiado_id PRIMARY KEY (cpf, nome);
 G   ALTER TABLE ONLY public.beneficiado DROP CONSTRAINT id_beneficiado_id;
       public            postgres    false    227    227            t           2606    24620    beneficiados id_beneficiados_id 
   CONSTRAINT     l   ALTER TABLE ONLY public.beneficiados
    ADD CONSTRAINT id_beneficiados_id PRIMARY KEY (cpf, numero, nome);
 I   ALTER TABLE ONLY public.beneficiados DROP CONSTRAINT id_beneficiados_id;
       public            postgres    false    228    228    228            v           2606    24625    beneficio id_beneficio_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.beneficio
    ADD CONSTRAINT id_beneficio_id PRIMARY KEY (nome);
 C   ALTER TABLE ONLY public.beneficio DROP CONSTRAINT id_beneficio_id;
       public            postgres    false    229            x           2606    24630    cafe_da_manha id_cafe__compr_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cafe_da_manha
    ADD CONSTRAINT id_cafe__compr_id PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.cafe_da_manha DROP CONSTRAINT id_cafe__compr_id;
       public            postgres    false    230            |           2606    24640    campanha id_campanha_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.campanha
    ADD CONSTRAINT id_campanha_id PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.campanha DROP CONSTRAINT id_campanha_id;
       public            postgres    false    232            ~           2606    24645    chatbot id_chatbot_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.chatbot
    ADD CONSTRAINT id_chatbot_id PRIMARY KEY (registro_digital);
 ?   ALTER TABLE ONLY public.chatbot DROP CONSTRAINT id_chatbot_id;
       public            postgres    false    233            �           2606    24652    compra id_compra_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT id_compra_id PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.compra DROP CONSTRAINT id_compra_id;
       public            postgres    false    234            �           2606    24657    consome id_consome_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.consome
    ADD CONSTRAINT id_consome_id PRIMARY KEY (id, numero);
 ?   ALTER TABLE ONLY public.consome DROP CONSTRAINT id_consome_id;
       public            postgres    false    235    235            z           2606    24635    data_status id_data_status_id 
   CONSTRAINT     i   ALTER TABLE ONLY public.data_status
    ADD CONSTRAINT id_data_status_id PRIMARY KEY (numero, dia, mes);
 G   ALTER TABLE ONLY public.data_status DROP CONSTRAINT id_data_status_id;
       public            postgres    false    231    231    231            �           2606    24662    delivery id_delivery_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT id_delivery_id PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.delivery DROP CONSTRAINT id_delivery_id;
       public            postgres    false    236            �           2606    24667    departamento id_departamento_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT id_departamento_id PRIMARY KEY (numero);
 I   ALTER TABLE ONLY public.departamento DROP CONSTRAINT id_departamento_id;
       public            postgres    false    237            �           2606    24672    dependente id_depen_hospe_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.dependente
    ADD CONSTRAINT id_depen_hospe_id PRIMARY KEY (cpf);
 F   ALTER TABLE ONLY public.dependente DROP CONSTRAINT id_depen_hospe_id;
       public            postgres    false    238            �           2606    24677    dependencia id_dependencia_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.dependencia
    ADD CONSTRAINT id_dependencia_id PRIMARY KEY (numero);
 G   ALTER TABLE ONLY public.dependencia DROP CONSTRAINT id_dependencia_id;
       public            postgres    false    239            �           2606    24682    dispoe_de id_dispoe_de_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.dispoe_de
    ADD CONSTRAINT id_dispoe_de_id PRIMARY KEY (tipo, numero);
 C   ALTER TABLE ONLY public.dispoe_de DROP CONSTRAINT id_dispoe_de_id;
       public            postgres    false    240    240            �           2606    24687    documento id_documento_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.documento
    ADD CONSTRAINT id_documento_id PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.documento DROP CONSTRAINT id_documento_id;
       public            postgres    false    241                       2606    24964 %   e_divulgada_por id_e_divulgada_por_id 
   CONSTRAINT     j   ALTER TABLE ONLY public.e_divulgada_por
    ADD CONSTRAINT id_e_divulgada_por_id PRIMARY KEY (cpf, nome);
 O   ALTER TABLE ONLY public.e_divulgada_por DROP CONSTRAINT id_e_divulgada_por_id;
       public            postgres    false    294    294            �           2606    24694 !   empresa_turismo id_empre_depen_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.empresa_turismo
    ADD CONSTRAINT id_empre_depen_id PRIMARY KEY (numero);
 K   ALTER TABLE ONLY public.empresa_turismo DROP CONSTRAINT id_empre_depen_id;
       public            postgres    false    242            �           2606    24704 #   espaco_eventos id_espaco_eventos_id 
   CONSTRAINT     e   ALTER TABLE ONLY public.espaco_eventos
    ADD CONSTRAINT id_espaco_eventos_id PRIMARY KEY (numero);
 M   ALTER TABLE ONLY public.espaco_eventos DROP CONSTRAINT id_espaco_eventos_id;
       public            postgres    false    244            �           2606    24699    espaco id_espaco_id 
   CONSTRAINT     U   ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT id_espaco_id PRIMARY KEY (numero);
 =   ALTER TABLE ONLY public.espaco DROP CONSTRAINT id_espaco_id;
       public            postgres    false    243            �           2606    24711 %   estabelecimento id_estabelecimento_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.estabelecimento
    ADD CONSTRAINT id_estabelecimento_id PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.estabelecimento DROP CONSTRAINT id_estabelecimento_id;
       public            postgres    false    245            �           2606    24716 '   estadia_anterior id_estadia_anterior_id 
   CONSTRAINT     e   ALTER TABLE ONLY public.estadia_anterior
    ADD CONSTRAINT id_estadia_anterior_id PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.estadia_anterior DROP CONSTRAINT id_estadia_anterior_id;
       public            postgres    false    246            �           2606    24721    evento id_evento_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.evento
    ADD CONSTRAINT id_evento_id PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.evento DROP CONSTRAINT id_evento_id;
       public            postgres    false    247            �           2606    24726    funcionario id_funcionario_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT id_funcionario_id PRIMARY KEY (cpf);
 G   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT id_funcionario_id;
       public            postgres    false    248            �           2606    24731    ganhador id_ganhador_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ganhador
    ADD CONSTRAINT id_ganhador_id PRIMARY KEY (id, cpf);
 A   ALTER TABLE ONLY public.ganhador DROP CONSTRAINT id_ganhador_id;
       public            postgres    false    249    249            �           2606    24736    garagem id_garagem_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.garagem
    ADD CONSTRAINT id_garagem_id PRIMARY KEY (numero);
 ?   ALTER TABLE ONLY public.garagem DROP CONSTRAINT id_garagem_id;
       public            postgres    false    250            �           2606    24766    hospede id_hospede_id 
   CONSTRAINT     T   ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT id_hospede_id PRIMARY KEY (cpf);
 ?   ALTER TABLE ONLY public.hospede DROP CONSTRAINT id_hospede_id;
       public            postgres    false    256            �           2606    24756 %   hotel_para_adulto id_hotel_hotel_1_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.hotel_para_adulto
    ADD CONSTRAINT id_hotel_hotel_1_id PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.hotel_para_adulto DROP CONSTRAINT id_hotel_hotel_1_id;
       public            postgres    false    254            �           2606    24751 "   hotel_familiar id_hotel_hotel_2_id 
   CONSTRAINT     `   ALTER TABLE ONLY public.hotel_familiar
    ADD CONSTRAINT id_hotel_hotel_2_id PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.hotel_familiar DROP CONSTRAINT id_hotel_hotel_2_id;
       public            postgres    false    253            �           2606    24746 %   hotel_empresarial id_hotel_hotel_3_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.hotel_empresarial
    ADD CONSTRAINT id_hotel_hotel_3_id PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.hotel_empresarial DROP CONSTRAINT id_hotel_hotel_3_id;
       public            postgres    false    252            �           2606    24761 !   hotel_para_pets id_hotel_hotel_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.hotel_para_pets
    ADD CONSTRAINT id_hotel_hotel_id PRIMARY KEY (id);
 K   ALTER TABLE ONLY public.hotel_para_pets DROP CONSTRAINT id_hotel_hotel_id;
       public            postgres    false    255            �           2606    24741    hotel id_hotel_id 
   CONSTRAINT     O   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT id_hotel_id PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.hotel DROP CONSTRAINT id_hotel_id;
       public            postgres    false    251            �           2606    24771    inclui id_inclu_vaga_id 
   CONSTRAINT     e   ALTER TABLE ONLY public.inclui
    ADD CONSTRAINT id_inclu_vaga_id PRIMARY KEY (for_numero, numero);
 A   ALTER TABLE ONLY public.inclui DROP CONSTRAINT id_inclu_vaga_id;
       public            postgres    false    257    257            �           2606    24778 3   influenciador_parceiro id_influenciador_parceiro_id 
   CONSTRAINT     r   ALTER TABLE ONLY public.influenciador_parceiro
    ADD CONSTRAINT id_influenciador_parceiro_id PRIMARY KEY (cpf);
 ]   ALTER TABLE ONLY public.influenciador_parceiro DROP CONSTRAINT id_influenciador_parceiro_id;
       public            postgres    false    258            �           2606    24783    instagram id_insta_rede__id 
   CONSTRAINT     [   ALTER TABLE ONLY public.instagram
    ADD CONSTRAINT id_insta_rede__id PRIMARY KEY (nome);
 E   ALTER TABLE ONLY public.instagram DROP CONSTRAINT id_insta_rede__id;
       public            postgres    false    259            �           2606    24788 !   limpeza_de_pele id_limpe_trata_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.limpeza_de_pele
    ADD CONSTRAINT id_limpe_trata_id PRIMARY KEY (numero);
 K   ALTER TABLE ONLY public.limpeza_de_pele DROP CONSTRAINT id_limpe_trata_id;
       public            postgres    false    260            �           2606    24793    lobby id_lobby_id 
   CONSTRAINT     S   ALTER TABLE ONLY public.lobby
    ADD CONSTRAINT id_lobby_id PRIMARY KEY (numero);
 ;   ALTER TABLE ONLY public.lobby DROP CONSTRAINT id_lobby_id;
       public            postgres    false    261            �           2606    24800 #   local_alimentacao id_local_estab_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.local_alimentacao
    ADD CONSTRAINT id_local_estab_id PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.local_alimentacao DROP CONSTRAINT id_local_estab_id;
       public            postgres    false    262            �           2606    24805    loja id_loja_estab_id 
   CONSTRAINT     S   ALTER TABLE ONLY public.loja
    ADD CONSTRAINT id_loja_estab_id PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.loja DROP CONSTRAINT id_loja_estab_id;
       public            postgres    false    263            �           2606    24810    massagem id_massa_trata_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.massagem
    ADD CONSTRAINT id_massa_trata_id PRIMARY KEY (numero);
 D   ALTER TABLE ONLY public.massagem DROP CONSTRAINT id_massa_trata_id;
       public            postgres    false    264            �           2606    24815    nota_fiscal id_nota_fiscal_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.nota_fiscal
    ADD CONSTRAINT id_nota_fiscal_id PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.nota_fiscal DROP CONSTRAINT id_nota_fiscal_id;
       public            postgres    false    265            �           2606    24820    oferece id_oferece_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.oferece
    ADD CONSTRAINT id_oferece_id PRIMARY KEY (nome, numero);
 ?   ALTER TABLE ONLY public.oferece DROP CONSTRAINT id_oferece_id;
       public            postgres    false    266    266            �           2606    24825    pagamento id_pagamento_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT id_pagamento_id PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT id_pagamento_id;
       public            postgres    false    267            �           2606    24840    peca id_peca_id 
   CONSTRAINT     ^   ALTER TABLE ONLY public.peca
    ADD CONSTRAINT id_peca_id PRIMARY KEY (nome, data, horario);
 9   ALTER TABLE ONLY public.peca DROP CONSTRAINT id_peca_id;
       public            postgres    false    270    270    270            �           2606    24830    permite id_permite_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.permite
    ADD CONSTRAINT id_permite_id PRIMARY KEY (cpf, numero);
 ?   ALTER TABLE ONLY public.permite DROP CONSTRAINT id_permite_id;
       public            postgres    false    268    268            �           2606    24835 '   personal_trainer id_personal_trainer_id 
   CONSTRAINT     f   ALTER TABLE ONLY public.personal_trainer
    ADD CONSTRAINT id_personal_trainer_id PRIMARY KEY (cpf);
 Q   ALTER TABLE ONLY public.personal_trainer DROP CONSTRAINT id_personal_trainer_id;
       public            postgres    false    269            �           2606    24845    piscina id_pisci_depen_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.piscina
    ADD CONSTRAINT id_pisci_depen_id PRIMARY KEY (numero);
 C   ALTER TABLE ONLY public.piscina DROP CONSTRAINT id_pisci_depen_id;
       public            postgres    false    271            �           2606    24850    principal id_princ_hospe_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.principal
    ADD CONSTRAINT id_princ_hospe_id PRIMARY KEY (cpf);
 E   ALTER TABLE ONLY public.principal DROP CONSTRAINT id_princ_hospe_id;
       public            postgres    false    272            �           2606    24857 '   produto_frigobar id_produto_frigobar_id 
   CONSTRAINT     e   ALTER TABLE ONLY public.produto_frigobar
    ADD CONSTRAINT id_produto_frigobar_id PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.produto_frigobar DROP CONSTRAINT id_produto_frigobar_id;
       public            postgres    false    273            �           2606    24862    rede id_rede_id 
   CONSTRAINT     O   ALTER TABLE ONLY public.rede
    ADD CONSTRAINT id_rede_id PRIMARY KEY (cnpj);
 9   ALTER TABLE ONLY public.rede DROP CONSTRAINT id_rede_id;
       public            postgres    false    274            �           2606    24867    rede_social id_rede_social_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.rede_social
    ADD CONSTRAINT id_rede_social_id PRIMARY KEY (nome);
 G   ALTER TABLE ONLY public.rede_social DROP CONSTRAINT id_rede_social_id;
       public            postgres    false    275            �           2606    24872    refeicao id_refeicao_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.refeicao
    ADD CONSTRAINT id_refeicao_id PRIMARY KEY (nome);
 A   ALTER TABLE ONLY public.refeicao DROP CONSTRAINT id_refeicao_id;
       public            postgres    false    276            �           2606    24877    requisicao id_requisicao_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT id_requisicao_id PRIMARY KEY (id);
 E   ALTER TABLE ONLY public.requisicao DROP CONSTRAINT id_requisicao_id;
       public            postgres    false    277            �           2606    24882    reserva id_reserva_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT id_reserva_id PRIMARY KEY (cpf, numero);
 ?   ALTER TABLE ONLY public.reserva DROP CONSTRAINT id_reserva_id;
       public            postgres    false    278    278            �           2606    24887    restaurante id_resta_depen_id 
   CONSTRAINT     _   ALTER TABLE ONLY public.restaurante
    ADD CONSTRAINT id_resta_depen_id PRIMARY KEY (numero);
 G   ALTER TABLE ONLY public.restaurante DROP CONSTRAINT id_resta_depen_id;
       public            postgres    false    279            �           2606    24892    robo_social id_robo_social_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.robo_social
    ADD CONSTRAINT id_robo_social_id PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.robo_social DROP CONSTRAINT id_robo_social_id;
       public            postgres    false    280            �           2606    24902    sala_eventos id_sala__depen_id 
   CONSTRAINT     `   ALTER TABLE ONLY public.sala_eventos
    ADD CONSTRAINT id_sala__depen_id PRIMARY KEY (numero);
 H   ALTER TABLE ONLY public.sala_eventos DROP CONSTRAINT id_sala__depen_id;
       public            postgres    false    282            �           2606    24897    sala id_sala_espac_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT id_sala_espac_id PRIMARY KEY (numero);
 ?   ALTER TABLE ONLY public.sala DROP CONSTRAINT id_sala_espac_id;
       public            postgres    false    281            �           2606    24907    seguidor id_seguidor_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.seguidor
    ADD CONSTRAINT id_seguidor_id PRIMARY KEY (perfil);
 A   ALTER TABLE ONLY public.seguidor DROP CONSTRAINT id_seguidor_id;
       public            postgres    false    283            �           2606    24912 #   servico_de_quarto id_servi_compr_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.servico_de_quarto
    ADD CONSTRAINT id_servi_compr_id PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.servico_de_quarto DROP CONSTRAINT id_servi_compr_id;
       public            postgres    false    284            �           2606    24917 ;   sessao_terapia_ocupacional id_sessao_terapia_ocupacional_id 
   CONSTRAINT     �   ALTER TABLE ONLY public.sessao_terapia_ocupacional
    ADD CONSTRAINT id_sessao_terapia_ocupacional_id PRIMARY KEY (data, horario);
 e   ALTER TABLE ONLY public.sessao_terapia_ocupacional DROP CONSTRAINT id_sessao_terapia_ocupacional_id;
       public            postgres    false    285    285            �           2606    24922    sorteio id_sorteio_id 
   CONSTRAINT     S   ALTER TABLE ONLY public.sorteio
    ADD CONSTRAINT id_sorteio_id PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.sorteio DROP CONSTRAINT id_sorteio_id;
       public            postgres    false    286            �           2606    24927    spa id_spa_id 
   CONSTRAINT     O   ALTER TABLE ONLY public.spa
    ADD CONSTRAINT id_spa_id PRIMARY KEY (numero);
 7   ALTER TABLE ONLY public.spa DROP CONSTRAINT id_spa_id;
       public            postgres    false    287            �           2606    24934    teatro id_teatr_estab_id 
   CONSTRAINT     V   ALTER TABLE ONLY public.teatro
    ADD CONSTRAINT id_teatr_estab_id PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.teatro DROP CONSTRAINT id_teatr_estab_id;
       public            postgres    false    288            �           2606    24939    tratamento id_tratamento_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.tratamento
    ADD CONSTRAINT id_tratamento_id PRIMARY KEY (numero);
 E   ALTER TABLE ONLY public.tratamento DROP CONSTRAINT id_tratamento_id;
       public            postgres    false    289            �           2606    24944    usado_para id_usado_para_id 
   CONSTRAINT     c   ALTER TABLE ONLY public.usado_para
    ADD CONSTRAINT id_usado_para_id PRIMARY KEY (numero, nome);
 E   ALTER TABLE ONLY public.usado_para DROP CONSTRAINT id_usado_para_id;
       public            postgres    false    290    290                        2606    24949    uso id_uso_id 
   CONSTRAINT     M   ALTER TABLE ONLY public.uso
    ADD CONSTRAINT id_uso_id PRIMARY KEY (nome);
 7   ALTER TABLE ONLY public.uso DROP CONSTRAINT id_uso_id;
       public            postgres    false    291                       2606    24954    vaga id_vaga_id 
   CONSTRAINT     ]   ALTER TABLE ONLY public.vaga
    ADD CONSTRAINT id_vaga_id PRIMARY KEY (for_numero, numero);
 9   ALTER TABLE ONLY public.vaga DROP CONSTRAINT id_vaga_id;
       public            postgres    false    292    292                       2606    24959    youtube id_youtu_rede__id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.youtube
    ADD CONSTRAINT id_youtu_rede__id PRIMARY KEY (nome);
 C   ALTER TABLE ONLY public.youtube DROP CONSTRAINT id_youtu_rede__id;
       public            postgres    false    293            `           2606    24573    aluguel sid_alugu_estab_id 
   CONSTRAINT     W   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT sid_alugu_estab_id UNIQUE (pag_id);
 D   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT sid_alugu_estab_id;
       public            postgres    false    219            l           2606    24600    autorizacao sid_autor_estab_id 
   CONSTRAINT     [   ALTER TABLE ONLY public.autorizacao
    ADD CONSTRAINT sid_autor_estab_id UNIQUE (nec_id);
 H   ALTER TABLE ONLY public.autorizacao DROP CONSTRAINT sid_autor_estab_id;
       public            postgres    false    224            �           2606    24647    chatbot sid_chatb_rede_id 
   CONSTRAINT     T   ALTER TABLE ONLY public.chatbot
    ADD CONSTRAINT sid_chatb_rede_id UNIQUE (cnpj);
 C   ALTER TABLE ONLY public.chatbot DROP CONSTRAINT sid_chatb_rede_id;
       public            postgres    false    233            �           2606    24689    documento sid_docum_pagam_id 
   CONSTRAINT     Y   ALTER TABLE ONLY public.documento
    ADD CONSTRAINT sid_docum_pagam_id UNIQUE (e_r_id);
 F   ALTER TABLE ONLY public.documento DROP CONSTRAINT sid_docum_pagam_id;
       public            postgres    false    241            �           2606    24706 !   espaco_eventos sid_espac_hotel_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.espaco_eventos
    ADD CONSTRAINT sid_espac_hotel_id UNIQUE (id);
 K   ALTER TABLE ONLY public.espaco_eventos DROP CONSTRAINT sid_espac_hotel_id;
       public            postgres    false    244            �           2606    24773    inclui sid_inclu_acomo_id 
   CONSTRAINT     Z   ALTER TABLE ONLY public.inclui
    ADD CONSTRAINT sid_inclu_acomo_id UNIQUE (i_a_numero);
 C   ALTER TABLE ONLY public.inclui DROP CONSTRAINT sid_inclu_acomo_id;
       public            postgres    false    257            �           2606    24795    lobby sid_lobby_hotel_id 
   CONSTRAINT     Q   ALTER TABLE ONLY public.lobby
    ADD CONSTRAINT sid_lobby_hotel_id UNIQUE (id);
 B   ALTER TABLE ONLY public.lobby DROP CONSTRAINT sid_lobby_hotel_id;
       public            postgres    false    261            �           2606    24852    principal sid_princ_nota__id 
   CONSTRAINT     U   ALTER TABLE ONLY public.principal
    ADD CONSTRAINT sid_princ_nota__id UNIQUE (id);
 F   ALTER TABLE ONLY public.principal DROP CONSTRAINT sid_princ_nota__id;
       public            postgres    false    272            �           2606    24929    spa sid_spa_hotel_id 
   CONSTRAINT     M   ALTER TABLE ONLY public.spa
    ADD CONSTRAINT sid_spa_hotel_id UNIQUE (id);
 >   ALTER TABLE ONLY public.spa DROP CONSTRAINT sid_spa_hotel_id;
       public            postgres    false    287            	           2606    24975    acumula equ_acumu_segui    FK CONSTRAINT     |   ALTER TABLE ONLY public.acumula
    ADD CONSTRAINT equ_acumu_segui FOREIGN KEY (e_mail) REFERENCES public.seguidor(perfil);
 A   ALTER TABLE ONLY public.acumula DROP CONSTRAINT equ_acumu_segui;
       public          postgres    false    5102    283    217                       2606    25005    armazena equ_armaz_alime    FK CONSTRAINT     y   ALTER TABLE ONLY public.armazena
    ADD CONSTRAINT equ_armaz_alime FOREIGN KEY (a_a_id) REFERENCES public.alimento(id);
 B   ALTER TABLE ONLY public.armazena DROP CONSTRAINT equ_armaz_alime;
       public          postgres    false    4956    218    222                       2606    25000    armazena equ_armaz_hotel_fk    FK CONSTRAINT     u   ALTER TABLE ONLY public.armazena
    ADD CONSTRAINT equ_armaz_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 E   ALTER TABLE ONLY public.armazena DROP CONSTRAINT equ_armaz_hotel_fk;
       public          postgres    false    251    5032    222                       2606    25035    beneficiado equ_benef_benef_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.beneficiado
    ADD CONSTRAINT equ_benef_benef_fk FOREIGN KEY (nome) REFERENCES public.beneficio(nome);
 H   ALTER TABLE ONLY public.beneficiado DROP CONSTRAINT equ_benef_benef_fk;
       public          postgres    false    227    4982    229                       2606    25045    beneficiados equ_benef_reser    FK CONSTRAINT     �   ALTER TABLE ONLY public.beneficiados
    ADD CONSTRAINT equ_benef_reser FOREIGN KEY (cpf, numero) REFERENCES public.reserva(cpf, numero);
 F   ALTER TABLE ONLY public.beneficiados DROP CONSTRAINT equ_benef_reser;
       public          postgres    false    278    5092    228    278    228                       2606    25060    campanha equ_campa_rede__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.campanha
    ADD CONSTRAINT equ_campa_rede__fk FOREIGN KEY (pro_nome) REFERENCES public.rede_social(nome);
 E   ALTER TABLE ONLY public.campanha DROP CONSTRAINT equ_campa_rede__fk;
       public          postgres    false    275    5086    232                       2606    25055    data_status equ_data__acomo    FK CONSTRAINT     �   ALTER TABLE ONLY public.data_status
    ADD CONSTRAINT equ_data__acomo FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 E   ALTER TABLE ONLY public.data_status DROP CONSTRAINT equ_data__acomo;
       public          postgres    false    231    4952    216            !           2606    25095    departamento equ_depar_hotel_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT equ_depar_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 I   ALTER TABLE ONLY public.departamento DROP CONSTRAINT equ_depar_hotel_fk;
       public          postgres    false    5032    251    237            #           2606    25105    dependencia equ_depen_hotel_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.dependencia
    ADD CONSTRAINT equ_depen_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 H   ALTER TABLE ONLY public.dependencia DROP CONSTRAINT equ_depen_hotel_fk;
       public          postgres    false    239    5032    251            [           2606    25390    e_divulgada_por equ_e_div_influ    FK CONSTRAINT     �   ALTER TABLE ONLY public.e_divulgada_por
    ADD CONSTRAINT equ_e_div_influ FOREIGN KEY (cpf) REFERENCES public.influenciador_parceiro(cpf);
 I   ALTER TABLE ONLY public.e_divulgada_por DROP CONSTRAINT equ_e_div_influ;
       public          postgres    false    294    258    5048            (           2606    25130    espaco equ_espac_espac_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.espaco
    ADD CONSTRAINT equ_espac_espac_fk FOREIGN KEY (eng_numero) REFERENCES public.espaco_eventos(numero);
 C   ALTER TABLE ONLY public.espaco DROP CONSTRAINT equ_espac_espac_fk;
       public          postgres    false    243    244    5016            -           2606    25155    funcionario equ_funci_depar_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT equ_funci_depar_fk FOREIGN KEY (numero) REFERENCES public.departamento(numero);
 H   ALTER TABLE ONLY public.funcionario DROP CONSTRAINT equ_funci_depar_fk;
       public          postgres    false    5000    248    237            .           2606    25160    ganhador equ_ganha_sorte    FK CONSTRAINT     t   ALTER TABLE ONLY public.ganhador
    ADD CONSTRAINT equ_ganha_sorte FOREIGN KEY (id) REFERENCES public.sorteio(id);
 B   ALTER TABLE ONLY public.ganhador DROP CONSTRAINT equ_ganha_sorte;
       public          postgres    false    5108    249    286            /           2606    25165    garagem equ_garag_hotel_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public.garagem
    ADD CONSTRAINT equ_garag_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 D   ALTER TABLE ONLY public.garagem DROP CONSTRAINT equ_garag_hotel_fk;
       public          postgres    false    251    5032    250            5           2606    25200    hospede equ_hospe_rede_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT equ_hospe_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 C   ALTER TABLE ONLY public.hospede DROP CONSTRAINT equ_hospe_rede_fk;
       public          postgres    false    256    5084    274            0           2606    25170    hotel equ_hotel_rede_fk    FK CONSTRAINT     t   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT equ_hotel_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 A   ALTER TABLE ONLY public.hotel DROP CONSTRAINT equ_hotel_rede_fk;
       public          postgres    false    5084    251    274            ?           2606    25245    nota_fiscal equ_nota__rede_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.nota_fiscal
    ADD CONSTRAINT equ_nota__rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 G   ALTER TABLE ONLY public.nota_fiscal DROP CONSTRAINT equ_nota__rede_fk;
       public          postgres    false    265    5084    274            @           2606    25250    oferece equ_ofere_refei    FK CONSTRAINT     x   ALTER TABLE ONLY public.oferece
    ADD CONSTRAINT equ_ofere_refei FOREIGN KEY (nome) REFERENCES public.refeicao(nome);
 A   ALTER TABLE ONLY public.oferece DROP CONSTRAINT equ_ofere_refei;
       public          postgres    false    5088    266    276            A           2606    25255    oferece equ_ofere_resta_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.oferece
    ADD CONSTRAINT equ_ofere_resta_fk FOREIGN KEY (numero) REFERENCES public.restaurante(numero);
 D   ALTER TABLE ONLY public.oferece DROP CONSTRAINT equ_ofere_resta_fk;
       public          postgres    false    279    5094    266            B           2606    25260    pagamento equ_pagam_rede_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.pagamento
    ADD CONSTRAINT equ_pagam_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 E   ALTER TABLE ONLY public.pagamento DROP CONSTRAINT equ_pagam_rede_fk;
       public          postgres    false    274    5084    267            E           2606    25275    peca equ_peca_teatr_fk    FK CONSTRAINT     q   ALTER TABLE ONLY public.peca
    ADD CONSTRAINT equ_peca_teatr_fk FOREIGN KEY (id) REFERENCES public.teatro(id);
 @   ALTER TABLE ONLY public.peca DROP CONSTRAINT equ_peca_teatr_fk;
       public          postgres    false    5114    270    288            C           2606    25265    permite equ_permi_perso    FK CONSTRAINT     ~   ALTER TABLE ONLY public.permite
    ADD CONSTRAINT equ_permi_perso FOREIGN KEY (cpf) REFERENCES public.personal_trainer(cpf);
 A   ALTER TABLE ONLY public.permite DROP CONSTRAINT equ_permi_perso;
       public          postgres    false    5072    268    269            L           2606    25310    reserva equ_reser_princ    FK CONSTRAINT     w   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT equ_reser_princ FOREIGN KEY (cpf) REFERENCES public.principal(cpf);
 A   ALTER TABLE ONLY public.reserva DROP CONSTRAINT equ_reser_princ;
       public          postgres    false    272    278    5078            W           2606    25370    usado_para equ_usado_espac    FK CONSTRAINT     }   ALTER TABLE ONLY public.usado_para
    ADD CONSTRAINT equ_usado_espac FOREIGN KEY (numero) REFERENCES public.espaco(numero);
 D   ALTER TABLE ONLY public.usado_para DROP CONSTRAINT equ_usado_espac;
       public          postgres    false    5014    290    243            X           2606    25365    usado_para equ_usado_uso_fk    FK CONSTRAINT     w   ALTER TABLE ONLY public.usado_para
    ADD CONSTRAINT equ_usado_uso_fk FOREIGN KEY (nome) REFERENCES public.uso(nome);
 E   ALTER TABLE ONLY public.usado_para DROP CONSTRAINT equ_usado_uso_fk;
       public          postgres    false    5120    290    291            Y           2606    25375    vaga equ_vaga_garag    FK CONSTRAINT     {   ALTER TABLE ONLY public.vaga
    ADD CONSTRAINT equ_vaga_garag FOREIGN KEY (for_numero) REFERENCES public.garagem(numero);
 =   ALTER TABLE ONLY public.vaga DROP CONSTRAINT equ_vaga_garag;
       public          postgres    false    5030    292    250                       2606    24965    academia id_acade_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.academia
    ADD CONSTRAINT id_acade_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 D   ALTER TABLE ONLY public.academia DROP CONSTRAINT id_acade_depen_fk;
       public          postgres    false    5004    215    239                       2606    24970    acomodacao id_acomo_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.acomodacao
    ADD CONSTRAINT id_acomo_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 F   ALTER TABLE ONLY public.acomodacao DROP CONSTRAINT id_acomo_depen_fk;
       public          postgres    false    5004    216    239                       2606    24995    ar_livre id_ar_li_espac_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.ar_livre
    ADD CONSTRAINT id_ar_li_espac_fk FOREIGN KEY (numero) REFERENCES public.espaco(numero);
 D   ALTER TABLE ONLY public.ar_livre DROP CONSTRAINT id_ar_li_espac_fk;
       public          postgres    false    221    243    5014                       2606    25010    assalariado id_assal_funci_fk    FK CONSTRAINT        ALTER TABLE ONLY public.assalariado
    ADD CONSTRAINT id_assal_funci_fk FOREIGN KEY (cpf) REFERENCES public.funcionario(cpf);
 G   ALTER TABLE ONLY public.assalariado DROP CONSTRAINT id_assal_funci_fk;
       public          postgres    false    248    223    5026                       2606    25025    autonomo id_auton_funci_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.autonomo
    ADD CONSTRAINT id_auton_funci_fk FOREIGN KEY (cpf) REFERENCES public.funcionario(cpf);
 D   ALTER TABLE ONLY public.autonomo DROP CONSTRAINT id_auton_funci_fk;
       public          postgres    false    225    5026    248                       2606    25050    cafe_da_manha id_cafe__compr_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.cafe_da_manha
    ADD CONSTRAINT id_cafe__compr_fk FOREIGN KEY (id) REFERENCES public.compra(id);
 I   ALTER TABLE ONLY public.cafe_da_manha DROP CONSTRAINT id_cafe__compr_fk;
       public          postgres    false    4994    230    234            "           2606    25100    dependente id_depen_hospe_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.dependente
    ADD CONSTRAINT id_depen_hospe_fk FOREIGN KEY (cpf) REFERENCES public.hospede(cpf);
 F   ALTER TABLE ONLY public.dependente DROP CONSTRAINT id_depen_hospe_fk;
       public          postgres    false    256    5042    238            '           2606    25125 !   empresa_turismo id_empre_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.empresa_turismo
    ADD CONSTRAINT id_empre_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 K   ALTER TABLE ONLY public.empresa_turismo DROP CONSTRAINT id_empre_depen_fk;
       public          postgres    false    239    5004    242            3           2606    25185 %   hotel_para_adulto id_hotel_hotel_1_fk    FK CONSTRAINT        ALTER TABLE ONLY public.hotel_para_adulto
    ADD CONSTRAINT id_hotel_hotel_1_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 O   ALTER TABLE ONLY public.hotel_para_adulto DROP CONSTRAINT id_hotel_hotel_1_fk;
       public          postgres    false    5032    254    251            2           2606    25180 "   hotel_familiar id_hotel_hotel_2_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.hotel_familiar
    ADD CONSTRAINT id_hotel_hotel_2_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 L   ALTER TABLE ONLY public.hotel_familiar DROP CONSTRAINT id_hotel_hotel_2_fk;
       public          postgres    false    251    5032    253            1           2606    25175 %   hotel_empresarial id_hotel_hotel_3_fk    FK CONSTRAINT        ALTER TABLE ONLY public.hotel_empresarial
    ADD CONSTRAINT id_hotel_hotel_3_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 O   ALTER TABLE ONLY public.hotel_empresarial DROP CONSTRAINT id_hotel_hotel_3_fk;
       public          postgres    false    251    252    5032            4           2606    25190 !   hotel_para_pets id_hotel_hotel_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.hotel_para_pets
    ADD CONSTRAINT id_hotel_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 K   ALTER TABLE ONLY public.hotel_para_pets DROP CONSTRAINT id_hotel_hotel_fk;
       public          postgres    false    255    5032    251            7           2606    25205    inclui id_inclu_vaga_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.inclui
    ADD CONSTRAINT id_inclu_vaga_fk FOREIGN KEY (for_numero, numero) REFERENCES public.vaga(for_numero, numero);
 A   ALTER TABLE ONLY public.inclui DROP CONSTRAINT id_inclu_vaga_fk;
       public          postgres    false    257    257    5122    292    292            9           2606    25215    instagram id_insta_rede__fk    FK CONSTRAINT        ALTER TABLE ONLY public.instagram
    ADD CONSTRAINT id_insta_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 E   ALTER TABLE ONLY public.instagram DROP CONSTRAINT id_insta_rede__fk;
       public          postgres    false    275    259    5086            :           2606    25220 !   limpeza_de_pele id_limpe_trata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.limpeza_de_pele
    ADD CONSTRAINT id_limpe_trata_fk FOREIGN KEY (numero) REFERENCES public.tratamento(numero);
 K   ALTER TABLE ONLY public.limpeza_de_pele DROP CONSTRAINT id_limpe_trata_fk;
       public          postgres    false    5116    260    289            <           2606    25230 #   local_alimentacao id_local_estab_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.local_alimentacao
    ADD CONSTRAINT id_local_estab_fk FOREIGN KEY (id) REFERENCES public.estabelecimento(id);
 M   ALTER TABLE ONLY public.local_alimentacao DROP CONSTRAINT id_local_estab_fk;
       public          postgres    false    262    5020    245            =           2606    25235    loja id_loja_estab_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.loja
    ADD CONSTRAINT id_loja_estab_fk FOREIGN KEY (id) REFERENCES public.estabelecimento(id);
 ?   ALTER TABLE ONLY public.loja DROP CONSTRAINT id_loja_estab_fk;
       public          postgres    false    263    5020    245            >           2606    25240    massagem id_massa_trata_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.massagem
    ADD CONSTRAINT id_massa_trata_fk FOREIGN KEY (numero) REFERENCES public.tratamento(numero);
 D   ALTER TABLE ONLY public.massagem DROP CONSTRAINT id_massa_trata_fk;
       public          postgres    false    264    5116    289            F           2606    25280    piscina id_pisci_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.piscina
    ADD CONSTRAINT id_pisci_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 C   ALTER TABLE ONLY public.piscina DROP CONSTRAINT id_pisci_depen_fk;
       public          postgres    false    239    271    5004            G           2606    25285    principal id_princ_hospe_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.principal
    ADD CONSTRAINT id_princ_hospe_fk FOREIGN KEY (cpf) REFERENCES public.hospede(cpf);
 E   ALTER TABLE ONLY public.principal DROP CONSTRAINT id_princ_hospe_fk;
       public          postgres    false    256    5042    272            N           2606    25320    restaurante id_resta_depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.restaurante
    ADD CONSTRAINT id_resta_depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 G   ALTER TABLE ONLY public.restaurante DROP CONSTRAINT id_resta_depen_fk;
       public          postgres    false    279    5004    239            P           2606    25330    sala_eventos id_sala__depen_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sala_eventos
    ADD CONSTRAINT id_sala__depen_fk FOREIGN KEY (numero) REFERENCES public.dependencia(numero);
 H   ALTER TABLE ONLY public.sala_eventos DROP CONSTRAINT id_sala__depen_fk;
       public          postgres    false    282    239    5004            O           2606    25325    sala id_sala_espac_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.sala
    ADD CONSTRAINT id_sala_espac_fk FOREIGN KEY (numero) REFERENCES public.espaco(numero);
 ?   ALTER TABLE ONLY public.sala DROP CONSTRAINT id_sala_espac_fk;
       public          postgres    false    281    5014    243            Q           2606    25335 #   servico_de_quarto id_servi_compr_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.servico_de_quarto
    ADD CONSTRAINT id_servi_compr_fk FOREIGN KEY (id) REFERENCES public.compra(id);
 M   ALTER TABLE ONLY public.servico_de_quarto DROP CONSTRAINT id_servi_compr_fk;
       public          postgres    false    234    284    4994            U           2606    25355    teatro id_teatr_estab_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.teatro
    ADD CONSTRAINT id_teatr_estab_fk FOREIGN KEY (id) REFERENCES public.estabelecimento(id);
 B   ALTER TABLE ONLY public.teatro DROP CONSTRAINT id_teatr_estab_fk;
       public          postgres    false    245    5020    288            Z           2606    25380    youtube id_youtu_rede__fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.youtube
    ADD CONSTRAINT id_youtu_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 C   ALTER TABLE ONLY public.youtube DROP CONSTRAINT id_youtu_rede__fk;
       public          postgres    false    275    5086    293            
           2606    24980    acumula ref_acumu_rede__fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.acumula
    ADD CONSTRAINT ref_acumu_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 D   ALTER TABLE ONLY public.acumula DROP CONSTRAINT ref_acumu_rede__fk;
       public          postgres    false    217    275    5086                       2606    24990    aluguel ref_alugu_rede_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT ref_alugu_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 C   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT ref_alugu_rede_fk;
       public          postgres    false    274    5084    219                       2606    25020    autorizacao ref_autor_rede_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.autorizacao
    ADD CONSTRAINT ref_autor_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 G   ALTER TABLE ONLY public.autorizacao DROP CONSTRAINT ref_autor_rede_fk;
       public          postgres    false    5084    224    274                       2606    25030    banho_pet ref_banho_hotel_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.banho_pet
    ADD CONSTRAINT ref_banho_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel_para_pets(id);
 F   ALTER TABLE ONLY public.banho_pet DROP CONSTRAINT ref_banho_hotel_fk;
       public          postgres    false    226    255    5040                       2606    25040    beneficiado ref_benef_assal    FK CONSTRAINT     }   ALTER TABLE ONLY public.beneficiado
    ADD CONSTRAINT ref_benef_assal FOREIGN KEY (cpf) REFERENCES public.assalariado(cpf);
 E   ALTER TABLE ONLY public.beneficiado DROP CONSTRAINT ref_benef_assal;
       public          postgres    false    223    4968    227                       2606    25070    compra ref_compr_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT ref_compr_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 C   ALTER TABLE ONLY public.compra DROP CONSTRAINT ref_compr_acomo_fk;
       public          postgres    false    4952    234    216                       2606    25080    consome ref_conso_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.consome
    ADD CONSTRAINT ref_conso_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 D   ALTER TABLE ONLY public.consome DROP CONSTRAINT ref_conso_acomo_fk;
       public          postgres    false    216    4952    235                       2606    25075    consome ref_conso_produ    FK CONSTRAINT     |   ALTER TABLE ONLY public.consome
    ADD CONSTRAINT ref_conso_produ FOREIGN KEY (id) REFERENCES public.produto_frigobar(id);
 A   ALTER TABLE ONLY public.consome DROP CONSTRAINT ref_conso_produ;
       public          postgres    false    235    5082    273                       2606    25090    delivery ref_deliv_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT ref_deliv_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 E   ALTER TABLE ONLY public.delivery DROP CONSTRAINT ref_deliv_acomo_fk;
       public          postgres    false    236    4952    216                        2606    25085    delivery ref_deliv_robo__fk    FK CONSTRAINT        ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT ref_deliv_robo__fk FOREIGN KEY (fei_id) REFERENCES public.robo_social(id);
 E   ALTER TABLE ONLY public.delivery DROP CONSTRAINT ref_deliv_robo__fk;
       public          postgres    false    280    236    5096            $           2606    25115    dispoe_de ref_dispo_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.dispoe_de
    ADD CONSTRAINT ref_dispo_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 F   ALTER TABLE ONLY public.dispoe_de DROP CONSTRAINT ref_dispo_acomo_fk;
       public          postgres    false    4952    216    240            %           2606    25110    dispoe_de ref_dispo_ameni    FK CONSTRAINT     {   ALTER TABLE ONLY public.dispoe_de
    ADD CONSTRAINT ref_dispo_ameni FOREIGN KEY (tipo) REFERENCES public.amenidade(tipo);
 C   ALTER TABLE ONLY public.dispoe_de DROP CONSTRAINT ref_dispo_ameni;
       public          postgres    false    220    4962    240            \           2606    25385 "   e_divulgada_por ref_e_div_rede__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.e_divulgada_por
    ADD CONSTRAINT ref_e_div_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 L   ALTER TABLE ONLY public.e_divulgada_por DROP CONSTRAINT ref_e_div_rede__fk;
       public          postgres    false    294    275    5086            *           2606    25140 "   estabelecimento ref_estab_lobby_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.estabelecimento
    ADD CONSTRAINT ref_estab_lobby_fk FOREIGN KEY (numero) REFERENCES public.lobby(numero);
 L   ALTER TABLE ONLY public.estabelecimento DROP CONSTRAINT ref_estab_lobby_fk;
       public          postgres    false    5054    261    245            +           2606    25145 "   estadia_anterior ref_estad_rede_fk    FK CONSTRAINT        ALTER TABLE ONLY public.estadia_anterior
    ADD CONSTRAINT ref_estad_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 L   ALTER TABLE ONLY public.estadia_anterior DROP CONSTRAINT ref_estad_rede_fk;
       public          postgres    false    246    274    5084            ,           2606    25150    evento ref_event_sala__fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.evento
    ADD CONSTRAINT ref_event_sala__fk FOREIGN KEY (numero) REFERENCES public.sala_eventos(numero);
 C   ALTER TABLE ONLY public.evento DROP CONSTRAINT ref_event_sala__fk;
       public          postgres    false    5100    247    282            6           2606    25195    hospede ref_hospe_perso_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT ref_hospe_perso_fk FOREIGN KEY (pod_cpf) REFERENCES public.personal_trainer(cpf);
 D   ALTER TABLE ONLY public.hospede DROP CONSTRAINT ref_hospe_perso_fk;
       public          postgres    false    256    5072    269            D           2606    25270    permite ref_permi_acade_fk    FK CONSTRAINT        ALTER TABLE ONLY public.permite
    ADD CONSTRAINT ref_permi_acade_fk FOREIGN KEY (numero) REFERENCES public.academia(numero);
 D   ALTER TABLE ONLY public.permite DROP CONSTRAINT ref_permi_acade_fk;
       public          postgres    false    215    4950    268            I           2606    25295    rede_social ref_rede__rede_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.rede_social
    ADD CONSTRAINT ref_rede__rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 G   ALTER TABLE ONLY public.rede_social DROP CONSTRAINT ref_rede__rede_fk;
       public          postgres    false    275    274    5084            J           2606    25300    requisicao ref_requi_chatb_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT ref_requi_chatb_fk FOREIGN KEY (registro_digital) REFERENCES public.chatbot(registro_digital);
 G   ALTER TABLE ONLY public.requisicao DROP CONSTRAINT ref_requi_chatb_fk;
       public          postgres    false    233    277    4990            K           2606    25305    requisicao ref_requi_funci_fk    FK CONSTRAINT        ALTER TABLE ONLY public.requisicao
    ADD CONSTRAINT ref_requi_funci_fk FOREIGN KEY (cpf) REFERENCES public.funcionario(cpf);
 G   ALTER TABLE ONLY public.requisicao DROP CONSTRAINT ref_requi_funci_fk;
       public          postgres    false    277    5026    248            M           2606    25315    reserva ref_reser_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT ref_reser_acomo_fk FOREIGN KEY (numero) REFERENCES public.acomodacao(numero);
 D   ALTER TABLE ONLY public.reserva DROP CONSTRAINT ref_reser_acomo_fk;
       public          postgres    false    278    4952    216            R           2606    25340 -   sessao_terapia_ocupacional ref_sessa_hotel_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.sessao_terapia_ocupacional
    ADD CONSTRAINT ref_sessa_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 W   ALTER TABLE ONLY public.sessao_terapia_ocupacional DROP CONSTRAINT ref_sessa_hotel_fk;
       public          postgres    false    285    5032    251            S           2606    25345    sorteio ref_sorte_rede__fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.sorteio
    ADD CONSTRAINT ref_sorte_rede__fk FOREIGN KEY (nome) REFERENCES public.rede_social(nome);
 D   ALTER TABLE ONLY public.sorteio DROP CONSTRAINT ref_sorte_rede__fk;
       public          postgres    false    275    286    5086            V           2606    25360    tratamento ref_trata_spa_fk    FK CONSTRAINT        ALTER TABLE ONLY public.tratamento
    ADD CONSTRAINT ref_trata_spa_fk FOREIGN KEY (exe_numero) REFERENCES public.spa(numero);
 E   ALTER TABLE ONLY public.tratamento DROP CONSTRAINT ref_trata_spa_fk;
       public          postgres    false    287    289    5110                       2606    24985    aluguel sid_alugu_estab_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.aluguel
    ADD CONSTRAINT sid_alugu_estab_fk FOREIGN KEY (pag_id) REFERENCES public.estabelecimento(id);
 D   ALTER TABLE ONLY public.aluguel DROP CONSTRAINT sid_alugu_estab_fk;
       public          postgres    false    219    245    5020                       2606    25015    autorizacao sid_autor_estab_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.autorizacao
    ADD CONSTRAINT sid_autor_estab_fk FOREIGN KEY (nec_id) REFERENCES public.estabelecimento(id);
 H   ALTER TABLE ONLY public.autorizacao DROP CONSTRAINT sid_autor_estab_fk;
       public          postgres    false    224    245    5020                       2606    25065    chatbot sid_chatb_rede_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.chatbot
    ADD CONSTRAINT sid_chatb_rede_fk FOREIGN KEY (cnpj) REFERENCES public.rede(cnpj);
 C   ALTER TABLE ONLY public.chatbot DROP CONSTRAINT sid_chatb_rede_fk;
       public          postgres    false    274    5084    233            &           2606    25120    documento sid_docum_pagam_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.documento
    ADD CONSTRAINT sid_docum_pagam_fk FOREIGN KEY (e_r_id) REFERENCES public.pagamento(id);
 F   ALTER TABLE ONLY public.documento DROP CONSTRAINT sid_docum_pagam_fk;
       public          postgres    false    241    267    5068            )           2606    25135 !   espaco_eventos sid_espac_hotel_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.espaco_eventos
    ADD CONSTRAINT sid_espac_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 K   ALTER TABLE ONLY public.espaco_eventos DROP CONSTRAINT sid_espac_hotel_fk;
       public          postgres    false    5032    251    244            8           2606    25210    inclui sid_inclu_acomo_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.inclui
    ADD CONSTRAINT sid_inclu_acomo_fk FOREIGN KEY (i_a_numero) REFERENCES public.acomodacao(numero);
 C   ALTER TABLE ONLY public.inclui DROP CONSTRAINT sid_inclu_acomo_fk;
       public          postgres    false    257    4952    216            ;           2606    25225    lobby sid_lobby_hotel_fk    FK CONSTRAINT     r   ALTER TABLE ONLY public.lobby
    ADD CONSTRAINT sid_lobby_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 B   ALTER TABLE ONLY public.lobby DROP CONSTRAINT sid_lobby_hotel_fk;
       public          postgres    false    261    5032    251            H           2606    25290    principal sid_princ_nota__fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.principal
    ADD CONSTRAINT sid_princ_nota__fk FOREIGN KEY (id) REFERENCES public.nota_fiscal(id);
 F   ALTER TABLE ONLY public.principal DROP CONSTRAINT sid_princ_nota__fk;
       public          postgres    false    272    5064    265            T           2606    25350    spa sid_spa_hotel_fk    FK CONSTRAINT     n   ALTER TABLE ONLY public.spa
    ADD CONSTRAINT sid_spa_hotel_fk FOREIGN KEY (id) REFERENCES public.hotel(id);
 >   ALTER TABLE ONLY public.spa DROP CONSTRAINT sid_spa_hotel_fk;
       public          postgres    false    287    251    5032            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �             x������ � �      �      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      ;      x������ � �            x������ � �            x������ � �      	      x������ � �      
      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �             x������ � �      #      x������ � �      !      x������ � �      "      x������ � �      $      x������ � �      %      x������ � �      &      x������ � �      '      x������ � �      (      x������ � �      )      x������ � �      *      x������ � �      +      x������ � �      ,      x������ � �      -      x������ � �      .      x������ � �      /      x������ � �      0      x������ � �      1      x������ � �      2      x������ � �      3      x������ � �      4      x������ � �      5      x������ � �      6      x������ � �      7      x������ � �      8      x������ � �      9      x������ � �      :      x������ � �     