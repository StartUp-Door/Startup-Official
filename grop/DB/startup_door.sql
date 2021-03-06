PGDMP     )    
                y            test    12.7    12.7 o    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16700    test    DATABASE     ?   CREATE DATABASE test WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE test;
                postgres    false            ?            1259    24816    bidding    TABLE       CREATE TABLE public.bidding (
    b_id integer NOT NULL,
    post_id integer NOT NULL,
    name character varying(50) NOT NULL,
    bid_on timestamp without time zone DEFAULT now() NOT NULL,
    service_client_id integer,
    price character varying(225)
);
    DROP TABLE public.bidding;
       public         heap    postgres    false            ?            1259    24814    bidtest_b_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.bidtest_b_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.bidtest_b_id_seq;
       public          postgres    false    219            ?           0    0    bidtest_b_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.bidtest_b_id_seq OWNED BY public.bidding.b_id;
          public          postgres    false    218            ?            1259    16703    category    TABLE     f   CREATE TABLE public.category (
    jid integer NOT NULL,
    jname character varying(255) NOT NULL
);
    DROP TABLE public.category;
       public         heap    postgres    false            ?            1259    24652    client    TABLE     u  CREATE TABLE public.client (
    cid integer NOT NULL,
    cname character varying NOT NULL,
    cemail character varying NOT NULL,
    cnic character varying NOT NULL,
    cgender character varying NOT NULL,
    caddress character varying NOT NULL,
    cno character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    cimage character varying
);
    DROP TABLE public.client;
       public         heap    postgres    false            ?            1259    24650    client_cid_seq    SEQUENCE     ?   CREATE SEQUENCE public.client_cid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.client_cid_seq;
       public          postgres    false    207            ?           0    0    client_cid_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.client_cid_seq OWNED BY public.client.cid;
          public          postgres    false    206            ?            1259    24738    clientposts    TABLE     F  CREATE TABLE public.clientposts (
    post_id integer NOT NULL,
    category character varying NOT NULL,
    description character varying NOT NULL,
    location character varying,
    price character varying,
    image character varying,
    cid integer NOT NULL,
    ftime timestamp with time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.clientposts;
       public         heap    postgres    false            ?            1259    24736    clientposts_post_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.clientposts_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientposts_post_id_seq;
       public          postgres    false    215            ?           0    0    clientposts_post_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientposts_post_id_seq OWNED BY public.clientposts.post_id;
          public          postgres    false    214            ?            1259    24721    food    TABLE     V  CREATE TABLE public.food (
    fid integer NOT NULL,
    fcat character varying NOT NULL,
    ftype character varying NOT NULL,
    fdesc character varying NOT NULL,
    floca character varying NOT NULL,
    famount integer NOT NULL,
    fprice character varying NOT NULL,
    cid integer,
    ftime timestamp with time zone DEFAULT now()
);
    DROP TABLE public.food;
       public         heap    postgres    false            ?            1259    24719    food_fid_seq    SEQUENCE     ?   CREATE SEQUENCE public.food_fid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.food_fid_seq;
       public          postgres    false    213            ?           0    0    food_fid_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.food_fid_seq OWNED BY public.food.fid;
          public          postgres    false    212            ?            1259    24872    job_food    TABLE     ?  CREATE TABLE public.job_food (
    jobfood_id integer NOT NULL,
    fid integer NOT NULL,
    username character varying(225) NOT NULL,
    title character varying(225) NOT NULL,
    description character varying(225) NOT NULL,
    price character varying(225) NOT NULL,
    created_on timestamp without time zone DEFAULT now(),
    status character varying(225),
    service_client_id integer
);
    DROP TABLE public.job_food;
       public         heap    postgres    false            ?            1259    24870    job_food_jobfood_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.job_food_jobfood_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.job_food_jobfood_id_seq;
       public          postgres    false    225            ?           0    0    job_food_jobfood_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.job_food_jobfood_id_seq OWNED BY public.job_food.jobfood_id;
          public          postgres    false    224            ?            1259    16701    job_jid_seq    SEQUENCE     ?   CREATE SEQUENCE public.job_jid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.job_jid_seq;
       public          postgres    false    203            ?           0    0    job_jid_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.job_jid_seq OWNED BY public.category.jid;
          public          postgres    false    202            ?            1259    24858 	   job_plant    TABLE     ?  CREATE TABLE public.job_plant (
    jobplant_id integer NOT NULL,
    pid integer NOT NULL,
    username character varying(225) NOT NULL,
    title character varying(225) NOT NULL,
    description character varying(225) NOT NULL,
    price character varying(255) NOT NULL,
    created_on timestamp without time zone DEFAULT now(),
    status character varying(225),
    service_client_id integer
);
    DROP TABLE public.job_plant;
       public         heap    postgres    false            ?            1259    24856    job_plant_jobplant_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.job_plant_jobplant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.job_plant_jobplant_id_seq;
       public          postgres    false    223            ?           0    0    job_plant_jobplant_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.job_plant_jobplant_id_seq OWNED BY public.job_plant.jobplant_id;
          public          postgres    false    222            ?            1259    24844    job_tech    TABLE     ?  CREATE TABLE public.job_tech (
    jobtech_id integer NOT NULL,
    tid integer NOT NULL,
    username character varying(225) NOT NULL,
    title character varying(225) NOT NULL,
    description character varying(225) NOT NULL,
    price character varying(255) NOT NULL,
    created_on timestamp without time zone DEFAULT now(),
    status character varying(255),
    service_client_id integer
);
    DROP TABLE public.job_tech;
       public         heap    postgres    false            ?            1259    24842    job_tech_jobtech_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.job_tech_jobtech_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.job_tech_jobtech_id_seq;
       public          postgres    false    221            ?           0    0    job_tech_jobtech_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.job_tech_jobtech_id_seq OWNED BY public.job_tech.jobtech_id;
          public          postgres    false    220            ?            1259    24771    notification    TABLE     ?   CREATE TABLE public.notification (
    n_id integer NOT NULL,
    noti character varying(255) NOT NULL,
    admin_id integer NOT NULL,
    client_id integer NOT NULL,
    created_on timestamp without time zone DEFAULT now()
);
     DROP TABLE public.notification;
       public         heap    postgres    false            ?            1259    24769    notification_n_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.notification_n_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.notification_n_id_seq;
       public          postgres    false    217            ?           0    0    notification_n_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.notification_n_id_seq OWNED BY public.notification.n_id;
          public          postgres    false    216            ?            1259    24891    notify    TABLE     ?   CREATE TABLE public.notify (
    id integer NOT NULL,
    clientid_to integer,
    clientid_from integer,
    message character varying(225) NOT NULL,
    created_on timestamp without time zone DEFAULT now(),
    post_id integer NOT NULL
);
    DROP TABLE public.notify;
       public         heap    postgres    false            ?            1259    24889    notify_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.notify_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.notify_id_seq;
       public          postgres    false    227            ?           0    0    notify_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.notify_id_seq OWNED BY public.notify.id;
          public          postgres    false    226            ?            1259    24704    plant    TABLE     C  CREATE TABLE public.plant (
    pid integer NOT NULL,
    pcat character varying NOT NULL,
    pdesc character varying NOT NULL,
    ploca character varying NOT NULL,
    pprice character varying NOT NULL,
    pimage character varying,
    cid integer NOT NULL,
    ptime timestamp with time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.plant;
       public         heap    postgres    false            ?            1259    24702    plant_pid_seq    SEQUENCE     ?   CREATE SEQUENCE public.plant_pid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.plant_pid_seq;
       public          postgres    false    211            ?           0    0    plant_pid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.plant_pid_seq OWNED BY public.plant.pid;
          public          postgres    false    210            ?            1259    24664    service    TABLE     ?   CREATE TABLE public.service (
    sid integer NOT NULL,
    stype character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    cid integer NOT NULL
);
    DROP TABLE public.service;
       public         heap    postgres    false            ?            1259    24662    service_sid_seq    SEQUENCE     ?   CREATE SEQUENCE public.service_sid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.service_sid_seq;
       public          postgres    false    209            ?           0    0    service_sid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.service_sid_seq OWNED BY public.service.sid;
          public          postgres    false    208            ?            1259    24632 
   technician    TABLE       CREATE TABLE public.technician (
    tid integer NOT NULL,
    tcat character varying,
    tdesc character varying NOT NULL,
    tloca character varying NOT NULL,
    tavail character varying NOT NULL,
    ttime timestamp without time zone DEFAULT now() NOT NULL,
    cid integer
);
    DROP TABLE public.technician;
       public         heap    postgres    false            ?            1259    24630    test_tid_seq    SEQUENCE     ?   CREATE SEQUENCE public.test_tid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.test_tid_seq;
       public          postgres    false    205            ?           0    0    test_tid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.test_tid_seq OWNED BY public.technician.tid;
          public          postgres    false    204            ?
           2604    24819    bidding b_id    DEFAULT     l   ALTER TABLE ONLY public.bidding ALTER COLUMN b_id SET DEFAULT nextval('public.bidtest_b_id_seq'::regclass);
 ;   ALTER TABLE public.bidding ALTER COLUMN b_id DROP DEFAULT;
       public          postgres    false    218    219    219            ?
           2604    16706    category jid    DEFAULT     g   ALTER TABLE ONLY public.category ALTER COLUMN jid SET DEFAULT nextval('public.job_jid_seq'::regclass);
 ;   ALTER TABLE public.category ALTER COLUMN jid DROP DEFAULT;
       public          postgres    false    203    202    203            ?
           2604    24655 
   client cid    DEFAULT     h   ALTER TABLE ONLY public.client ALTER COLUMN cid SET DEFAULT nextval('public.client_cid_seq'::regclass);
 9   ALTER TABLE public.client ALTER COLUMN cid DROP DEFAULT;
       public          postgres    false    207    206    207            ?
           2604    24741    clientposts post_id    DEFAULT     z   ALTER TABLE ONLY public.clientposts ALTER COLUMN post_id SET DEFAULT nextval('public.clientposts_post_id_seq'::regclass);
 B   ALTER TABLE public.clientposts ALTER COLUMN post_id DROP DEFAULT;
       public          postgres    false    215    214    215            ?
           2604    24724    food fid    DEFAULT     d   ALTER TABLE ONLY public.food ALTER COLUMN fid SET DEFAULT nextval('public.food_fid_seq'::regclass);
 7   ALTER TABLE public.food ALTER COLUMN fid DROP DEFAULT;
       public          postgres    false    212    213    213            ?
           2604    24875    job_food jobfood_id    DEFAULT     z   ALTER TABLE ONLY public.job_food ALTER COLUMN jobfood_id SET DEFAULT nextval('public.job_food_jobfood_id_seq'::regclass);
 B   ALTER TABLE public.job_food ALTER COLUMN jobfood_id DROP DEFAULT;
       public          postgres    false    225    224    225            ?
           2604    24861    job_plant jobplant_id    DEFAULT     ~   ALTER TABLE ONLY public.job_plant ALTER COLUMN jobplant_id SET DEFAULT nextval('public.job_plant_jobplant_id_seq'::regclass);
 D   ALTER TABLE public.job_plant ALTER COLUMN jobplant_id DROP DEFAULT;
       public          postgres    false    223    222    223            ?
           2604    24847    job_tech jobtech_id    DEFAULT     z   ALTER TABLE ONLY public.job_tech ALTER COLUMN jobtech_id SET DEFAULT nextval('public.job_tech_jobtech_id_seq'::regclass);
 B   ALTER TABLE public.job_tech ALTER COLUMN jobtech_id DROP DEFAULT;
       public          postgres    false    220    221    221            ?
           2604    24774    notification n_id    DEFAULT     v   ALTER TABLE ONLY public.notification ALTER COLUMN n_id SET DEFAULT nextval('public.notification_n_id_seq'::regclass);
 @   ALTER TABLE public.notification ALTER COLUMN n_id DROP DEFAULT;
       public          postgres    false    217    216    217            ?
           2604    24894 	   notify id    DEFAULT     f   ALTER TABLE ONLY public.notify ALTER COLUMN id SET DEFAULT nextval('public.notify_id_seq'::regclass);
 8   ALTER TABLE public.notify ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            ?
           2604    24707 	   plant pid    DEFAULT     f   ALTER TABLE ONLY public.plant ALTER COLUMN pid SET DEFAULT nextval('public.plant_pid_seq'::regclass);
 8   ALTER TABLE public.plant ALTER COLUMN pid DROP DEFAULT;
       public          postgres    false    210    211    211            ?
           2604    24667    service sid    DEFAULT     j   ALTER TABLE ONLY public.service ALTER COLUMN sid SET DEFAULT nextval('public.service_sid_seq'::regclass);
 :   ALTER TABLE public.service ALTER COLUMN sid DROP DEFAULT;
       public          postgres    false    208    209    209            ?
           2604    24635    technician tid    DEFAULT     j   ALTER TABLE ONLY public.technician ALTER COLUMN tid SET DEFAULT nextval('public.test_tid_seq'::regclass);
 =   ALTER TABLE public.technician ALTER COLUMN tid DROP DEFAULT;
       public          postgres    false    205    204    205            ?          0    24816    bidding 
   TABLE DATA           X   COPY public.bidding (b_id, post_id, name, bid_on, service_client_id, price) FROM stdin;
    public          postgres    false    219   ??       ?          0    16703    category 
   TABLE DATA           .   COPY public.category (jid, jname) FROM stdin;
    public          postgres    false    203   )?       ?          0    24652    client 
   TABLE DATA           f   COPY public.client (cid, cname, cemail, cnic, cgender, caddress, cno, created_at, cimage) FROM stdin;
    public          postgres    false    207   F?       ?          0    24738    clientposts 
   TABLE DATA           i   COPY public.clientposts (post_id, category, description, location, price, image, cid, ftime) FROM stdin;
    public          postgres    false    215          ?          0    24721    food 
   TABLE DATA           [   COPY public.food (fid, fcat, ftype, fdesc, floca, famount, fprice, cid, ftime) FROM stdin;
    public          postgres    false    213   Չ       ?          0    24872    job_food 
   TABLE DATA              COPY public.job_food (jobfood_id, fid, username, title, description, price, created_on, status, service_client_id) FROM stdin;
    public          postgres    false    225   h?       ?          0    24858 	   job_plant 
   TABLE DATA           ?   COPY public.job_plant (jobplant_id, pid, username, title, description, price, created_on, status, service_client_id) FROM stdin;
    public          postgres    false    223   ?       ?          0    24844    job_tech 
   TABLE DATA              COPY public.job_tech (jobtech_id, tid, username, title, description, price, created_on, status, service_client_id) FROM stdin;
    public          postgres    false    221   ͌       ?          0    24771    notification 
   TABLE DATA           S   COPY public.notification (n_id, noti, admin_id, client_id, created_on) FROM stdin;
    public          postgres    false    217   t?       ?          0    24891    notify 
   TABLE DATA           ^   COPY public.notify (id, clientid_to, clientid_from, message, created_on, post_id) FROM stdin;
    public          postgres    false    227   <?       ?          0    24704    plant 
   TABLE DATA           T   COPY public.plant (pid, pcat, pdesc, ploca, pprice, pimage, cid, ptime) FROM stdin;
    public          postgres    false    211   ˎ       ?          0    24664    service 
   TABLE DATA           >   COPY public.service (sid, stype, created_at, cid) FROM stdin;
    public          postgres    false    209   ??       ?          0    24632 
   technician 
   TABLE DATA           Q   COPY public.technician (tid, tcat, tdesc, tloca, tavail, ttime, cid) FROM stdin;
    public          postgres    false    205   O?       ?           0    0    bidtest_b_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.bidtest_b_id_seq', 92, true);
          public          postgres    false    218            ?           0    0    client_cid_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.client_cid_seq', 5, true);
          public          postgres    false    206            ?           0    0    clientposts_post_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.clientposts_post_id_seq', 23, true);
          public          postgres    false    214            ?           0    0    food_fid_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.food_fid_seq', 7, true);
          public          postgres    false    212            ?           0    0    job_food_jobfood_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.job_food_jobfood_id_seq', 11, true);
          public          postgres    false    224            ?           0    0    job_jid_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.job_jid_seq', 1, false);
          public          postgres    false    202            ?           0    0    job_plant_jobplant_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.job_plant_jobplant_id_seq', 12, true);
          public          postgres    false    222            ?           0    0    job_tech_jobtech_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.job_tech_jobtech_id_seq', 21, true);
          public          postgres    false    220            ?           0    0    notification_n_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.notification_n_id_seq', 5, true);
          public          postgres    false    216            ?           0    0    notify_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.notify_id_seq', 33, true);
          public          postgres    false    226            ?           0    0    plant_pid_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.plant_pid_seq', 11, true);
          public          postgres    false    210            ?           0    0    service_sid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.service_sid_seq', 2, true);
          public          postgres    false    208            ?           0    0    test_tid_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.test_tid_seq', 10, true);
          public          postgres    false    204            ?
           2606    24822    bidding bidtest_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.bidding
    ADD CONSTRAINT bidtest_pkey PRIMARY KEY (b_id);
 >   ALTER TABLE ONLY public.bidding DROP CONSTRAINT bidtest_pkey;
       public            postgres    false    219            ?
           2606    24661    client client_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (cid);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    207            ?
           2606    24747    clientposts clientposts_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.clientposts
    ADD CONSTRAINT clientposts_pkey PRIMARY KEY (post_id);
 F   ALTER TABLE ONLY public.clientposts DROP CONSTRAINT clientposts_pkey;
       public            postgres    false    215            ?
           2606    24730    food food_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.food
    ADD CONSTRAINT food_pkey PRIMARY KEY (fid);
 8   ALTER TABLE ONLY public.food DROP CONSTRAINT food_pkey;
       public            postgres    false    213                       2606    24881    job_food job_food_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.job_food
    ADD CONSTRAINT job_food_pkey PRIMARY KEY (jobfood_id);
 @   ALTER TABLE ONLY public.job_food DROP CONSTRAINT job_food_pkey;
       public            postgres    false    225                       2606    25208    job_food job_food_price_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.job_food
    ADD CONSTRAINT job_food_price_key UNIQUE (price);
 E   ALTER TABLE ONLY public.job_food DROP CONSTRAINT job_food_price_key;
       public            postgres    false    225            ?
           2606    16708    category job_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.category
    ADD CONSTRAINT job_pkey PRIMARY KEY (jid);
 ;   ALTER TABLE ONLY public.category DROP CONSTRAINT job_pkey;
       public            postgres    false    203                        2606    24867    job_plant job_plant_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.job_plant
    ADD CONSTRAINT job_plant_pkey PRIMARY KEY (jobplant_id);
 B   ALTER TABLE ONLY public.job_plant DROP CONSTRAINT job_plant_pkey;
       public            postgres    false    223                       2606    24869    job_plant job_plant_price_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.job_plant
    ADD CONSTRAINT job_plant_price_key UNIQUE (price);
 G   ALTER TABLE ONLY public.job_plant DROP CONSTRAINT job_plant_price_key;
       public            postgres    false    223            ?
           2606    24853    job_tech job_tech_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.job_tech
    ADD CONSTRAINT job_tech_pkey PRIMARY KEY (jobtech_id);
 @   ALTER TABLE ONLY public.job_tech DROP CONSTRAINT job_tech_pkey;
       public            postgres    false    221            ?
           2606    24855    job_tech job_tech_price_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.job_tech
    ADD CONSTRAINT job_tech_price_key UNIQUE (price);
 E   ALTER TABLE ONLY public.job_tech DROP CONSTRAINT job_tech_price_key;
       public            postgres    false    221            ?
           2606    24777    notification notification_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (n_id);
 H   ALTER TABLE ONLY public.notification DROP CONSTRAINT notification_pkey;
       public            postgres    false    217                       2606    24897    notify notify_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.notify
    ADD CONSTRAINT notify_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.notify DROP CONSTRAINT notify_pkey;
       public            postgres    false    227            ?
           2606    24713    plant plant_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.plant
    ADD CONSTRAINT plant_pkey PRIMARY KEY (pid);
 :   ALTER TABLE ONLY public.plant DROP CONSTRAINT plant_pkey;
       public            postgres    false    211            ?
           2606    24673    service service_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (sid);
 >   ALTER TABLE ONLY public.service DROP CONSTRAINT service_pkey;
       public            postgres    false    209            ?
           2606    24641    technician test_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.technician
    ADD CONSTRAINT test_pkey PRIMARY KEY (tid);
 >   ALTER TABLE ONLY public.technician DROP CONSTRAINT test_pkey;
       public            postgres    false    205                       2606    24823    bidding bid_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.bidding
    ADD CONSTRAINT bid_fkey FOREIGN KEY (post_id) REFERENCES public.clientposts(post_id);
 :   ALTER TABLE ONLY public.bidding DROP CONSTRAINT bid_fkey;
       public          postgres    false    215    2806    219                       2606    24898    notify clientid_from_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.notify
    ADD CONSTRAINT clientid_from_fkey FOREIGN KEY (clientid_from) REFERENCES public.client(cid);
 C   ALTER TABLE ONLY public.notify DROP CONSTRAINT clientid_from_fkey;
       public          postgres    false    207    2798    227            
           2606    24692    service fk_cidclient    FK CONSTRAINT     q   ALTER TABLE ONLY public.service
    ADD CONSTRAINT fk_cidclient FOREIGN KEY (cid) REFERENCES public.client(cid);
 >   ALTER TABLE ONLY public.service DROP CONSTRAINT fk_cidclient;
       public          postgres    false    2798    207    209            	           2606    24697    technician fk_cidclient    FK CONSTRAINT     t   ALTER TABLE ONLY public.technician
    ADD CONSTRAINT fk_cidclient FOREIGN KEY (cid) REFERENCES public.client(cid);
 A   ALTER TABLE ONLY public.technician DROP CONSTRAINT fk_cidclient;
       public          postgres    false    2798    207    205                       2606    24714    plant fk_cidclient    FK CONSTRAINT     o   ALTER TABLE ONLY public.plant
    ADD CONSTRAINT fk_cidclient FOREIGN KEY (cid) REFERENCES public.client(cid);
 <   ALTER TABLE ONLY public.plant DROP CONSTRAINT fk_cidclient;
       public          postgres    false    211    207    2798                       2606    24731    food fk_cidclient    FK CONSTRAINT     n   ALTER TABLE ONLY public.food
    ADD CONSTRAINT fk_cidclient FOREIGN KEY (cid) REFERENCES public.client(cid);
 ;   ALTER TABLE ONLY public.food DROP CONSTRAINT fk_cidclient;
       public          postgres    false    207    2798    213                       2606    24748    clientposts fk_cidclient    FK CONSTRAINT     u   ALTER TABLE ONLY public.clientposts
    ADD CONSTRAINT fk_cidclient FOREIGN KEY (cid) REFERENCES public.client(cid);
 B   ALTER TABLE ONLY public.clientposts DROP CONSTRAINT fk_cidclient;
       public          postgres    false    207    2798    215                       2606    24779    notification fk_client    FK CONSTRAINT     y   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT fk_client FOREIGN KEY (client_id) REFERENCES public.client(cid);
 @   ALTER TABLE ONLY public.notification DROP CONSTRAINT fk_client;
       public          postgres    false    217    2798    207                       2606    24884    job_tech fk_tid    FK CONSTRAINT     p   ALTER TABLE ONLY public.job_tech
    ADD CONSTRAINT fk_tid FOREIGN KEY (tid) REFERENCES public.technician(tid);
 9   ALTER TABLE ONLY public.job_tech DROP CONSTRAINT fk_tid;
       public          postgres    false    2796    205    221                       2606    25228    job_food job_food_cid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.job_food
    ADD CONSTRAINT job_food_cid_fkey FOREIGN KEY (service_client_id) REFERENCES public.client(cid);
 D   ALTER TABLE ONLY public.job_food DROP CONSTRAINT job_food_cid_fkey;
       public          postgres    false    2798    225    207                       2606    25223    job_plant job_plant_cid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.job_plant
    ADD CONSTRAINT job_plant_cid_fkey FOREIGN KEY (service_client_id) REFERENCES public.client(cid);
 F   ALTER TABLE ONLY public.job_plant DROP CONSTRAINT job_plant_cid_fkey;
       public          postgres    false    2798    207    223                       2606    25218    job_tech job_tech_cid_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.job_tech
    ADD CONSTRAINT job_tech_cid_fkey FOREIGN KEY (service_client_id) REFERENCES public.client(cid);
 D   ALTER TABLE ONLY public.job_tech DROP CONSTRAINT job_tech_cid_fkey;
       public          postgres    false    207    221    2798                       2606    24903    notify post_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.notify
    ADD CONSTRAINT post_id_fkey FOREIGN KEY (post_id) REFERENCES public.clientposts(post_id);
 =   ALTER TABLE ONLY public.notify DROP CONSTRAINT post_id_fkey;
       public          postgres    false    215    2806    227            ?   ?   x?}?1?0??9?/??vpb{de? ,?(B???B*???????????Ǿ??K!??|??lQ<J?ʦ?  J??_8????Aʾ?Pʵ??L_?GBq???]M??}??7d?RCkn?T?v?`??-]rJi?;!      ?      x?????? ? ?      ?   l  x?]?AO?0????+|?Z??]?9E??
?t??L????JS*??:$??{?!ߣ?a??L-k.j??xN5???=?;??=?z_???oZ?!?D?μ6??	?	.??i???? ?30?&?
Z??צ?/?u??mh?w~??*?{;T??	u'????32a[?SgP????? ?r%z??S?|3??2???B??5?J???^SC?X;VȾ??W?o????OC??h<=6(??o??7@6?=m???vCl7Ǿa|v}3???2?~O?????BM5??3xpڂ?Ou??,خ???bGjێ?9t??x?/??m?c>?9????e?(?}RPq??k?-??dC?u;??_??Q?_h?      ?     x?}VM??6={O??8??t	?
?A??%??J?eR?$o?_ߡ-ym?z_,?ｙy?ư?b7?wg?j?????y???2ZdTP???y?4g?????]???#Y??%???:???w????X?3!?(',???B>??wޮ>[?%_mm?n-iG?i?a?XV??dI??(V??}??ψ???{K???MH????(?'>aں&?m,y?l??6?JL?ߒ??S????TBT???rQȉJ-?OTkk<٤''????&n???D?:炫?O??zp???8??mɓ???? |b؄}76??!?+К??*??0CCؓ??%?)8???~7???j?k?%SOy? X	Tj?E?۶!???׈hkl?s??s??.!?S??o`ɌB
f? KLv?YP!Y?5??%`???A?r? ??A?5f@?a?۳Gޓ?6}?O?H???4?ϯ 80?;?Ӷ}ֺ??1Co???,9/??j?H%y%Y??w????A????ٙ?&G?ɲd0]N>???Qgc?@6??d??????~??*h!?`?T?????y?	C???W????Xd^p?jN0?R??H??S6ג??9'????y-F?ܫ??????`?>ÆJ??I??Ha?в??\?=?,?E??h????%??B:??!?%e>??=??*cnqs R????2?WB?	??R???<?SHޖ?)? ?S??x̺???s ???z?%T???TRs??^?o?ؓ???!??? Ik?!t??0??D??q}?^?$Z??{=N???(??qg????׌?p?w?h2%??p??|?ʌ?t?(????K???"ٍ???HL???f?YH?Z)?dN:??{??J?ơe<???H???,2z???f?nܟ'??^sМsL!`ύmjE?C~g2??
]?Q??Щp?O?%?t??????/d??? N/???`?Y??Tťfv?Ξvaڀ畘v???8S?鐃 Q?/?mL?o???ģ?iz?R?^>e?Kܫ??}??Ѧ??      ?   ?  x???Mk?0?ϳ?B?5^3#?_?5YzqB???z?z'?Xכ?SB?{ƭwch?	I???3??ӣ???O<?C?0?/?`??FM;?w?*J?C??<K?&??F?7?????z`???e????|
???Q?~§?<???7????ˋ?҉?/??E??L?4/?B2???"?d~??L?v???ȉ????_d?y???(?9?ŉ??-??Ƕ??u{R?h{W???????Zm?`????G?XK????~E??CԳx??^?r?=?a????z?N??]??%?i?S]h??P
?жR?׵	i?0??[ê??g(?q?x?I??? ??\?;??!?Y?@??:R??-R?,?%?
z?~???p??U_?$T?Lጎ??M/m?o6?wF?Z      ?   ?   x?mͽ?0@???)?@??v3??'?\??R?ķׅ??s??Aמ????Ôh$8?C8b??BG?
??-6?????????V?t??P9/?W.7????̱??P
????R=2~??i#?vgjݔ??0???R?8_?\[im	gn?!rZ?s!???IF      ?   ?   x?m?;?P??z?*f???v&??6??@x??{?&????????	?V?????i?A?4ŋ??V8?hVc?7x??	g[дjAH8?,?9???ġ?)y??ƺ?$????ĭ?V????+ޖ???C???????"?b(????jw?s/?q=?      ?   ?   x??ͱ?0???????A?tctq0?.'4BJ?2???N&???|L?p$?$ئa?B???ɯ2F?J?v???=???????`a????X3e?ɨF&WT?49?Mm??5?X???\~??{i_YWZ?)?eA???/??ܠT?\)?Z?Bw      ?   ?   x???1
1E????I?f??????&?#+????j)l!????G??k/#C?ö?R7X????%??8G???mL??h?&?x??)?o?S?0J??1?)?uLt}?N?T??|??)C?ǟ?l:??x?D^{?I??????:j??6???????A?[?Õ????tval??o??h??,.M?      ?      x????	?0???nj?bwF?d5?&r2?C?ؐ?????~??@\??{]?????\?p{??0?y??=
>?8x	^[??)???C??52???G?8*p??JK%?I?B?????\?Pz?????C      ?     x?m??n?0E??Wp_H????M?-?.?a?b?H*e????b:??0͜;?W?~?aر]?kA Ɛ6`??W??iQ?!???"v??if?w?N?
O?U?ڪ*?oy?jrh,???n?[FoS?p??Gۢ??Stp>n61򃂫Ї??~?-' >??/??g?b?ϱ??>=???m????	?
?3??]?
?le????V(I?$a?%+i?????????0???)?qF^(آ0???l?\?|??8G>-??]?.=6???j??U?v-9q??r?R粲3??D'??
?K??N?t?~?U?M?4oî´ρ?v??ݔr???(Z??YW??/9{-'?y?Z+?xˋ???l?u???|ӏO1??,????_????&4?BmyC5!???onr?SS?,?^?5?9?ɴ?U!Uɟx?c????%u??D?Y<f!=???҈??y???? W??Ҷځ;??&?;?
? ??|??mH?ܲ?p????|'??e??㯼岤?????xݮV?ߏF      ?   L   x?3?IM??4202?5??50Q00?21?22?3?015??60?26?4?2??I?+?Tjb?gildjSj????? O2?      ?   ?   x???1k?0???+ώ??$v??!??BY?\??*?Q츦??Wm?t?P?????q:7\????!?w,{?5?B;?wT#;?͍Äk?b???ۉ??	T??,/g?F?+YTj??"/H!s?H6?M???1I??_8ܬ??t??|?還G6???????ƎQ'?7????%J???Qi???,%̅????m???1?k)?Q?????v?)?O??uV?'5נ?k&??Lr?     