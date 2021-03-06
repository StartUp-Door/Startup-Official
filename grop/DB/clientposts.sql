PGDMP     +    !                y            newstart    12.7    12.7     E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    25025    newstart    DATABASE     ?   CREATE DATABASE newstart WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE newstart;
                postgres    false            ?            1259    25044    clientposts    TABLE     F  CREATE TABLE public.clientposts (
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
       public         heap    postgres    false            ?            1259    25051    clientposts_post_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.clientposts_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientposts_post_id_seq;
       public          postgres    false    207            I           0    0    clientposts_post_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientposts_post_id_seq OWNED BY public.clientposts.post_id;
          public          postgres    false    208            ?
           2604    25127    clientposts post_id    DEFAULT     z   ALTER TABLE ONLY public.clientposts ALTER COLUMN post_id SET DEFAULT nextval('public.clientposts_post_id_seq'::regclass);
 B   ALTER TABLE public.clientposts ALTER COLUMN post_id DROP DEFAULT;
       public          postgres    false    208    207            A          0    25044    clientposts 
   TABLE DATA           i   COPY public.clientposts (post_id, category, description, location, price, image, cid, ftime) FROM stdin;
    public          postgres    false    207   g       J           0    0    clientposts_post_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.clientposts_post_id_seq', 17, true);
          public          postgres    false    208            ?
           2606    25141    clientposts clientposts_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.clientposts
    ADD CONSTRAINT clientposts_pkey PRIMARY KEY (post_id);
 F   ALTER TABLE ONLY public.clientposts DROP CONSTRAINT clientposts_pkey;
       public            postgres    false    207            ?
           2606    25191    clientposts fk_cidclient    FK CONSTRAINT     u   ALTER TABLE ONLY public.clientposts
    ADD CONSTRAINT fk_cidclient FOREIGN KEY (cid) REFERENCES public.client(cid);
 B   ALTER TABLE ONLY public.clientposts DROP CONSTRAINT fk_cidclient;
       public          postgres    false    207            A   ?  x?}UM??6<???=??J??S?%(R(?E[$?\h??b,??(?q}W????{?E<3?3??o????xV?K??????W?q?X?1?+i*??????L??_???3???Am???w?,?*?+^?\J&?	K?>ĸ?????n?ѹ-|r;??u??¦?ˊ???*?????Ɔ>??]l????mIqpЎ?߄?ki8N??Q??FL??A?7?c[??~??!l?O???|???5&??????P?~?Q???O.d?3?l?u!]?\H?1???q???|H?m8??????Ȱ??v?]??"??1/?x???.???)?M?s$;H³???r@6΂:7?(?'?????%2eP??]???k?["R?i5Hi̍6JλG??w??h?|??(e?qV?????0&/?!<?8TR?(M9;??1 ?k?S?h??Kw0?&??t͸???)_
(P
?Ҵ??kR???w]F?"?JU
Q>?j("???9/o?B???????o???΍??Sd??m(mtԺ.ѻSaC	?0j??۹??K??PB?Y*???????'?????J?-*/
=7ʥ???vc7D?@s՜?|C??\??$???M??f?>?>e?P??H?7)\ ++?HM.4?S?R?k????:8?j??.??͞8n-?????6???c???T?f,H?o>?P2'zG]??????0??M#??9kk2!???K)a?.Z??8>????9	>?c\Ǹ??PAc?>?????6???????%?#?ԼK[3
%W??ƽ?<?o=??1???fZJm????y*3&?Oc??p?;??K?????k?k     