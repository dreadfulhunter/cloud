PGDMP                     
    y            postgres #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1) #   12.9 (Ubuntu 12.9-0ubuntu0.20.04.1) T    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13427    postgres    DATABASE     r   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3043            �            1259    16384    access    TABLE     �   CREATE TABLE public.access (
    id integer NOT NULL,
    id_role integer,
    id_resource integer,
    id_operation integer
);
    DROP TABLE public.access;
       public         heap    postgres    false            �            1259    16438    answer    TABLE     �   CREATE TABLE public.answer (
    id integer NOT NULL,
    answer_descriptive character varying(500),
    id_user integer,
    id_questionnaire integer
);
    DROP TABLE public.answer;
       public         heap    postgres    false            �            1259    16506    answer_id_seq    SEQUENCE     v   CREATE SEQUENCE public.answer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.answer_id_seq;
       public          postgres    false    210            �           0    0    answer_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.answer_id_seq OWNED BY public.answer.id;
          public          postgres    false    212            �            1259    16393 	   operation    TABLE     ^   CREATE TABLE public.operation (
    id integer NOT NULL,
    method character varying(100)
);
    DROP TABLE public.operation;
       public         heap    postgres    false            �            1259    16509    operation_id_seq    SEQUENCE     y   CREATE SEQUENCE public.operation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.operation_id_seq;
       public          postgres    false    203            �           0    0    operation_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.operation_id_seq OWNED BY public.operation.id;
          public          postgres    false    213            �            1259    16449    question    TABLE     -  CREATE TABLE public.question (
    id integer NOT NULL,
    text_question character varying(100),
    id_questionnaire integer,
    option1 character varying(100),
    option2 character varying(100),
    option4 character varying(100),
    count_options integer,
    option3 character varying(100)
);
    DROP TABLE public.question;
       public         heap    postgres    false            �            1259    16512    question_id_seq    SEQUENCE     x   CREATE SEQUENCE public.question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.question_id_seq;
       public          postgres    false    211            �           0    0    question_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.question_id_seq OWNED BY public.question.id;
          public          postgres    false    214            �            1259    16422    questionnaire    TABLE       CREATE TABLE public.questionnaire (
    id integer NOT NULL,
    type_genre character varying(100),
    title character varying(100),
    date date DEFAULT now(),
    count_like integer,
    count_view integer,
    count_questions integer,
    status boolean DEFAULT false
);
 !   DROP TABLE public.questionnaire;
       public         heap    postgres    false            �            1259    16515    questionnaire_id_seq    SEQUENCE     }   CREATE SEQUENCE public.questionnaire_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.questionnaire_id_seq;
       public          postgres    false    208            �           0    0    questionnaire_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.questionnaire_id_seq OWNED BY public.questionnaire.id;
          public          postgres    false    215            �            1259    16405    resource    TABLE     Z   CREATE TABLE public.resource (
    id integer NOT NULL,
    api character varying(500)
);
    DROP TABLE public.resource;
       public         heap    postgres    false            �            1259    16520    resource_id_seq    SEQUENCE     x   CREATE SEQUENCE public.resource_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.resource_id_seq;
       public          postgres    false    205            �           0    0    resource_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.resource_id_seq OWNED BY public.resource.id;
          public          postgres    false    216            �            1259    16399    roles    TABLE     X   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(100)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16523    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    204            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    217            �            1259    16411    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    password character varying(100),
    email character varying(100),
    name character varying(100)
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    16430    user-questionnaire    TABLE     �   CREATE TABLE public."user-questionnaire" (
    id integer NOT NULL,
    id_user integer,
    id_questionnaire integer,
    status boolean
);
 (   DROP TABLE public."user-questionnaire";
       public         heap    postgres    false            �            1259    16529    user-questionnaire_id_seq    SEQUENCE     �   CREATE SEQUENCE public."user-questionnaire_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."user-questionnaire_id_seq";
       public          postgres    false    209            �           0    0    user-questionnaire_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."user-questionnaire_id_seq" OWNED BY public."user-questionnaire".id;
          public          postgres    false    219            �            1259    16417 	   user-role    TABLE     N   CREATE TABLE public."user-role" (
    id_user integer,
    id_role integer
);
    DROP TABLE public."user-role";
       public         heap    postgres    false            �            1259    16526    user_id_seq    SEQUENCE     t   CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    206            �           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    218            (           2604    16508 	   answer id    DEFAULT     f   ALTER TABLE ONLY public.answer ALTER COLUMN id SET DEFAULT nextval('public.answer_id_seq'::regclass);
 8   ALTER TABLE public.answer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    210                        2604    16511    operation id    DEFAULT     l   ALTER TABLE ONLY public.operation ALTER COLUMN id SET DEFAULT nextval('public.operation_id_seq'::regclass);
 ;   ALTER TABLE public.operation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    203            )           2604    16514    question id    DEFAULT     j   ALTER TABLE ONLY public.question ALTER COLUMN id SET DEFAULT nextval('public.question_id_seq'::regclass);
 :   ALTER TABLE public.question ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    211            %           2604    16517    questionnaire id    DEFAULT     t   ALTER TABLE ONLY public.questionnaire ALTER COLUMN id SET DEFAULT nextval('public.questionnaire_id_seq'::regclass);
 ?   ALTER TABLE public.questionnaire ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    208            "           2604    16522    resource id    DEFAULT     j   ALTER TABLE ONLY public.resource ALTER COLUMN id SET DEFAULT nextval('public.resource_id_seq'::regclass);
 :   ALTER TABLE public.resource ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    205            !           2604    16525    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    204            #           2604    16528    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    206            '           2604    16531    user-questionnaire id    DEFAULT     �   ALTER TABLE ONLY public."user-questionnaire" ALTER COLUMN id SET DEFAULT nextval('public."user-questionnaire_id_seq"'::regclass);
 F   ALTER TABLE public."user-questionnaire" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    209            �          0    16384    access 
   TABLE DATA           H   COPY public.access (id, id_role, id_resource, id_operation) FROM stdin;
    public          postgres    false    202   ^       �          0    16438    answer 
   TABLE DATA           S   COPY public.answer (id, answer_descriptive, id_user, id_questionnaire) FROM stdin;
    public          postgres    false    210   �^       �          0    16393 	   operation 
   TABLE DATA           /   COPY public.operation (id, method) FROM stdin;
    public          postgres    false    203   _       �          0    16449    question 
   TABLE DATA           z   COPY public.question (id, text_question, id_questionnaire, option1, option2, option4, count_options, option3) FROM stdin;
    public          postgres    false    211   2_       �          0    16422    questionnaire 
   TABLE DATA           u   COPY public.questionnaire (id, type_genre, title, date, count_like, count_view, count_questions, status) FROM stdin;
    public          postgres    false    208   �`       �          0    16405    resource 
   TABLE DATA           +   COPY public.resource (id, api) FROM stdin;
    public          postgres    false    205   {a       �          0    16399    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    204   fb       �          0    16411    user 
   TABLE DATA           ;   COPY public."user" (id, password, email, name) FROM stdin;
    public          postgres    false    206   �b       �          0    16430    user-questionnaire 
   TABLE DATA           U   COPY public."user-questionnaire" (id, id_user, id_questionnaire, status) FROM stdin;
    public          postgres    false    209   %c       �          0    16417 	   user-role 
   TABLE DATA           7   COPY public."user-role" (id_user, id_role) FROM stdin;
    public          postgres    false    207   kc       �           0    0    answer_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.answer_id_seq', 15, true);
          public          postgres    false    212            �           0    0    operation_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.operation_id_seq', 1, false);
          public          postgres    false    213            �           0    0    question_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.question_id_seq', 5, true);
          public          postgres    false    214            �           0    0    questionnaire_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.questionnaire_id_seq', 6, true);
          public          postgres    false    215            �           0    0    resource_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.resource_id_seq', 1, false);
          public          postgres    false    216            �           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    217            �           0    0    user-questionnaire_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."user-questionnaire_id_seq"', 19, true);
          public          postgres    false    219            �           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 9, true);
          public          postgres    false    218            ,           2606    16392    access access_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.access
    ADD CONSTRAINT access_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.access DROP CONSTRAINT access_pk;
       public            postgres    false    202            @           2606    16448    answer answer_pk 
   CONSTRAINT     N   ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_pk PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.answer DROP CONSTRAINT answer_pk;
       public            postgres    false    210            /           2606    16398    operation operation_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.operation
    ADD CONSTRAINT operation_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.operation DROP CONSTRAINT operation_pk;
       public            postgres    false    203            C           2606    16455    question question_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.question DROP CONSTRAINT question_pk;
       public            postgres    false    211            :           2606    16519    questionnaire questionnaire_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.questionnaire
    ADD CONSTRAINT questionnaire_pk PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.questionnaire DROP CONSTRAINT questionnaire_pk;
       public            postgres    false    208            5           2606    16410    resource resource_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.resource
    ADD CONSTRAINT resource_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.resource DROP CONSTRAINT resource_pk;
       public            postgres    false    205            2           2606    16404    roles roles_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pk;
       public            postgres    false    204            =           2606    16437 (   user-questionnaire user-questionnaire_pk 
   CONSTRAINT     j   ALTER TABLE ONLY public."user-questionnaire"
    ADD CONSTRAINT "user-questionnaire_pk" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."user-questionnaire" DROP CONSTRAINT "user-questionnaire_pk";
       public            postgres    false    209            7           2606    16416    user user_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pk;
       public            postgres    false    206            *           1259    16390    access_id_uindex    INDEX     H   CREATE UNIQUE INDEX access_id_uindex ON public.access USING btree (id);
 $   DROP INDEX public.access_id_uindex;
       public            postgres    false    202            >           1259    16445    answer_id_uindex    INDEX     H   CREATE UNIQUE INDEX answer_id_uindex ON public.answer USING btree (id);
 $   DROP INDEX public.answer_id_uindex;
       public            postgres    false    210            -           1259    16396    operation_id_uindex    INDEX     N   CREATE UNIQUE INDEX operation_id_uindex ON public.operation USING btree (id);
 '   DROP INDEX public.operation_id_uindex;
       public            postgres    false    203            A           1259    16453    question_id_uindex    INDEX     L   CREATE UNIQUE INDEX question_id_uindex ON public.question USING btree (id);
 &   DROP INDEX public.question_id_uindex;
       public            postgres    false    211            8           1259    16429    questionnaire_id_uindex    INDEX     V   CREATE UNIQUE INDEX questionnaire_id_uindex ON public.questionnaire USING btree (id);
 +   DROP INDEX public.questionnaire_id_uindex;
       public            postgres    false    208            3           1259    16408    resource_id_uindex    INDEX     L   CREATE UNIQUE INDEX resource_id_uindex ON public.resource USING btree (id);
 &   DROP INDEX public.resource_id_uindex;
       public            postgres    false    205            0           1259    16402    roles_id_uindex    INDEX     F   CREATE UNIQUE INDEX roles_id_uindex ON public.roles USING btree (id);
 #   DROP INDEX public.roles_id_uindex;
       public            postgres    false    204            ;           1259    16434    user-questionnaire_id_uindex    INDEX     d   CREATE UNIQUE INDEX "user-questionnaire_id_uindex" ON public."user-questionnaire" USING btree (id);
 2   DROP INDEX public."user-questionnaire_id_uindex";
       public            postgres    false    209            D           2606    16456    access access_operation_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.access
    ADD CONSTRAINT access_operation_id_fk FOREIGN KEY (id_operation) REFERENCES public.operation(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.access DROP CONSTRAINT access_operation_id_fk;
       public          postgres    false    2863    202    203            E           2606    16461    access access_resource_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.access
    ADD CONSTRAINT access_resource_id_fk FOREIGN KEY (id_resource) REFERENCES public.resource(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.access DROP CONSTRAINT access_resource_id_fk;
       public          postgres    false    202    2869    205            F           2606    16466    access access_roles_id_fk    FK CONSTRAINT     x   ALTER TABLE ONLY public.access
    ADD CONSTRAINT access_roles_id_fk FOREIGN KEY (id_role) REFERENCES public.roles(id);
 C   ALTER TABLE ONLY public.access DROP CONSTRAINT access_roles_id_fk;
       public          postgres    false    204    2866    202            K           2606    16481 !   answer answer_questionnaire_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_questionnaire_id_fk FOREIGN KEY (id_questionnaire) REFERENCES public.questionnaire(id) ON UPDATE CASCADE ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.answer DROP CONSTRAINT answer_questionnaire_id_fk;
       public          postgres    false    208    2872    210            L           2606    16486    answer answer_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_user_id_fk FOREIGN KEY (id_user) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.answer DROP CONSTRAINT answer_user_id_fk;
       public          postgres    false    206    2871    210            M           2606    16491 %   question question_questionnaire_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_questionnaire_id_fk FOREIGN KEY (id_questionnaire) REFERENCES public.questionnaire(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.question DROP CONSTRAINT question_questionnaire_id_fk;
       public          postgres    false    2872    211    208            I           2606    16496 9   user-questionnaire user-questionnaire_questionnaire_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."user-questionnaire"
    ADD CONSTRAINT "user-questionnaire_questionnaire_id_fk" FOREIGN KEY (id_questionnaire) REFERENCES public.questionnaire(id) ON UPDATE CASCADE ON DELETE CASCADE;
 g   ALTER TABLE ONLY public."user-questionnaire" DROP CONSTRAINT "user-questionnaire_questionnaire_id_fk";
       public          postgres    false    208    2872    209            J           2606    16501 0   user-questionnaire user-questionnaire_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."user-questionnaire"
    ADD CONSTRAINT "user-questionnaire_user_id_fk" FOREIGN KEY (id_user) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public."user-questionnaire" DROP CONSTRAINT "user-questionnaire_user_id_fk";
       public          postgres    false    2871    206    209            G           2606    16471    user-role user-role_roles_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."user-role"
    ADD CONSTRAINT "user-role_roles_id_fk" FOREIGN KEY (id_role) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public."user-role" DROP CONSTRAINT "user-role_roles_id_fk";
       public          postgres    false    204    2866    207            H           2606    16476    user-role user-role_user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."user-role"
    ADD CONSTRAINT "user-role_user_id_fk" FOREIGN KEY (id_user) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public."user-role" DROP CONSTRAINT "user-role_user_id_fk";
       public          postgres    false    2871    206    207            �   d   x���� ��0Nyu��?G}:��HD���N�t�lnA+��A'��]�{���c%!�����+&ʘ�+,!����l�`[��&6��������_`      �   q   x�34༱�v���G=��nl���i�i�eh�yc��7�nl��sc����gi^JjZf^j
P����E���Є�f뭕�� IS��n���v��f�͎������qqq ��1      �      x�3�tw�2������� "4X      �   �  x�}RKn�@]{N�T�|��p�"A�E�P��$Q!
����dד���U%>������d(�6vz�ֆ�5?�� ���2P+�9[�bLk����k{W�	�Ov�Y���|k�O�Kюfo����&�ځ��L�e�0��ڪ���R�r��*&A����
��D��9��
׎�����XY������ݜĨX�����Ӣ��H�jG̪�C! ����_o�g���]�P��3I)�AK{\M�ig,�5��6 )b%Q@�:���=��v-C�Q��v
�B��r�0�-�䞐ΰcf��߇�Xs=
�Ȅ���'��1��P�������I�z�� RLЂH-X
,�X%��J>OG��Z���`2�#l�Ҙ���s���m      �   �   x�e���0E��.�&���3{ ����isAE���O��I/TH���z_z���K��Ѧ��|�TF����"-k�jgtp�!P�8���7^����8�	=Z��!7|� ����$t��_p��C�bs�wN:1-�r�r�jS��R���n      �   �   x����N1���Ð&�/����[�UH��"�xC_�E$�j�8�X3��BY�PD�+���G��p�a5K���Cx�P�a�E��B����(߀-%T
&��jzll����9ùo����X��A/��|��֏���Ц�KL>�V�����j��l�ɂ�����5�]Z��%��ێ}���#�eM��8FW��zj?l̜�Y�;&�� |�V��      �   &   x�3�tt����2�v�2��������� erP      �   y   x�m�1�0@�9>LDh����,V��8��2���*���O!������Q�Q�9#-�6���b�C`�[�q~a5ۣ��l�p�m�N֣��Tn+�a�#�/�F�*�S�����-���=
      �   6   x�34��4�,�24�1����01L9-!"f��s�ư�2b���� J`Z      �      x�3�4�2b ��=... &�     