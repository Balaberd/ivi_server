PGDMP         8                {            nest_project_db    15.2    15.2 u    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16671    nest_project_db    DATABASE     {   CREATE DATABASE nest_project_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE nest_project_db;
                postgres    false            �            1259    41722    country    TABLE     �   CREATE TABLE public.country (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    41721    country_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    234            �           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    233            �            1259    41729    genre    TABLE     �   CREATE TABLE public.genre (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone
);
    DROP TABLE public.genre;
       public         heap    postgres    false            �            1259    41728    genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.genre_id_seq;
       public          postgres    false    236            �           0    0    genre_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.genre_id_seq OWNED BY public.genre.id;
          public          postgres    false    235            �            1259    41115    google-users    TABLE     N  CREATE TABLE public."google-users" (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    "displayName" character varying(255) NOT NULL,
    banned boolean DEFAULT false,
    "banReason" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
 "   DROP TABLE public."google-users";
       public         heap    postgres    false            �            1259    41114    google-users_id_seq    SEQUENCE     �   CREATE SEQUENCE public."google-users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."google-users_id_seq";
       public          postgres    false    229            �           0    0    google-users_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."google-users_id_seq" OWNED BY public."google-users".id;
          public          postgres    false    228            �            1259    25208    groups    TABLE     �   CREATE TABLE public.groups (
    id integer NOT NULL,
    keyword character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.groups;
       public         heap    postgres    false            �            1259    25207    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.groups_id_seq;
       public          postgres    false    221            �           0    0    groups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;
          public          postgres    false    220            �            1259    32998    images    TABLE       CREATE TABLE public.images (
    id integer NOT NULL,
    url character varying(255) NOT NULL,
    "tableName" character varying(255),
    "recordId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.images;
       public         heap    postgres    false            �            1259    32997    images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public          postgres    false    227            �           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
          public          postgres    false    226            �            1259    41560    movie_person    TABLE     d   CREATE TABLE public.movie_person (
    movie_id integer NOT NULL,
    person_id integer NOT NULL
);
     DROP TABLE public.movie_person;
       public         heap    postgres    false            �            1259    42045    movies    TABLE     n  CREATE TABLE public.movies (
    id integer NOT NULL,
    avatars character varying(255) NOT NULL,
    promo character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    original_name character varying(255) NOT NULL,
    rating double precision NOT NULL,
    "ageLimit" double precision NOT NULL,
    years character varying(255) NOT NULL,
    durations character varying(255) NOT NULL,
    country_id integer NOT NULL,
    genre_id integer NOT NULL,
    text text NOT NULL,
    director_id integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.movies;
       public         heap    postgres    false            �            1259    42044    movies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.movies_id_seq;
       public          postgres    false    240            �           0    0    movies_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;
          public          postgres    false    239            �            1259    41539    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    41538    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    231            �           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    230            �            1259    25243    post_groups    TABLE     j   CREATE TABLE public.post_groups (
    id integer NOT NULL,
    "groupId" integer,
    "postId" integer
);
    DROP TABLE public.post_groups;
       public         heap    postgres    false            �            1259    25242    post_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.post_groups_id_seq;
       public          postgres    false    223            �           0    0    post_groups_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.post_groups_id_seq OWNED BY public.post_groups.id;
          public          postgres    false    222            �            1259    41790    posts    TABLE     k  CREATE TABLE public.posts (
    id integer NOT NULL,
    "uniqueName" character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    content character varying(255) NOT NULL,
    "userId" integer,
    "movieId" integer,
    "imageId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.posts;
       public         heap    postgres    false            �            1259    41789    posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    238            �           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    237            �            1259    32951    profiles    TABLE     m  CREATE TABLE public.profiles (
    id integer NOT NULL,
    "firstName" character varying(255) NOT NULL,
    "lastName" character varying(255) NOT NULL,
    age integer NOT NULL,
    "phoneNumber" character varying(255) NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.profiles;
       public         heap    postgres    false            �            1259    32950    profiles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.profiles_id_seq;
       public          postgres    false    225            �           0    0    profiles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;
          public          postgres    false    224            �            1259    16685    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    value character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    16684    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    217            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    216            �            1259    16696 
   user_roles    TABLE     h   CREATE TABLE public.user_roles (
    id integer NOT NULL,
    "roleId" integer,
    "userId" integer
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    16695    user_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.user_roles_id_seq;
       public          postgres    false    219            �           0    0    user_roles_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.user_roles_id_seq OWNED BY public.user_roles.id;
          public          postgres    false    218            �            1259    16673    users    TABLE     @  CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    banned boolean DEFAULT false,
    "banReason" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16672    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    215            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    214            �           2604    41725 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    41732    genre id    DEFAULT     d   ALTER TABLE ONLY public.genre ALTER COLUMN id SET DEFAULT nextval('public.genre_id_seq'::regclass);
 7   ALTER TABLE public.genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    41118    google-users id    DEFAULT     v   ALTER TABLE ONLY public."google-users" ALTER COLUMN id SET DEFAULT nextval('public."google-users_id_seq"'::regclass);
 @   ALTER TABLE public."google-users" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    25211 	   groups id    DEFAULT     f   ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);
 8   ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    33001 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    42048 	   movies id    DEFAULT     f   ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);
 8   ALTER TABLE public.movies ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            �           2604    41542 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    25246    post_groups id    DEFAULT     p   ALTER TABLE ONLY public.post_groups ALTER COLUMN id SET DEFAULT nextval('public.post_groups_id_seq'::regclass);
 =   ALTER TABLE public.post_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    41793    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    32954    profiles id    DEFAULT     j   ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);
 :   ALTER TABLE public.profiles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    16688    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16699    user_roles id    DEFAULT     n   ALTER TABLE ONLY public.user_roles ALTER COLUMN id SET DEFAULT nextval('public.user_roles_id_seq'::regclass);
 <   ALTER TABLE public.user_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16676    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    41722    country 
   TABLE DATA           F   COPY public.country (id, value, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    234   �       �          0    41729    genre 
   TABLE DATA           D   COPY public.genre (id, value, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    236   ��       �          0    41115    google-users 
   TABLE DATA           q   COPY public."google-users" (id, email, "displayName", banned, "banReason", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    229   3�       �          0    25208    groups 
   TABLE DATA           G   COPY public.groups (id, keyword, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    221   ߌ       �          0    32998    images 
   TABLE DATA           \   COPY public.images (id, url, "tableName", "recordId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    227   }�       �          0    41560    movie_person 
   TABLE DATA           ;   COPY public.movie_person (movie_id, person_id) FROM stdin;
    public          postgres    false    232   ��       �          0    42045    movies 
   TABLE DATA           �   COPY public.movies (id, avatars, promo, name, original_name, rating, "ageLimit", years, durations, country_id, genre_id, text, director_id, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    240   b�       �          0    41539    person 
   TABLE DATA           D   COPY public.person (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    231   �=      �          0    25243    post_groups 
   TABLE DATA           >   COPY public.post_groups (id, "groupId", "postId") FROM stdin;
    public          postgres    false    223   	u      �          0    41790    posts 
   TABLE DATA           {   COPY public.posts (id, "uniqueName", title, content, "userId", "movieId", "imageId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    238   �u      �          0    32951    profiles 
   TABLE DATA           w   COPY public.profiles (id, "firstName", "lastName", age, "phoneNumber", "userId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    225   8v      �          0    16685    roles 
   TABLE DATA           Q   COPY public.roles (id, value, description, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    217   �w      �          0    16696 
   user_roles 
   TABLE DATA           <   COPY public.user_roles (id, "roleId", "userId") FROM stdin;
    public          postgres    false    219   |x      �          0    16673    users 
   TABLE DATA           c   COPY public.users (id, email, password, banned, "banReason", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    215   
y      �           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.country_id_seq', 22, true);
          public          postgres    false    233            �           0    0    genre_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.genre_id_seq', 21, true);
          public          postgres    false    235            �           0    0    google-users_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."google-users_id_seq"', 2, true);
          public          postgres    false    228            �           0    0    groups_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.groups_id_seq', 9, true);
          public          postgres    false    220            �           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 20, true);
          public          postgres    false    226            �           0    0    movies_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.movies_id_seq', 505, true);
          public          postgres    false    239            �           0    0    person_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.person_id_seq', 900, true);
          public          postgres    false    230            �           0    0    post_groups_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.post_groups_id_seq', 49, true);
          public          postgres    false    222            �           0    0    posts_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.posts_id_seq', 3, true);
          public          postgres    false    237            �           0    0    profiles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.profiles_id_seq', 19, true);
          public          postgres    false    224            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 6, true);
          public          postgres    false    216            �           0    0    user_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.user_roles_id_seq', 33, true);
          public          postgres    false    218            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 32, true);
          public          postgres    false    214            �           2606    41727    country country_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.country DROP CONSTRAINT country_pkey;
       public            postgres    false    234            �           2606    41734    genre genre_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.genre DROP CONSTRAINT genre_pkey;
       public            postgres    false    236            �           2606    41125 #   google-users google-users_email_key 
   CONSTRAINT     c   ALTER TABLE ONLY public."google-users"
    ADD CONSTRAINT "google-users_email_key" UNIQUE (email);
 Q   ALTER TABLE ONLY public."google-users" DROP CONSTRAINT "google-users_email_key";
       public            postgres    false    229            �           2606    41123    google-users google-users_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."google-users"
    ADD CONSTRAINT "google-users_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."google-users" DROP CONSTRAINT "google-users_pkey";
       public            postgres    false    229            �           2606    25215    groups groups_keyword_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_keyword_key UNIQUE (keyword);
 C   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_keyword_key;
       public            postgres    false    221            �           2606    25213    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public            postgres    false    221            �           2606    33005    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    227            �           2606    33007    images images_url_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_url_key UNIQUE (url);
 ?   ALTER TABLE ONLY public.images DROP CONSTRAINT images_url_key;
       public            postgres    false    227            �           2606    41564    movie_person movie_person_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.movie_person
    ADD CONSTRAINT movie_person_pkey PRIMARY KEY (movie_id, person_id);
 H   ALTER TABLE ONLY public.movie_person DROP CONSTRAINT movie_person_pkey;
       public            postgres    false    232    232            �           2606    42052    movies movies_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_pkey;
       public            postgres    false    240            �           2606    41544    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    231            �           2606    25250 *   post_groups post_groups_groupId_postId_key 
   CONSTRAINT     v   ALTER TABLE ONLY public.post_groups
    ADD CONSTRAINT "post_groups_groupId_postId_key" UNIQUE ("groupId", "postId");
 V   ALTER TABLE ONLY public.post_groups DROP CONSTRAINT "post_groups_groupId_postId_key";
       public            postgres    false    223    223            �           2606    25248    post_groups post_groups_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.post_groups
    ADD CONSTRAINT post_groups_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.post_groups DROP CONSTRAINT post_groups_pkey;
       public            postgres    false    223            �           2606    41797    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    238            �           2606    41799    posts posts_uniqueName_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_uniqueName_key" UNIQUE ("uniqueName");
 F   ALTER TABLE ONLY public.posts DROP CONSTRAINT "posts_uniqueName_key";
       public            postgres    false    238            �           2606    32958    profiles profiles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.profiles DROP CONSTRAINT profiles_pkey;
       public            postgres    false    225            �           2606    32960    profiles profiles_userId_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT "profiles_userId_key" UNIQUE ("userId");
 H   ALTER TABLE ONLY public.profiles DROP CONSTRAINT "profiles_userId_key";
       public            postgres    false    225            �           2606    16692    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    217            �           2606    16694    roles roles_value_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_value_key UNIQUE (value);
 ?   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_value_key;
       public            postgres    false    217            �           2606    16701    user_roles user_roles_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    219            �           2606    16703 '   user_roles user_roles_roleId_userId_key 
   CONSTRAINT     r   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_roleId_userId_key" UNIQUE ("roleId", "userId");
 S   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_roleId_userId_key";
       public            postgres    false    219    219            �           2606    16683    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    215            �           2606    16681    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            �           2606    41570 (   movie_person movie_person_person_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movie_person
    ADD CONSTRAINT movie_person_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.movie_person DROP CONSTRAINT movie_person_person_id_fkey;
       public          postgres    false    232    231    3551            �           2606    42053    movies movies_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(id) ON UPDATE CASCADE;
 G   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_country_id_fkey;
       public          postgres    false    240    234    3555            �           2606    42063    movies movies_director_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_director_id_fkey FOREIGN KEY (director_id) REFERENCES public.person(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_director_id_fkey;
       public          postgres    false    240    3551    231            �           2606    42058    movies movies_genre_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genre(id) ON UPDATE CASCADE;
 E   ALTER TABLE ONLY public.movies DROP CONSTRAINT movies_genre_id_fkey;
       public          postgres    false    3557    240    236            �           2606    25251 $   post_groups post_groups_groupId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.post_groups
    ADD CONSTRAINT "post_groups_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES public.groups(id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.post_groups DROP CONSTRAINT "post_groups_groupId_fkey";
       public          postgres    false    3533    221    223            �           2606    41810    posts posts_imageId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_imageId_fkey" FOREIGN KEY ("imageId") REFERENCES public.images(id) ON UPDATE CASCADE;
 D   ALTER TABLE ONLY public.posts DROP CONSTRAINT "posts_imageId_fkey";
       public          postgres    false    3543    227    238            �           2606    41800    posts posts_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT "posts_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.posts DROP CONSTRAINT "posts_userId_fkey";
       public          postgres    false    3521    215    238            �           2606    32961    profiles profiles_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT "profiles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.profiles DROP CONSTRAINT "profiles_userId_fkey";
       public          postgres    false    215    225    3521            �           2606    16704 !   user_roles user_roles_roleId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_roleId_fkey" FOREIGN KEY ("roleId") REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_roleId_fkey";
       public          postgres    false    219    3523    217            �           2606    16709 !   user_roles user_roles_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT "user_roles_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT "user_roles_userId_fkey";
       public          postgres    false    219    215    3521            �   �  x��T�jA<O������ή~K>fU�I�< !0��'���D�5��6��A�R�EUW�X�9a�؆�q�˻Yٵ�c�A�E��:˪D�����)�����.���S�P�u�Qa�&ه���*�@T\a�`�ޘr+��	�\'������+S�N!�X�
m�vp+����(�sF�j�kl���	wz|Q��)�C�ܻ�@d3�W|�Ʉ�T��Z�{�s��xQK|0]���	D��=Ê�c$�J�����l�����_.�3v�g�)�zj��ߤ����Q���-WQS�G��s���M�@����:�!�鳨�@ �\�%���j�WP r\����I��;e\o�@��/S�`�p�?�sq7C>�d�'y�{D�$��      �   u  x���In�PD׿O�}�79K�)2\�!8p�����%E$"K��j?���d��܄4I�$���!f�<]fż,�Ǥ�!Q�WD���'EקK�1��G�� ���gE�����L�,(��I6��Z��h�[��?��-�&k1�
uI!�b�����j1.Q��ɛ/��;0�c�ITi��:�ww�`���AӲ�}ZY�Y�K�S�����?��N!�%�1�̓���v�{�E-�^��
�v<���m�Qv��5N�%�YP_�,g�:�Cs��6���z���Eݚ���r7F0�� �d.Q�fo�ۯ�V�Q9�2���^�f�Rj���L��	�N�Did��J6�2�1Z����i�N��Ӝ�~ �-��      �   �   x�3�,N-KN���O�I�K44�tH�M���K���0���/콰A�[/l��$�^�uagg���������������������������9).#�s3Kcs4�����$w*\�a����`z;���Ns+c=SKS,v"Iq��qqq ��S�      �   �   x�}̻
A��z��˄\�ɳ�X������8#B��|�p�/AH4�F��͙�M��)��k��,��J��y����H��P}R�U�JP^Z��sE�i�m�y����I�XF�&���u%�sq1�d_�[�;#\K�      �      x������ � �      �   �  x�=�K��8׮����������7��v�ʖ"Ƿ������<���߉�g�_}'/�ѿ����y�[g�5f��>O�������>����������1@���������������ߞZ������g����_,M���p.�f��z�4J��Wc��Z��)3�<�=~S3�	��<���@������hS���U6��;����#+�4�{A���,�F��eh��5�6SH[_��˒i��W�jM|����kB���i���-C� G�W�\���w|�d�_��f,ٱ�60���W��� ��Җh�BM�����Ԇ��V��dO�a�ojo����2o�9��2�vE(yGkW�b�Ժ[��=���O9K몾%�����mk�t�ֳ[SX�Ю��Z�6�5�1A�nKS���hyyx�`���LdFaO}�]�ʪ�6��-X2��]H�ai*2�P:mK2��K�Ё�e���@���S��ӳR���%��f�L����� ���~~"O��\���|�{�6rܭ\����~|4y�Pz9���p���h
��p�RGSP��y�Z�y��,�����#��`GF<2�)��{�"�ϯ�U�+l�����0�D���+�@(��,����oiֆ��l�K<�ߕ�(��%�*:GB�XMB�.hA:.^�RXa�Gih:���H���s@�g��5n�{r��<F0l�ieKb�h�2y3K����'���Z1,Y%��<-�� +i��j�t�<�U���?ЗK��$h)�i	i��ݱ��&+��/�i���¿<kA�J��A^i6?���6�P4�a���I왏�Y��<z��kOs-Ǌ6�����}5Lqya�t�G/2B/"�[d�\�v��(�����!btn�Q뻾��I���V�̜����;��{E�#[�.�Q.�x�"��؜ɸ|�)6��#ir[���D�P�>�^>{��M�����$`2��f���\�0�"�syͩ��㚭�0�����6�R�d���q���o���]���k4��U��"��C=�1����'�`��]��+�bk(��/��R�m��pً�ꏖDtgM�\���h[}��R����<��6�0��B�!6��&�4�fI^%��rs)��lS ���#��S������ �cq2sE��a!��hm>f�X��쒀��w�gm&�S�G�����Kb% �n!�m�[A��L�;���D k	�ڋVo��G:�Ʋ  ��,6)��"��;��=�L�X<��� U��\�P=̍�����P j+�n(�D^#��
�ڤ�x�ZQ�[s�
5M2�)U�� 2N�B�}���O7�{�ULr�q�ƈ:&I�D�㺐��&۪�b���j$���d����D��"ڱcN��(�4��-�k�d�����d�&�/�h���c��K�ŔwM	C=N�.����D���E�8	!ejⶐ@�$k�2w�{��L�P4Q) D��r��H=�2lc��HΧAB���C%"]���<�7�a�&�P�b<��1�a;I���p`�҅�~C�W�P'�qr��fr;�z�\��.N`�v�V��9���L��^���<�Z���04Kɱf���dg�����څ���B�B������3B�F�D]�lwJH��ݤ]���d��MD⦔�('�ﵩ��dT:y�ɦ.6u�E�H�D�p��aR���x��P&�S-��M"�y������U9�sW�`ߨ�j��L��I9@Y*���f�(�Xo�Tk��Ŭ�����yR�A�"?Ӥ��Ի��)u�x$�������ԁ����K��1�J��-�����89�D<n|O�8�ar��8]>]-L���.�-E���� }�e�f�Cr�Dr�)yؾ�rm0)����x��0|"(!�0d�����HY�҇�m�Zq�}�^�tX�K�H�A{-��e�#)}X�#���@����j�^�'����%������t��ӻ9�hf��/��-s�Z�
���aRM�eb�Z�$�V�%�?&�����������?��Zˠ��1K�� �D)�{�'�aR�?L���5Ir�zǤ���1��k��4I�O>�t���$YI�'���=�ĕ�RB.��u0p���5�y�qM��2Y�g�<���G*����K*��#�HH��ń~n�0��k
�x�贂|�NH��0탈�|LV!�ج��A~����^D>.��*"̃�K$�s�
��P��^�z��Z�����*���W8i�F��6��E*�'��iZ����
�p�n[���;r�^�rK5-�����dG�r;"�6��eQ�6�D����ф�0ݲ�a��SL0��7(6w����RE�A���R�S�����?��R��*��%���M��G��B����`�oI��oZ1�O�����h$��C��BP�@��D)0$M%�]�e�`QF`�
����}�	Λ�~ʵ@��� �MꉹL:�Jh�����D��=��Ț��~�|� �_���QP`������B�0��/�A��P
�
ҷR��^/��+�(����-GzH�XR4�f��( �HBq�������yU6��e��n�AfGAACX\J�*^7̔MKn;�z��8u�$0�R�w/Q�X׸���H�Pe��&�Y�o�H�C����.3,�P>[n�o3�z�g�����a����v�$-^�a��T|�)&͘��8�$3-7��IxV�M� �UD>�
�؏u���KA�T��l�N0 �;*�z��~�p�a�����4�ǉ��k~I�4(�C�y���TICc�����7����.��~ $\���n&lAA�q.��!�6 �T@!�+�.�xi��!/$h8�{���B"�7i8e���)����^*'�����I0�}P�˙��U	��Hn_㑚�x�P�c�p��ڡP��H�[+���`���z�:HqZ�������jb'\Q0��5L�j�tR-'�OE�}x��w6�CQI��=�}�*
(�iP�����v��Z�feu�j�r�7Z%��C��?�/� H�x�E$�Cb���W�ʁ�p�����D��e�_B�&�<�X��>�����A�EPI�.-����8�:�+�?o6�$7(�B#�,���HEA<��k�����g����7h�7O�s�~я���
U���e���bЯ�������)1@p�������H�_      �      x���rGv&�{�)j~��"����2q¡KK-[��ڊ�YUY$L[�����u�ZlJ:v����n����� � n��� ��'�uɪ�"IlxN4{f��DmԮ�̵ַ���Z��~`�����k���v�u?<���.\vk��������ի��5{�]P"�e�_ȵPEV�i��"���S]�Y��]�µT���d�d���k����[=�������Vצ+p��B3]^s�k���3�lr���nUm�+�����v�-���y��\�ꇥ���?�_�����󣛇������O�@��'j"2QLr!�ý���}���������������~g��c�z��{.�M�,�=��l�¿s#���������������]��q����^�/=��%G?�{�}߸�݅����}�oß���O�G7�>K����?�I�~�W�����fx���<�:-`�p+9�H�>�[߁���ѓ��r��m�����V����>�u�y���'�8���[��~G���߄�=�߿���Ϝ�>�C��~t�|<���G�2���>�g��o�	��	����;l���`ݷa��яqO�~��M��M�����ѝ��9�������#��}�k�u���񵜟C�fe*�$���(��\��Uϸ� �	YU2S���1Ε�Nk�7�,U�j[ti�)�W�yV?_$�L$܅�B�ߕ��ls��J�E�52�DӪE�؂]�Ex�E�WVlsխL������� &d��������߆�:����ݡ���G�έ�(?�Ç�Y������M�q#����Qų���� ����Q7�I�k��������c��<,x��<���Ã���%�	���g�W������.��O���l�:�ד��/�/���ԋ#� ,�?=�� -$h�m�$U0[-��?9�>,^į�����=����Oz��,����o�b���e���O��g����O�	@6>�����ûo�B`E���>ƻ×��}w����^B
��ox-�1����ዄ�9������З���{~@;�;;G�'����>A�����>�>n n2����p��?I��.">��6`��r�)�ti�7�LP���J��c<=3)L~���L�� _Z(�Q�6Zs�2�5U&�ڨ,�]��e,U*�r�ve_�|5��р&�۲�.�L�Ngu+df�*;S��9Q���x.�(��yx���+����^GT��X��2�lj`{Y�|t��> ���xO���3�߅�ݘ����/�[x�PO�B�"����>��nª�6�	�Eu�7�#k�?%����2$k(	����IA#�_D�T���<v��<z��҂<���jYJ-Mک&O�4.KS���c0B�s�'���rc�~�wU��q�j]v5X-ۜx�~N�G�p�:
���kvi�%�ܵ�ʍIy� ���+�i��DO�BDGj� �-��ݠ���,4�~J[�jf��;+k�ƽ������;���.m���&
�`�?I�`�M
�6�&��->���?���/���Z�	��}�(hP�~N��~��4Q��>���'�X�=�����@_
��n�e�I�u�I7�����C��w>����3~��q�Td/���6> ��.�&�y˿�0���<����n�8��!��#��	1��m���X��|d[�ɢK0���Y3��P�ŵ)��Y����T9 �Z��E�H]خ�ӵi/4��2�Dg�3��d�(t�D'��d׆M*D,tn6� $���Jwa����>�7��>�'�f��f�XPt�ß �I؝PKj�x���Aؤ��ǃ�ۼ�hqα�}�#��_@	�\�3�IV���N.���?%����={����iA�s
��P�]o"L#��Q�A�-D-��9C���dZfʁ��s�����kx�YrH����1&�z�E����a�W�7�Ѫ��A����9+������}��?� ��<PE���@�_lh������>����+a�������g�+�l(��E�f�ts@��?>��Kf��9;�:=����<Xo��"Gԁ�k
����zF*Y�5��Z����Ke^��i�<mj��eS�u]^���LO&���'o,�M�7Wl��Vg�����_�.Y���;Ϙi�����x��ۏ��O�7[�����%��~�~����'z��}���o�1�����As�'����Y>�����N���ߴG�A�O��<l���I�mP�o�;`����.�/m�7�w���k{���?�ʯ�>&���Ax��>?�,r���\��G���o:z��pgv�\<��.�:r��$�_�e�N��z��N�zB4=p��b�������mGM����٣���6]�Ɉ�D#)|i��K�Jc �^PE%*�xR��'�R��"UmVI#�
�o�+PR�A�������+.y��A�J/k�I�b�����ǯh�Q_�����~�ۤ��ٚl���=ҧ����H��Bi�w�k+�h>>r@�+�8;O7�����i`���̻��5d��;?���j��:�Dz�8�o=$�K:w�����G�YD�EQk�(�C`l���%�qo���>��D�G�(�1�L~�'(�(�a���:�AA�����?�yB��)�57x�RdŇf�{dc1������0>+D?����5�&�b�3����}���LX�S���!�F��!I�=>)�U�M��gO8�F��ϲ;l����5x��h�6J3���^�����?;�R���P����7����q���"<@��<,"7��0�ӂ�� ;��a�$��}����Itn��wȫ�G>p��,Gx7hG6	m���;ؙ��]
?� �U����P��@>��Ы,��U#k�j��T�L�u�L*T�)�˲p�Le��� �B��{�u֊s��[�Knb���@��JK��Ғ��� >@e�{x'=��ϻ���~�ZÑ٥W�΀��ՀQ�vF^��|�����O����ow�1�{���T�ơ���/<�~{�F�[^�!�/|Կ�Y�R>�v������d0�w�I�+��	�n��ݛ����=�7�u��l��m��y4�BTB�`^
�)�J�9l��7αVe���a#�a��(�S o�x���+�ܢ8�Ǉ���K"r�چCq~R���]���Хi撗*�.8�}[�0�Kec�T�2K�F�Re���f&/�����p�L'f4�G�'�ص�J�K���0���b ``3y�� J
���WXd���2;�� r�g�V�Q5,��\�3aR���˺�j:�|�� zΧ�����'Z�<x�d*,��h|�/-��Y"�2�U9����R)�j�tj]k��R�n�|��z�:|<y�o���i��ep��]k�F�ʙ�D�	z�����5��x�T��M�V�lR�eYj��ҼvJg��EWϖ���m�@�M�� &3��t�K�]�]ZJ.���X���$j��֛�)7����^7��6��Gԏ���f��h�n�����o�ֺ�ɲ��b�ƣH��"����M�aÍJn��39��h/�9w9ҰO!�u�� /�R�����#x��W��36��%#�ЋFF������Dx�������	[�����!~�5� ��[|�=R�;��z�:���0�ϐ��@�1�ɀxطK�^ب1��!X��a����$�xDM�Q������7�3:�fp?!+��Hn0EI1cz=��|�_�#�����+!��{*� �$W��Q �WN����}^|F{�O)Q`�|T�����( ��ic�)G�g�4%�o��sdo�t�V�9^/��7CD���U8���}�>2A���#6�#�$�db��tbny��>�"�"�
ޓ'�Ͱ [��#�F�i#���<ﷻ��Qdd��5��B4
�S,O�)���Y$�b�3۴�~'��s�c��3Eeg��p�rc@IC��N�ŏ�� ?:�h���I�+�C{����s �D     ŻOcxD�p��c.�8��gx�=���p�7;���G�m����q��h։��M��>W�ǎ<n"K��Ci��SQ�;jO�y�q��1��������������Q�1��0��7&k�J�EZ�
,�l$��&O]Ӷu��,���~��Qs�{ +�[�kW�о �:�|z#��C��rBD�;>�±Q�w�J}|�!#��m}��s��޼Wt�ő���^���-6��k��,��H���r̜��� )O���O=��a^ֶ� z���K{��� <��^��i���ч��}�����SoQ�H�~����7��Sq���e�3@t���#a:��]��?E�f.;���T��iGz��)�N:p��6��~��8!�n�������=1o�X<�zqhe��?��>��KQ@Z��l.������;�z�����s�����7��F�C��٘���> x�͒o�'��Sr*��6;/>.�_p��ȳ�+��s��(�_�F���>��������	+B����=���"A�W��WW⋔�b�D��|��g���H�׀%2��r(Av�υo+$�����-��n�`�/n�t�j�x$�.-�󹪽�n�L;ѥ�(�?u�֦֩pV���Uc�����_����I�e���2p�pX��E6�W�T����ID>?Hd���s��������CyڥoԚeF<�5�n?�mO����㚉�+��	nQtwpdG�ruі?��#�'��y��f����	ݧ0��(�p O���l�a@ITo�#=��珽�}�Cma�i`�����u�<�e�;�>O	��#�}��?�
T݄J`y����q�A�H:WU��^�a�+0�c�L�\۴�3���]�a:��U�ᇆ��g�z���{�k.yii����c��dp�G�&����X���r��+���3`U����� ����"{vO(��?�����^.6<����Oa���Ð��d)"�.�_3 �b���H�[�����L��w"HU>��s���	�?M[D�����}�>�;Gs6�{A�#"	����`�O��>�Hz��5�x��E���">p�gNho\�|B�%�!���z��&�L�@8��<E�OX� v��0T��J��(�Cö�ʭM���@��<5B�i)
S宬e�g���S&/їa����A� 3؄OY�s� ��|���z[�w޴y,?�1"3��B�un���
'��^꽷����]=�f�����E�#|5�
'qz���*}]�	ʞ�k�]I�{�����C:\/�����zL���{���u�oy���s/���$i�ɿwv��$&��]���>�1�G�[>R������a#�P�l�O���x�J�%�X>�4*��<��P&.9�$g>ַ����T-�Hۼ�0�+S+4��Y�U5�c�8�q��#���a���FP��t��`��]����Zw�����2�5	.�1�
L	 ��x��e�M���G�o�����8��o�ǿ�R�����q6��WD��SIFD>^5�#�^�/�S_t�F�$��!CidO����I��|h��9�Ԉ���!�〦&$F�8�@����[��繾(Ó�g5K�p���sg�����7�H��S���T��_��D��s����3�{�Ä�����㛼���8�v,�p�8����	�Sz��qx�  �6=�Gr�O�����K1c��ކ����q�e;Q��B�s������d����s��m%S	����5i�+SI]��L�٧�&o,7��V��(�>X.� �%XF���O��/��9�7c���\�6�7��9�����`&�:1�yϽ�sk�j:Hd0>�_�E�}Ǘ�x�'�sD�&�x�W?�/ghb�������9Q�G��X�-�#���}�fLqX�]������`���gt��� �Y�l]�w4[/e����Ov�|;Ω�Owf�a�{����Ge���"���y?�����Cv�*x��6�j�X<����on@�dXh�?�	�F}���@���y��-I���'��4;����.#�X�u���e>���*�UMnӮ��(R+�H;�I]v��2Ď��K��w'����ʀ��<bT"4��dRʈv1q�@�䙘CYg˺+��-m�Eu��Ki-��5�Ƣ�~���e"�}���g^�+W��X^�|e�O��P����`���w4�M
t.���r���6E]۪H�n*�T��:���0��JR�6|`��μ5�������Eۇ�`�`3}�|՛���
jt6��nϚ�9�7�>�s��7����O�!�*�/\y���5��DL�݇�=�m�ǳ���qxX�lQ,�u����ѳ,��t��$_�'�z��x@�@_��J������'Ԇ7�<г)�I�G��nx�6XLK�=����K�%�m�c��P�#���unT譱��؎}�Y��z�J����N� !�ѧ���}L��*����ٖ����O1F�M���''o�B�	q����
3ݜ��5D��]2����i=E�\����z����m+���qr=?8���f�ܓ��)GR�T����Ml���6՘�V	��q��{}d z���ҏ<�k8�}@��ԅ0"Q��O���\�-�]OT�1X�����~��遇����ǉ�/ny��<�������n��a��\S�H6��v���>q0�����I���-Q�,�&��ֽm���N��*��d�����uۃ���}��V�w��ܠe7F�Vk��Vu��T�:�?��?_��0<{Tǎi"�c�?���������:D�+&zfk�����{�^h7"��r~x[�3��^�-O����T�+��$#c�}�~�C��ӈ��'�a��(��M/�;�l�L�z%q�q/��x��������9��ֹx��3���M����}��|����g�����r{�1sT�6���R���%�����۳�F�	��go�=4���q+��4pq�����{~��F}:�wNPhtD2⬆����+�?U^ �S��kSe�.�Z5��Z�?���Ff2ס�P�:�{/zc�����[���<g@l&�*��?���E|��,���I�����0>FIZn�+Z3[3����1@��
���C��[lF|����Lց?������"9l���u��*z�s��[>�?xgܮ��Gt�Ae��Jѷ�����8_��ƀ�F����_a_�MEvwf�'��C����YdQ�����8��#:��r�2s��᧺��琖�}֛Ꞁ1z��8���*��&T���Πue3�O��ۜ;<@Y�*R�x��%�p�?d��z��P�~��K2��N��=�E�7����6-r�=��=���e #<�+�@��s ��/^��m_k��!� ���r���="F�6ށ0�!�n��A0q�p���ґڼ��k��4ќ���PR]h+W�u�R'�U�i]�y�f��-�\�0��+*�E��L�=�;.��!�]/�[={(<�Q��!��O'o/��5���l��W��b];�|1Aw���+�����m�&o;���mNP�e��/F�q6U0pF�X�v-�lm8��������p~��ƿ��>�����;�cE�g,=�>:�0�/�s�&���ͭq�ݾ
�K��8֏�-<�=Q�Np0Yk3�p���(~wl��P�#��A�z�ڌ���HG?�5n>��q��C����n�%�Ӷw|���[�7��������(������""0�-SlY�ɮa�^��v(K�i�T�"O�q&-:�tB�mmG�>������_,/~ 2�W�ר��P�Z�"[1��
�	F=�<�FD�'C,a�p(�#
���d�A��X���	������z��G:o�����_��̶m��=���1p׃���ÊD��R����Ŷl����<a���8vЇcg�C��[��&�S���G�C#��#{�U[���������>dF<��}��g4���CR����=7��1����yD����M��"�y;�z7�
��    *�]����1{����ģ�7���l�o�0���e�G�Cv�I���:�G׽+ݟ����]�����'�$���!��a��ѝ�y��&�����<��<7�����J�,�w3�ND��\=G��S�A���4$��BĽ��y�wd����FƖ��G,<�ٷ6�Q�O��?�	�!k����C�����g�'��!�xd�.-�3ՙ�ʵ�O4����sۦZ	����)[�\R���jj�=�����M�z��!A��(�6��]Y���=][s+	<a�Kӕƭ���&��zZ��qP^ 	��	N�~o�O~О�B��=������&��ŧ)^�'�=C��d�ժg��8��Sh90��y�����/��=�|O��{a���E<�t�
3�f�y �����}Ax��8�P�<K�t�q̃5�@ �wGo�{Oa��	�p�{�1�Ū�����Cқ�e�l�)��m���}D�	3)�X��~�S��=�������&�0n�[���@E��.w������1m(V�Of�o����>��y"���1}��O�dhSԗ<�õ���fM�#��)I�O(6����cߘb�%O#�P?f���=��wF��9�[}��Mvw��_��0;�m���C�ҋ��l�vek������7#_��B�R�鷏�fp�-�	���V
u������|�T�)Y](K��)�TU��J���MU�+QwU]VA���g.����Mw�-��
�z	�"�vVɍ�|2QU�����M9_��	k#;p���q-�ƕMj����D˫�����>��Z�'����M�/.-9$M�3Z�
�!�r2���F�Ȣ[ė�|�Fo4lD��"5��R�5.��n�LX�m[����E_8�V���/}��/��U�*�
����
fN�>ab>n�?{��2)\�:�L*uN�Y���2ˬPuFP=h�ܭ]
v��^��5���l��i=�5uVF��L���7��$?��OòD&��u���VzX{�#8���:?�����#����M-{�@���I��g�-�7�}u��%n@��0�l��d�:A'��eu�1����c(s��̈`C�N��a&���xN\!��^{��s,#4.��ݎ����zZ�	��c��s�RD�gĤ�m������K�F:��J����M������g`�
"�!�wc;�l�s�?_���'RG�3:�C�.-��8��6Ig��3)�j��I�\�i������S�I��:4�Ȑ�(�09���KFw��@�7l�y��}�]N6Q��g0� �f�O���J�������򼯭�28���C��S-z��wJ���Sdd�C�(r�|�B���s�`g����M9�?T�t�v��Rz��f�x	�*��js�[}h�A��:�oM��g/.�ؠoj�4��a���!�!����hp�k�!	̤���Tb�����j\U�&�tP�t�T�G��T%cF���k�K^Y�^3N��REP�\a���s��ϩ�z!#�O��Хq&NdQ����
κ)�Ի&��nR�uH���.���T�Ot���K��6]Yq�k��ׯ�'�0��xᄠڤo��^x?W�>Y�a�E���!��om��z�.��y�}�Γ�}�q�O��=��,?) ��?���GL�@�zR�Pְ�Mə��8h����!���k�Mmd���� 椎r���i�� ��pj���X���mU�[8d2�l�G�������FCCĨ_���q8��ϼ��s�ʉ)C�QL(z�7�����$=�t+r�8홙x����pT.s�!����8����:��
35�Zu�����o?�*o��[v����!`zg�^�L�MJ}�j�u?�y�	��j���oC���6Y�qjb�)�}?�m~.��{����s�pBa�Ǻ�wjE1�c&?�`�K�L�oe-*'0l�-�V��ѕL˪UY�\��*�Jr��l�I�<�^�|79�z�G�L&e��o�8���*��꺴-��R�:�y��2cE�*��0l҇�����;��U
��5]Y�1P����%v�AF"'�*RD%�����5����R��y*�����M̜�U��Z&��/�c&4��}]ͳ/R.1���ͪ0�@����.��d����
�VWi�Y��Wi��m��`˺Sڈ�������X	GN.]�Ny�7V��ۃRD��x'�H�������B1_R��lgD[�ŭC�6��hҲn�Bg�p�E�c����u��þ�u�cZ�)'}�b��r����~ޣxS�[¾� �k��-7^,�y�љ��l][�T�tY�*�]��{'��. i����ڮ�'�0ɰ�2$�xuUL	�s�ti��3���lTk
WشkA�e�@�3Ѧ�kL#��6�[�&�]�L�]\�ˋ�]�{��Y�MEM7�-՟QeD˙ύ���\�ZYB�4���(-K�UU�7Ea���L<؛��[�^��!��G�
�%��������8�uBtyY���A ����2�`S���ǌx� ���0��}w��l��Iu���1���Pv���#h����P��:��*Ң�`G,��-�,�ʺve.
����_��~p�RE�	?�z  F�����<a4�xd�.-s��~y.��C2�r�: ��ZX�-rW������[�ނ�_)zG�%OP(_�nb.����ti����k��+����T�iӔ����رe��)�����iz�?��������K�'�-6��X���RE	(�2V�a�H�.-g������ �N�q�_pJ���������d��R�`����u��.�����]�?��2�gYD���b�6t�҂<�1���h��){p�)�_��a�ꯈ��>y������mW֒�ZF=S�9{�		�����6>wIsA�~Ium��+q�.�T�J�qle�\��m��c�6��]=��:m֦+؎؂b�Ur�mJ͖�B.�8p�Kr����Eݵ�pICE�mA�j��E��]��ieK3H=�{���ŵ%��:	f�d��P¯�,VC�btiA΅VS����&-:�>�2����t�Q/�t4j�K}�|�������{���jċ��U�\>oU�|;�fW�u������؍H��9��sMi�J�@����8+�*Ce�L+��n5��R.�h�/-�sm�0,dʢ��*��B��pu
��T�l�kS���HU%�n�~<TD�"��_*ll˱G_Z(�3Ufmn��U�2��^lM���lo�\ԑ�"�c��`蒿X\���[���&X�X��.�l�S�Y�~*��IM^)8}�3 �΍��<�w�K|��n?uf�T���Qz8��g�Y5|i��C�:S��f��$�`ğ���\�4`JM��/U!�VUl�B����n�@A�[E�O�X�O�g���DLb�-͗�Վ�aK[M��E��z�m򲎵��0�[���@�"�V��z(��B�9��"ƙ�O��K��jwBr�B	+#���L����������ĸ���("�S,��M�OMF�ܨS^�qpF���bH?�b�⨭����/��^����2�������C���P��uKP�f	9�Γ*jC�Ї.-���˱�����z%��x���.-T/tI�O�2v\�����j���5q�O�VFڬy4�ė��H�')FU�v��w<�H��I��
pd����6���E�Ǫ���C�&�D�K�KՋą'p!sԹ`�ϼ���I~�N�,?�`bJL<C&X(^tQ�"S:N���?�����M��?FYE��E�2�h��b2��	29�����Cv�(��()d'0�s%D�E��Sy�� �ˋ�s\�y���A6�k�v�H�y��1��c���/�������3G���I!����B�Ӥ�2?��M��k/�L=�!�}$�u�x|�.-��DF���4_ѥ��r�N��q�AE�%�_�� ;�@���*Ɛ���]Z0/}Ly:nL�<wI/},?�?&�h%��Md�Х�����1�?��g=�3W��掩��cn��y�q�@6���LAթˈ�=o�cChp    %8�Pjti��p����OT��Y���]Z0/bϠ��df�)��¶"c��"�e=ӥ3':�l�B���L���e�j1�(�5�	����c��C���Xs�=SA=K?�{Ů5W��\�F��������Q�1 ���]}�͗
�<2��!���巕Ku&L��uYW f��a?�%��� c,깟�a�G�D�|G
��H�e<Ur���L�2�卪�L�Lb@��V�B�0�-����G������������|'��`�i����]\v-���W3,�I�&���0*��;{�8ט���)��"��y5�,��Z�4-�>T�G��0�k�4��HO�*GV���<}1�c�]���c�翁9A�]iT^*�5\)�0(�N�Dcʑ��cl���&�:۾?�.�8���a���(#�?�������Q.�m�\ڠ�/M.0�5���h[�`sG�u�v�����W��t6R��P8�1"�*���~�YXyC���r�����Ҽh2����n��xm����cw���ʊ]Y�+���I��"�UFbR*��G�j�#$8Q,a'
�0� ��i]��ʔ�9���%�-���.x���P���is5��t����~L.�."�N��|>��7��U��M6�����m�M��,����]z���n��K��M�㍲
��h�E, ��XG1����:ޛG_��m`7e��r-D�v�n�jta� ��{Io�s&�/�v�OwўR��I�V���4;�ɥ��VRȪ�,�Z��i�6�Z���B�L�Ͽ}t���{/��淏�;c��-hA��-PqL���7f|�����VNl?���2�ʢ*lY۪����A(r��)�4�b�Szf�B�^���7Q�X�; V����[Z��`������`�A����}lc4�S��������MZ��)��o��wS��S�c��SS/�Ń����F���]�q�Z���B��f���͇�M�&:h(�6"R^�gXv6����RU�t�r][
�*ԧkQI����*���<!~��QGoXM%����е)��׮�]_qC�B�WJ"��X��)�:g=�hT�
�0T�z��j�R`\?oD]Zݕv�yB� #Nzl���-R���Ũ�v�(�F��b�9߀�>�_8[��dҮ6�ֹHkk:�JT4�#����r�y�������V\�'sC�^Y\�.�@������S,��s٘����&:�QQ�T]�W3/���w�Hi�K�9Ɍ;)���m��������x�7���7��[R�PT�%ɧX�\pn�cY^E^b�MgE
�0�cu���/BU0�cȣ6Ó7V�y�b9�1xd���2W��]Z�眮䵑�QȻ ��S�Ժ܀�6uV�֨��w����G����w�Ǣ��q<�c������rŭ��Sw�(dR��q�g�?ۼ���d��6^�Z�u��Xf��\7�����)��G�S���r{��_N@1�Kt�OW�Ţa#I�����U��t��`��6�ݲ
�[��� C �@�V�Q���w�C&6�Y�D����2�4���I@�������t`�G�;J�F�sϦ�%X��R}���P�N��@�5جN�L#s-M�N��1w���-/��<�m��b�%§����B�6%c0��c'��/�L�~��M�,B�֥�^�9x*�(;���D�vpd�LMNz���Чb&��X�*��81_��~�sש��j���֦���08r�(aNU�1��>��C�����+�Z����kV��j��0���A}�^�H���f>��x��BKp�`$�65���l���R�j�<�������Ç��F��ePJQ��q{P�2��.�P�9�����b���JA��LMeu�Di�����R��nO¿��'{��`s����~�ͅ�z_�(���I3�����Hn��]V�`7l���y6�a��V?hx֫��y�}��~����?��qi�FK�I~6����׃�p8�c�<Kxb9��(������ �ֈ,u�`���p����,�����1�v��Kw���q��&�'&c=���zw�..��^I^]���˳0d6
�h�(&ꞿ����*�i�"k�H���m�� �&UN HY2
��ǭwh������d$�/b��@��"�	�"��(+�(��,ڷ�p�m`�Jb��LRg ˳���e@Jy,���%��?ߡi���@���˗�`��W���*(�v�[��ֲ�X�c�ǟ�%X�XU�sNԢI-�[�p���K����jW�a���al�яy,#��I1��ح]I�K�X��T$��
�3�cf'�mU�m��N��em-a9�h)eS�:�ue�o���ղ�
}<��1�(���'�� �~��&�z�4���t/"-����E��;S��� ���bYiU婵�J��am��@*�~P;��Yjѯד<7�`ɛ��K�b��|9yeqm�?��c���8t*2�o���3�t����Zx�� �Tu����m+M!Br�W���ɥ��`5͞�Z���9���l|	Vr&�8�β�d����
�AZ�VISjш�)��2U�]��[�o�D�~zW}:�Gg��=�X���*�ϣ�K�^Δ�,-��N�iע��v��M��jp"B��O��3����ė��=�ɩ���l�z�� �4�2h�<�*0� "�)޶�/�;8S�]�H��)�E�1��L�̺�j�(�F�z��|�����X^]lݱ���\r�cݑ�x�]���/��7|�B��H�ƃo�8<���*��6���d�Ec�џO���IP�!ı�*c̗x�K����ף��ƅ��������&���"w kd�٪��h�Nm�}{Ŷ����ť�=O�:Dt��	]"��N��O��K��31е�����8u�ƆgڦYcT)t���=���]�݃a~�El{�0�%o�q�����kW�n$߳��\}���Y��z���|	^�|�/���̳�����NyG���AJ[�;�ԧNb�an�0�cg��}V��v}e����GU�^ظ�^'k|o�ė�U�����"-EZd�d	���Ӡ�rԴ�SYǻ�%�"9��=���a<�Fr�K������^(����ޛ�յ|��tE]�:��Xb���-�#�����P������N�,͑�-8,&o��uR�u�f](�����cn�1ye�:6���+d膘x���,i��e�C���t�D �,T�<o��TM[�XdҞ-Q�K�QC��hj�3r/�%�MW���bI�P��D�y�pw#o#��%xQg����V"u���a>�7�-�N�YX��3�>!���ŉ���γ1��K*��Q��/�ZΖ�Ԧ)�NoYV0��
��j)\VVY݆�>��n�d�����E���r��>�K�_�����k��������p��S �$b/�7�,�L����)�L�Ni�W0>��ZU�<�9�Nm����!�bo��ϟ�����4yw����8#�"DT��x��ofN�Y}a�yG�T*�K��z��!�0]�n�O�y�3�ih����D�-,^Z\����������n)(I1�4)���2�v�/-��,^rW%h�.-jd���܀�k`���+�	�͖�y�`�R����+�^E��e�r��sR�9nTgZ�칈�x�:�<S�Ѷ�Y���ཀ�g0�iT[IXq+�"��<����O�qՓI��Q~Sbà�}���`�gBy�]��6�T���U���7خ��l3mƩ�����6��!��e�'�8&��޴���f-'�_v?|�5k�M�|
��ݘ�Pe�(��Q�HRL�k�������Cۘ��8	 \*a�S�6&UBTm�����ұR������ѭ�h(:�-F����4~>���gz��hmYtm*$�ް��� ���H���V��5z�;��������ّ��f�K�鋨�y���7��K����l~�d���T�u9���G.��-�
����ކ����nl�1�ɥe,�zu#C5�!���]۳�k��dϙ�J�5    `r
�1)ߪTc�T -��u5v4�9:��s�_o����Z(���$'�ܸ���O�����������u�t��i��eg�U$ ��E���3���t��j�R���a�ҥ]��ڵ�(Z�_��2#	��$%&f<�
#�1�����)jf˲�V��)QT�����"W �YiD�Gvcþ_�#K��Ϟu�:(1�j[ZTT���U&M)�x/���쬔]���� ���O�ns���t�M^_�`�"����/�cH�1*����>w��uc�خ��A���V�p� S(��W��\�&��Gӭ�{>0|�<,FȷɅX�&�\Y���2M���U{m�z}���Lw�#�A��I:±��
t��?[燢̋�ei&�:���ք&K+P���R�<Z�oN�up�a<f>��4�11}�R��D��$[%�iI]�;l�� "�:SU�oe�N�R6�!��KW�5ǭfV���F-:�xt	q�ݗ\�����,`�ƦH����ZA8�U�5��#�1"ܥ����-�gl}}me�ٷY�6�^&B�A��"�������׳}�k��� �Y`�v-��i����
P��� =f�%�*�0���.MJ��x���
�y4�6�!�4��Lœ�������	�,��Nm��p��B�!���g@��O���������f�߳k����|�[G�c�I�qp�tGB��)��:��)���k@5��,2����p���2�����Y�!<8<�|�����צ++�������^�ccY��,�lՔ�� ��^�b���@q�jۮlt�)���Q8����>�ͽ	�hvs�r1y�^^�+ӫc�:!m!�Hر�;�;��s�RR�bH`�.��ܥV�PUYk`��,�i`��&z�d�;�\�f��KW`�ޗF�G�����w��%����_V��@_�!�:o�T��D���-w6�Ja��H@Tv������'g�^��KnO�k�+�O5߲
#�4�����8�b`5g�^oY�u �i�Z\��!�B�Y�W�6���މ�nv>�߉X��䯧K���l�d5�G��+1l�}�1��k ՂgA��u2Šu�2Y��u���t�oR M�_5ȯ5��r�T�����%$�%�k�>s��$7 ����ΔmjM�R֔����l�㨾@�A]S�F��L/�\o0Yvm΍Y5mVLL0�Nl��7#�K��3�,%�Pe���mK0���ۼ`t*[�Pvx=�:By.�!`_n��|�z��eR���is�v����1�~��ԇ\WV��jPk��Ru񴚌���c��잒ܵ�U%6�T�n��H��M�NVYQH�t����?����Q'Sa	Ͼ��8rS��qA�[��f�󡮾4���[����{ ��i#*ݔ�iKh�
+���'p*��\�ml�$%
���TE~���֭�oa�'��l��_��U�_��j� �D_J�p��|�.�A'�d"�S�	d����A;Q�u+�.̬P5	3<'/���,7ԇ%��B�y���i�4��'E�N[т�+1ή�Y@�ui��4N�J�"��ֽI:�
2\�g�P���;6���x1y)yuz�;�ɻv�]g�v�ȥ���G�;X�k`>_����4�-ZL�pw2L&:����:��	��~���*'Tz�r';>Q�2u��n$��:׬ͺ"�L� d������)V{��`�ض ��(�Y-��u�u��\��"�eV��� �D?�.����JҭL�%�
�uۥ\�9�g�yd�q��m���[(�F5�6iU"q�Mu����e�da
�+:ʏ�]6yme�-���-��(8�4?1��3hQ�.�|	�u�ܠ5��֦�*��ᑢr ȅj����~EMK�nb`d�8 �OG�L.]_l��x	TV
�����@fQ_EzA�f��0��U/�py��Vu�� ݥu�`� vUY�*�'��81�O�k�"�t�wg1�Y�W�˫kvymq��ޟ帱�9RZ!�
��|>`�t�m��m�X���k�K�Ό*��ԙ�䓛e��7B}[7���:O�ɰAO���Uju#�t舲O<�Ȉ�Ӽ���3��,3�MZ���\0`.���k�ue8d"h+^R�X��`4HHOc�^d���,��g�|�݇I��*��婨�u��d*k��8#�k��;��|��7�F�T���kJ.-.9L�yO�M{�^"�H��g%6십8�#�6�s�x�}+���:U�8[֮M���+#���k� ��5���9�g���U�/7W�#3�T����Fz��f]g�b�ԅ ;ރn��� �{p���Z�ꩮvO��8��g�B&o�~p| ss>(M��D!��r~�i���L����Q�I� k�Se��A� ml�jvB�R�[��>6�:r-�%����U2��Hm����ZU��F��N��3ź@� uU�8���s�q����j�=>�kF��rHo�R���1��֢����Ŋ2��x��(}G�������h�|b�!۴��,��p�f��u#���\�S�Y��a����i}c�����&MhFq]�z�Ӭ�Lm�2�VY[bT��:P3��
<���T"�/�}����2�8Sݏ��R��~2�e��V����|]����7�U�j��5
t'N�j�*UuUI��2�թ����� �^3,�Atxr���VZ.���7W�ny�Ôd��#�����꣸s[�s;_[��yJ���Z,�n�%�Z���5�i�QȎ믩���]�M�)Y6c{�����烳��Zj��*��U�:i
�E�\�L�Հr���>M���q�b ����ow��d�◯��}�����Ѩ�T�]g�Xl_���LLw�8��ܤ���pr0���"]�ե�JZ_d5WXp�l���8�TDj�d���-7���Τ�]����%N��[ꊚ�`�\V�~��w�7�=��n�j��H�RýZb��Y߉r�F�}ʾ��ɚ:<�FM��mڀ��u�6N#Da�����}}ez}��2��ȍ� �����^d$?��(}_�9{�{)Ln;���$Nǒ5l$�P�р\�Y���V�ap��$Q�A.�=wч��âg�$�N=H����C�|��q5��BFl�)���PP#Y6��2��K�Z��"-[/!w]vq�Ɨ|x�{nO��ꙺ�K���`׮�إ �V2%��Q�?�bK�?��(�l(?�d�N:��%���4nU����WDX:����Fr@�툈��㹩��]d�󸇇L��>���8��k�GOS�W,O�~�-�����L�Gjqѷ�E�N/!2dd,����K��ī2Y劲�����t�3���V
��|^���_f�U٤Rc�FGzN�f-g�XU]����wn@��v��dES�Ue�N�%�ȏ��8x��Z��bq����~�Vn�]������1��X��D2.f��Q��,���8��^�b�&�C��Z�&�#�� 9��2��.Re���\w�;���o%�r�<F�٭%m"���]�җ���[+��9�������g��g��3M���v8ZC�
+ʵ}`j@#���l�]��0�r����{ ��\���Wϓ�DḆe�\�d .1��q��m�|������9\iT*��ڲ��l��r �N6��a���p��.V���u����%}1׷��e��JD-����Y|E)�J��Z
t%f�Gnʶ�K%��uj��Mb�	�w����q�抆n��\�+K�.�76m�Kv�%�Y�v�u_w�CޥF�2�w��Kb�V��(*����W�8��
�2�Z��Z�Nԡ"?�(���%����l����<��-���+���i{c�g-"�BZ߅����/x����(
e ט�hl��U��ʴ��J�y�mh�I���W��9��H^��ÛzVR51#2�<��܂g���������4�5 �
{�c�8P
N��r]���f��l���;t��]@�?ŝF=6����ʱ|fV&��������M|�^�b+ �B�-�f"+7>�)$r
����?��I�Y6�J�ɖ� zA�G%Dc��J z�|OH���E��M޻����]�2�C<�� �DG    ��<��1�|�٬C������6p�eiR[�y��F�F�����a� 5G
n|Ή�}_��a��E&�����+���ca��E�e.��E�Hڃ�
M��1�&�L�/��9S�2k�T��Ʃ�e
~\�V�U*�USe�zYg5�;a�^e1�G=Ԍ��D�p<���"Ŝ���5���qP��iPݢJ�0ZU�]���`�������q�{u-��|5��3/�l�QV�TIX��}�&r̗u���NG�������X���2g����?����ͽ��N���ۓ�������_][�s�!��i��"���ʑ)���a�X>��Nw<Syɟ��ZM)]bux*ZxA�DJ�uy��k�Je�9��z���b&�D�x��]��s��4g���m�*qJ�)�k��m��ZP���'��@���t���=�����������]�>;N������2����-��Gc�V�np2ޣ�/�;8SJV��Ԧ�Ҽ�3i]��2�lnsٕ�O��,zwۇ�}��&Q-�'~&�
H�~=d�U������mT�xx����|szGWt���?\V)�W���Ω*�U��~C��I|�VYMY�]Bߐ���1y�zs�F�ש��%����7
B�c�Xc#�d�{'_��χ|��(m-E�h��jqJ�d�<0��V����@l?9��l&>������\�T�ڒl4ד&�E:��x�J��:�M�\
�\��ۇ��-6�m
W׭aW���������gٳan$/u�͂2�>܎ /hD�[h�o���b�Q�o��-:��i�AI�.���P�i3 �c5���N\e���:ٵ� �c}�9."f���Ȼ8g_��� pK� ����`����p�eU[� j��G=$�0�tъ���TZ#�t��s�z�����jU�u
��L�����
���lESd�
$=g�b�V���������pd#S�e�S'_������*o��6&?NuaE
H�ț�x�/��~<+�ܦ�dۃƥ`9���,���鄥����U0;���S�b�>�(��a��5e~���R�u���b�[Ru �5uq��7W�Κ�'F#��Zt&C���ѭɫ��3�-Mb��p�z$���P]3T����]I�q�Ɛ�]U	x�b�X�J��?MQ������8пbD���~32r�4�;Sܰ�T�֮HI��,k��j�Nؾ��Y�%@���t���k��q�����E,�Y��^���+����&� Ӝi��}�g�
�Z+p�g]`�j����e�V`��aR?���؃���{�;�7y�-c����lsu�3��Q�vA�+�w��K����Q�\��U	�t
F%J���]Z�>�U�����N(�y@���>a:k�/l�C�L���A��bK3Čn$HEM"�&N��3��67%�Uc�)j����ie�I��6L_SP��O�(]E��}�o�ĠcC�ı����C)v1�킧s �Zlw�4�C�����Z���@��s��Ǵ�8V���/h��<���k�<�v1yӭ�RW@��W�2�}�f���аD2u`=�g���r\�&mJ�����֝�0�ݪNge����տC�A�\��B}�-n��t�{�.(�%7����D9� �b]�M��,|.���F����<͚<�U����q�-�SF���a�vv���.�V����/�H=�*�#���EVU�
����ka,��iq�{Vt� �!-�6:���7�
���f�ɷ��>c�����l�sS��(�]�ޘW��^�f�v�����V5 jl��5>��./��ϊV�Nذ���SLw�N���G��G����A}����Z��Ң[�q�E>$1U�j��c�b�g�Z H�Fj,� �ܿ�� �`�jl�1�W��}��_��C����Z�][�o�����8���1B��gj4�j�k����n@�B��Z��ɕM'���ymu������F���~���;" c�=k^��a�j�b�7����8R��\��n����)���c� ��T����bY@��*���jm�N�2(��Ә����X_?��e�w���C9m ;�Y���N%��/��J�e��������5�Ww�'ӥ��������̸7�zF*��/
��tm���S� Y�,NQ�V%��F��	��PK,g���`����j�R����k6z��_Ź�p(c�^<�95g�~�i���l 
l��I�i�me��=����������\O���oF��L8f?����p��x5R�Z	h�J��u�h��u6�`�qB��G<drɁ6I�F2�j�jԣ�+�@���<����9ӭt��Pg���ٴ*�<�,�� ���a��.U@��L0���?������ 5��п 0��^�,8	��ť�zjW�U��A�5�����s�[���8�i�#�
�0<~O�D9����:�j�j;�R8����N�9
v��/,��/����ۓ7�%�L��ڬCF��Q࢈D?wAgJ
fu�Lg�!<j*��piWS7 �G�w�d�!W����,�1�+?&1r���P�,�L�úLaD PWaa����E*�§kKm��P�f魩]�C)��TA�vH�ؑ������z�����ϜF9	����%�4J�`N��}�)&L��}
,Q���~����>N��Qb�%wN;��u��+}�������`8)�i������+ۅË�1�<��s��7��>V?QQ��
�&�����kr?P䮑"3)6��ƫ%�\!�:י��Tn�ҡ�+g]w�ʛv�r;o;{�F���"|�J�|-z�E�@��8�YR�g1��۸ޓo,<M��2��E�����s�P��KՍN93�i�)�D�t^��j��`A��H}�u���s�X�|]�g#�d�u j���UΦu��i�5Eaʮ�҄
�*�H$�Kys�m�e���aXSVN�����k|V_����/�)r�K�vr��63�Y�*�Ygt�Ԡ�!4N7�smx��fB���I�{�'m��
�F�,6���&��ஷ8yl'���Pr�Z�s:b����l%��6]�h�V]�=f�ԖF`]���(�jԺ'
n���z��/�W*f�⮌aWf�&��+S4�5UӁ.)�S�@����e��u8)��^�b�3��p�.�ͨ��=�*̼a
#���<	1����0S�ͳ��T��'\VEj�ʤx��\�	��_�}|�1yue���Y�m�S�~��X���96�q]&Ӭn�̩T��H�Ⱥ��V�]3V64�<�nS�Խ؏����!0P8��ڜ��d�x��� �s��UF��m���r�U-�t�܉�(0_~6���=�13a��Ov0����u� �5J�E�����)S�6�5u[4&��QNaL�:��i��y���?�q�|2\zS��n�]^Y\v�Y��LI7]�6ח�
��^jW�2k��pu�D�Ü�l`��p<�o�L�|)�V �M3�-,@µ�������2�,���"���oq0N�v_�\�0�G�y~R����iVx�D��U]K�Ӻ�@���DqU��K[�VgYH����o� N�������7�s:h�vW�b���_|]�����0ͣ��V����DDT7�KU	�1�x�%��}x0�K���࠽���&2"��X˙`Nޖ�n��!��l�#��ɬ�u�\רq��1%��~@p�m��'��vƔ��k���y����0���2^9��:g���Y�� eJ�e����<�3-�F���]6��i}�~�y��݅���t-ÂW@ۨ��k@��H-"�jO��3͹vR8�a��B4����H�5x"��`�B���u�y�u��nL.!��]]��7�CdϞY�!!i�hI��YԳ�K�ܳ�Bl�L�]��Ӿ�ԩ���M��<3��z�)ڤ&���r�%�-�5��3��O�J�G$O΍�fisF���
Q� �:�VZ8��_�|��k3).��
�:H uJWALK�;���٧|	t�����8k�ơw�S
ث��@�WYքYNfm�t�;�q��W�6W,~��`�o/!����w����,��TH5��9@��Tt    ���<�&���R�c�����i��kk�B������z�zsc�ۯG�ؘV���������Z�����m[��}.|E�����ɸG��Q�L�8[l{�K\�j�����$��$Ғ(��E[���=��	������/����"2�"7�Jæ $"2#V̵�\s*�U�ф�I�{4��<��w����'�?h�w�-�[.�/r�n;��5�[�B�}39.�`Q{iHp<�R�j��t�b)f�aw3��=9������Ы��#���:�yB9���b�ӳ�s,r71�����\���T���!��!e&�����C�9x,��.٣�ҏ._o�LWIdh���j@yt���>f�@���t��\0�g�jQ1���?�C�e��;��!�,���?�F���+m��":Jw�~�pܰCK��dB�r���G��	��ɹ�x�o�8ρ�)�f��v���\���		3��F��܊���aq{��SR>��A"�m��{2t�.Kꭉnȩ��d�� C���Yh����p�i�^�׎��p��A\/�}n��"{��u��㖮>vaR�F?L�6�'���>�A��� .���7}�N2����G���6�Q��.��O7Ex}��(�$�����\u=���I�C���<�r��!��
�z�&������g�j^Z\��+���Ks2!�g�h�P�c�y7��M�LQF�8ʋ:M��DT���w��5��VI�?�Evl�7{a���q(_|F��45=!+���V+8�an�y��ʘ��N-�z�~(s�DgB]�V	6u���`��^a����1C�UsN6�k�C�ZBNz�f��f[�z����F��Y�^ȁ�=�q؋@`|g颥���
�W��~�w(�
0��5{+��x�͑gL鐵�Zp#�����܆��ʝ�(Q>�Y�,S᜶����k�7�dS�>:Qܸ��ɥ��0�f�?�S���p�8���.��+��6R5�OiJ�^;Ϛ���1$- �!�x
�MP�Lt���P���1�wrf�t� P�\ȭd��7�oU3��85'#���P_��ث]�1pr�M �'(Q/Y���BX��N�0oe���,��i�⸗��n�G�#�d�K{4�N�����ێ`�Ӥ$4�m$l�x�a�y0��I�dk�ڳ<3xu�K꫓�e�	��tA\^�f)�d�|�Cl�h	�NHIvT+`����'c�9���:G!�Q*x���'U%����n����X�7M��j�ϳ��L�-�,��*
�=�+��N�H7);� &�;uI��of�6u��T<4lU2��R����7�/\h��?��`�Z�y��k�Y������R�-~܆^|g���fJ>{M�/*	�Q�:�+ګs�u��H;��|XTA��v1Q�|2o���R������OG�dM-ӓ���"���b�]�yX�H�9��s��F]�K���q����3��^	�l^3��`�}UW<�k�Mî>�C���q��?eơ�Q���H!���0� �&sy/b���p$��w=Ӑ)��Or��=KI&��4)k��}�wQ9���ȧ����gu�_�[��`6�s~:�4�����bm����E�^8Q8����Vm����_���4e�\��{�7����0-	;��DPD�٥�a:v�a5u���c�a��iy�q�ǡJ�e>�A�i�p����0�bM��h�#�:C e��G�f��:��|U����vx�����fo��ˀ� ���'����H�p�̵�V���J􌺎8��͞�X��1�g����0��<Xk}�v���E)G�������-E���7�Aƹ�CȲ�>�B�N8,��qJ���h���W9vg[�{�WV7�����WVo��/���6V�Ā��Z��+ݏ�� K��t�i�^X��.����c0�$�����1 χ�ƻ��~�����+��7���vny�$���͕����}�#�HH$P��eB����;4�0dT���{O~
�ѝ�����������r�Zc�=����8�Щ�Ja����}����	� �Լa���SE�6���p��͒�J�{�o�fIO������`1��"q:%G��Ȩh�FKlG)�Q��:ۓ$pbk�Nv&�!,Ex=$L���a����F��s�'<G������&������E����/��o��X�0��ъ^�O�����~��H�VF����ΠΫv�+�(	u^=f�(����NĠw�ղ�����o̴�`������ˋ�q���`���ٔGy��a|+ա�*-U��4�1R{#u'������:f��wa���6;�~�o�o�B�_���6ZDڮ"�G�nR��WU���jݣ��$��\ �Jp.U����)�(+v����<� �D����̊���E�!K�e#�����d������h���W_�w��ze+@�8��mR���'�5�U����#xa�A������k��A�Zn�U��D�
t⬁�?�N~?헶Z�l����eW������#X�ݼ20��!:0U��xJ��=��H��wy�_���T�z�S�B�+~��ȵ�����g4sɞ�,ʛq�D��>�G��tD�ٳ�����8W���ǂ�DU����)�9���V�W�=�˯�ǐ��y�k��'z��*�$����7o'i�,j/mw	�@�T)p2R^֨�N\D�X�j%��fK��K�a���̵�B����K
O��U�z��d�Nz�w�H�k��t�d7��A��{gI��so�ɇYq�g�b��o~5$���4�@>��r��0����D�X��*��݇=J����Z�3ǖ�m(�;0M�AeG�)פGy���&���q6s~��p�/�Aڌ�c>^�t�qi|�g.q�V�WVhcQW�1X	+�C%�D��^Al��@��=�+o{��;*�-��'�j��v���zv$~�OF�n��r��fp�llY����&���B�#ൌ�ǳ�C�\.������0R���R�#X�~� \k�Q%+3K��.���ŬN�ء�[=2�`8w���v�y?~u�j��(�M]ʾTZ�g�r7�񍸃II�:�qN�y
���.9��)�Xu����T������H-��w��r�G./�jV�x5j���	c��&�fg��r w�TH�$�9'�·�
N*�ָ�*�l��5��ϼ�����|+)��M���cJ��4�s�}��Y������"�%ho�����C=���}�x5�ʆ��C�q�٦y��v}=.a�������b i+�3��ֹ+�)�\e�7�tQc�O��=���b���JP ��ea��W����ʹU��J2H7r�s�e?;��^:�7�E�,VL�� �X;��)����r�E�Zx��F��O�Tf��֧i�
�l7%�1$�	�8����D�d$�7��Ч^O&/s�é��b�.�]��6�2;m@�s�e����+�=l.�[��ȴ4]J��=\�Q�*�/��;{����|K�Yw=�P�&�nh��N�YI�w���+Z�o#�č�#���NHN`�����׹�S��7e�n�=T��h$ �Z��X�^�
�U�w	g��N:Ʉ��pҪ�Ŀ�D�����`��������(��2�S���˼������vT��a��(LGr.	Fg�ୣ�6�Z�����k�q.-C�fo���QZ�
�y�;�j�s;��Zƙ+�Qj{����ɧ��J%Qg�*mT�3]K��r���<���_���| F�m���2G�\��;+��n��>S�Z��ʾ�xk;�qaYR�u�=���\�)��Q.{��I�$���Ͳ���(�=|�C��NX'Q��w�p�	���<�J���]I�J��5g/���^�W�ۂ��*�΃��a��`�0��h6�1ʎq�2����r5�D��j��!W��d?U��n,��+W�]�����S*�m�������uLp� �wѠo��H��j!JF���L��y��m3��f���gc��TC��D    �^�vN-�.�����!�� *���F Fj�5�E��2��z�����\f��{�����介#���_�؊�i?6��3ޢ����#X�^#l�j�D@�R�C��u��(����s[m�OJ�̼�ϟ������Y��_���O�����8	�����[G��,��^��ɄL���T���6,�`�{��4M��p�%��� {:���v	!ZY��ᭁ��[����f �y.���(���
u}�6Α��%bT�adkj�m�U]`;
g�ّ���vD���P2`��,��[��n��p5�;e�0����!����d�j������`�oc��O�0Y���ۮ9�,v�z���GM�h�J��8�=A�$R��t��>���C�i���}�3�m�0\��6v��s#�j�ƔG�n�؛�
��pבL&鱄��zg�Wp��ߣ�FJ��Xz�A���)���ev�f�m��ȥ���xu���=c�TΜb�bկ�Wh[ҔG���R�t	ޖ2��- �K�V��W��J's��ʙ����[���;�vћ��A�k�ڋ�My���	�o����@��B]�8'�Wh%J]��{�V;C���M��.&5JG��M�O�*�&�ܺ��<���� �!# :(ay�v��Zf���B����8�1Y�'�_+�=sy�!�!�GH�8�)Q��g�ӂt��A
5��A�],�㮽=4�>  ���踺��㉵��
�}��}W�#X�^�ٮ�V���iOс'9&��!նo3�Aj'�PP�GK�y��)	�x�5�x/AN�*���/���o.�v�u���y6>o���Cyod?�rRbW����p8���Y�4lz����5B��r�*����+�8������]���-���Z���<����7C"��$���4�>9�%,�N��H��弰W�eh�[�t�ڎ&�Զ��چ ��i?�+d�c���n�b@��p��한�fN�u_[]��b�Ď[�(gߠ��e�ˣlG��a1�	D��a�^�;#�͂P�S�{6e):��4�K{��qgt5ù�*Re6���Έ�%��9an{�,ew:��Z�%+� Ts�m��������6�����<vDkYmP4��n����z��EQaۛ�Y�P�Qg|5_�:����A��Z�b���oe�;���_���,���b�"&?����N�����B��9^�~^n^Av�DC�ި�EH�v�p�0��	���y�Q��^i}��\����q��(:�7�����z�3�O_X{�Ê��O�;�*�ς�wX������۠S�ȥ#���w[7,s`���g:���Ŵ5���q���F�
�Y�������[J;o��6Dx���t�}4��E��|^�4�h�5�gc<�oG+���JG�R�X�oQ������xG�T(t�I&��&�g����v�E�ۛ
���i��<��z��n��W=鑭�Yk����]����:}ⴏDu�a$���L���{�\�R�~Ҁ*v�8\���������E�Po�5�D	�!��}��l��t��|Ocb�_��z��N0t�* �������Ε��J2z{�y:7�����2,F��|C�ɡ-������՘�#x-;���j�Q#�D� c����L�N��je�$L��������}��1��������@͹�~I���j:h��L�\7�W�x;�iqs�P �%��Q��8���KJ���~��n>+v��q��~�KX�_ƣy�l�z�'��@a§/��+�43�M�{*,�D �`�H�}/�Y���崞�����5;���y�`��e�V6yɮߞ籶��V?Q�E�ن��y��W�)B|�������AV� �%��)����{dy��.��d�ֲ��/Ɣ�^��ff����;�Y��u�ۨ�HT���7oBR���ȱ\�!o�<�΂G�X!�2�oP?���Yfp�3{A������\��/�8�紨Un8ʦ���A��I}�Z��[��Q�2�������i:F$K:&x�Z���y9��|����WHf����&�,��Cs�.�{[�<����W��s��S�=N��ޢ\��.�rʗ��<�+���x�&��v�8��Vv[�V�xS<��K�M�{�,�;D��z� ��3AҎK�5�$�O�Qyt���JY��L���eĒQ��rK���8yo�_�wu�=8�o�V�:�?�	��X�M�0HK�\�u��#x#{���jy6t5�8A�"�c�~i�p���osG��!���9h������t�)�Z[ ��6O/t�g�{���+Ŝ8F�2�6��P��Eg&�}����> �_�?�ʞ�R[���I�ըȶxry�����[���p�@"�i�ԝ��)Q��+�r�����g��ڕ���k���&iȊ�gI;��锐2�`U�"X��0����H�ԕ����ͳAؽ<*��_�yG�a�r�K�dY�=�)bR��`M]�VG.�.������r��	 �i@�t`8=E$��}����ig�A���dO~8X Y�z������"�3��.7��d�J!%C��q��,uGiˁ�婦ܢ�d[V�y�R�B���DtU��/[i�Ѣ~S� ���z�7�=�6��9;dUv�%���lf��,r/�7f��� �����H�3�M��[�����r��D��lv)r��t�t6M�_�^�hR
<:��Yj	%�b�]����y��+{��,���q�Ə�h�d|w�{TF���-R�.�Ϳu �����I��a�@�ƊQ��QnONː�M��m	��^�~�S�9G��q	7��y_ʓI&���=���\���y�7�~M��7r&�*�Iݻ��$k��γ����ᐘJ*��*ZPq	�=�{E
߫ d]h�C<}�����7��+���qJ��hL��Y�Nph��-����N)AN��D�;�I2DI]����/!���p���4I���Fo ȶ�uy+����{J����p������Y��;%�;�H��Ǜ3Tn�|��r�������w+ن9�0 ��*��|V�iA�g����F�Q""U	Є�Є��*�G����?�躞��؟"�/!��`�>���U�\ٱ3�}>��Ձ[ā-�7��j'Y�_6<e['�<��vߨv�(UH��<�h����� 1�)*vw�C��eZ0H�^^<�ߏ�j�/���Y��u75����M|,9����>�CK<�&�0|���&�����fo,BX��˘
JĜ������v�R���q�0��c0�J#;8��f���=����5��Uy�ひ
�(_��7�g�̳|��'��.��=���E�{�/�N¦@�CH�6�e[1�<��V]�x9�k.�y/�:t���9�8�$Zݥ?�`����:�x�[�[��틋�r#���}��%���Ze;�)r�l7]�q��s�c=ԋLԕ��t�J�,��ɉZ��W}"�rq<7��&ռ�N5i�Yˮ�������ʫ�� )M�	�A@�-�K�E���\��4A�-.6\�3j�fO��O�D�'{�>^;u)�� f��{�x!�tڠs�Ї.8��^�0��-r�c9�L���?�	��9�%28��d��|u�7���E<<����(ڸ�-<� ;������y��^�#���k�ϣ�H!�o�ԉ@�O^�>MUs
�n!�"�/$sd��d�Xpt��e u��j�yS��Zʲ��]�B�"3Q��2="Wq$�P�EMz�X�m-��_��cf���=�߄u�w��|�`AP�.�4��Y�^M=�,K,�N1�N�[d%me�p�	�5t�A���<�������[p�>7񪽆��7o�*F��Ƹ�`Z���Xvy��%�@n��B��P�9;���Zf�`Γ`�|N�5/����8�a���-�z0�&�f'D7�{ R7j��~;ꥏc�@�����`�o:���\�\=W��8V9/�9�e�Y|W�������K������%
»2nN�P�4���]���K�3�^iH;),:)�����:+�fNs���[YK�'X�;��<�    ���p����͍��4��0�Jf(Ѷt;Ϫ�2pq�1z�y� �Dr$)k�RfDHF���=5g�֫�+;9���
t��Q:�\�};[*��l7��M�CA���w���=d��.y*{��zJ4; ��͙�ht�I醣n#�k�)�G����� %����1߅�����8Nc�U�_sY5w��C��~V&�M�d�;�~5�|5��+�6J�ģ���gw!��\�j��F���Wc��&�N=k�g����8Ug�;�P��2����)���/��h�?��u���?<�
�li�5/�|��l+�G�½`X
��I�!�@�l���:�H�e,y#����:L>�G��{�${���3؅�_\��o�ٰחY2�R֘^�$�bIC��<K�K2]�J@��:TCI#�U��dC	�a*֩rݽ;�,/�l�������F�;R�Ӫ�U�&�����>b,�����n�`0���&N�f�[�w�Ls����E�`�v9�~<��Z����8	Q���84L����P�Ob����j��Ou�!=�vg��&�����<��Y���O��O3~����+�O��4�J5L�Lm?�*p}�U�ˣl79�	��V;d��pD4�V�3{M��ﳞ����^^,syFn*�nh�Rh�Y�^G�����H����y��\_2p΄�d"��0�-~�!s㟂Ũ�*�_t�]�]���zc�=Q~Ζ��}{��-;wOsf��T �!(��MDHz!%/!���$�>,E6`PDȝ����z��NQ�MώbNL�FR�V�-�.�%�Ǜ3z�Ŏu>eu?�Y�4��YPZz�1i�~�i��w8lh]\.O�zΐV	;�D������cC��$�\�!]�DA ұ3�k M:��iP�r}Z�A�V�$�Ʃ�vQm�l+�G�ĽX�6� �vR[��.��S4����6��\u8������-�uK��m� \F��ΙF:��ٕ�������D�8�ȡ�$,�$u�A��xo'�1O����ҙ�0a�Y_��Z����G�@'�� g ��GQ�� �0��}��4x����?&�5�E��n�Ed��\^�3������8�e�G�xǾl�!�\���2���A���z+Zް�P�Q���8p�<O'�ʶ��Xw�'gl�$j�)$�r�C@J�3JZo\?-c�6����n�b�����=�v���^�9�	;z�g(-�r5.$GW���F�<I����O��I#M����3n�%>kq|7�񍢼�^	8��A�8�-�hHA$� �I.�)mE(�����8�E�*G�U2��n�6\(J�|G�!2%!��[V�!�F�;��z�	��$-Դ<tN�`:�0W��ߛ��@�u��z�D��P8mĩs,o/e� ��B�J(��H�z��5��'M��H����5��,O���?��j��R���n�&�R��,l7���2`�H�T�Gv��(�` ˤ����Ӻ#(M�	���n��VEoVO�fw��-NY�*w�<�ѩ	p�0�%�R2]kR�;�B`��`'do���P��9@�%q�XӾ��@_^����q�������y�]+�)U�4�γ���"2�=ަ5eA�il^��)6�w�&�YnR��Ȏ��������iQW�k��v���X��d�G3�>@����=�(`�L�N	M�V^�z�W��U�G|�k�y��q�ξs8G������jD������?��Z��q�!�u���l9|?:c;�a�r�	�S ��W��Un��f�$�#�dF�kM�Wd�؊�M�v��]b6��U�ֵ,�`�;*�.��R�N�R!�"r����%#���5P�CƳ��nԣ��֨g�ݓ�5BN�0�hg���<��k".��"�Y{��0��(��`}Axe}5"&{�|ƁLx1���p�+�@?��`]I����E��%�M�{c�"($�Xah߆�DH�I�%vL��'n9��Μ���W����zE5�*w$%%Q���k7$3�I�!��v"F�-HK]���;�[eթ���[��� E�5;��w6J%r� f�i+�o+u�G���%(�B�v���it�g�<N�  `k��	��E��7�Cɒ7��`qh���3 4>ND@�c��y[��<��w���9^v	m�Gj�O���P��ѽ�^���.�'G�U����i�3ʓ�Xߎ�0����|룹��R	֡!&��pZ5����xQ��o�^X\��׫�����zs�hi���F*��&�=~:ʐ\$$�D �< #AYѥ�h� ۃ0��?��q�"��/�>�4�f�4~}|�d����x%��wҍ�:l��2)c�	�`�i-�]vΏ`��t�x���G~\��Ra�Q�� x��s�`I�o�� r�uF@���ߟ}�O˅[/N*�*�J:�b�� ���O;|۽ZW�.wA�j�Cט>X
a�'ZG�CR��������y#�ps�Z�QŤ�jjL����p�WW ڎ��cb��_��ci1�w�u8�](����
�a�B�'���z-r�q�PU��֥�P�ۈ�Ĳ��X'�:���&`� ��C:b<Ï��Z��$v|���~�A���'���9����?ŉC��?|���Q�{@o)R��ꨓh�Y#��]�k-bH*��Wq���8����k�4�\AF���PƠ���U3�x�h����|�X�ȳ�}� �	'
��]��A�F��U+�.R'2�7����*��j ��f�~hD�r�m��Gq���E{�b�~y����=R�y-����V��-+]�K���3{�wL#׉+չ������A'�w�{��W����=Y����%����x��k�9V��ܿ�*F��au.[[��dfn=�6��'���"��t�����K�k7����h��*ܼr�e����@`�Q4�]%oC(^ Ԏr��f��E%�Ȯ��a�v�]�Om�t���Fj3��Q��X��e����E�5�3L��DU�6�׋k1�/��d��v�����`����=ǻ�k��GM]�Ci4��Rw�F�������/��Zp�TQ녵��F��{9���b��Y����r5�>nsb�򜤎J�c�����wb1H^���ǯ������F���UVT������r~cq|5�����
½=>^�J��$���@ �A���|#{A1��`��K��#�4��
�g��2�*���4O�z����^9�JdŖA���٪�u��6�B�>~jN�rt8�u԰�W���ϥd��H�Bk�,�Q���r��w����s����[�,?Ec����w������Up�69؏њ���%��s��ݬ}�� �p�Q�HYL�d�.	
;E���{g�A�O��/z`���ޙ��\�����K{T�����O\'�Q::�i���+�I��w]LXǖ���N����|{`Jyt����{�P�u�&\?�;���q�2������_���S�s��k�ϱ����BT���z���&��hhٸ5�4��J\O~�<���PcF���B?�^�"�h�����h���C��pWS�S?E��O4�d���<�7��d��R�l3 ��P�FP��|�%Z`B�Oڗx1<�r��җ���b�����D���⨀���~���<'�Z��9����=u̱��ؐ��R'�LB��	��V�,���G�֯foƁ���O\�p���0�h�D�5�(6>�RLt)��R���{ ͻUr�
�&����hd��3/��&���a��"�5�l�c�r	�'������	�Q��GP=kh��g�{�9H��5�9��Db� �w��`"W4�����0���{�/[��<lR��&31Uk-g��T�S��ƍ`����<f�;?��D+&�W�y;Ԍ/�5_�􋜼����u��W'G8r�YsXzmux�X���Dڤ���Ƶi��g����7���cj�<Wp	�h�PcRC�5B����x�.����A�Z����oW���(���T�7�D�SI���h���Z�"���U��q!����5�    )�����(k��A_�K����7��ϨF�(-�^-ͨs��� �F�e.u:d�CH`!�U]�������j�%z�~��?�3{iqX��M5ـ'�Nb6
~7�{� %Jj7�y͑ �SpX��Zt�*�I��Z�a����/`�# +����*ţ�� ��zRfT5�-m�����N)�BTg�r8��;��fR�gpi�6�͍�gu�;e�
����qկ[Y ����|9�u<��������7+��&cե�lG���P��n� �zX;|��0�3�í��qob�1sJ����6~�M�y㵛8��\���?��6����e���'i���F��	��2QE�;�SJ#�6�D15�?+���e�����zo��ؿ{-�Ս��c�|phS��;Y�����4�����7�ՎY�z���5����LT �7���tN]�?���,��~	���FBv\#�zn�xcq=,���,�7C�N�]̡������~4� ;�*��<C@:���ޚ�M}a?K~'k#����w�����qLH����9��~�8J�G���@�D8 ��.� RO�����]���<�ˬ)�U;���9L�{y��z|=|��(CC����w�l��1Fx�7�=�E��J���zi)R͍�2A�����G+�;�����&´Eg#��?���Z����b�<D�*R�	ݼ%�'�F��r�P�4�P��X�M~�ō����,��ߛgِ��p#�߸8nk�s:{euYno�QI�/W'�
KG�)�Cvq���ϱ����7$� W��E���8a��� �&YC��8q����wo��ʿ}�\wv�5ν��.s��}+���\1��;*������AJ'�;�c���D�
u��!�s����g�~|���|�~���%�<�_���%荽Y?i�et'�F��m�Y]�i��[!�r�ᅳ��pX��}�V��E?*�cYQ���'�.{���d�o�ry��S:���Q���Y�n山s�Y𑪎a$����t��Ѱ�����Vv^�˼�l�����D{�#�����o��������x0-�>ߩ���cQ��ؙ�0�x]��8��
����CX���SQO��&���,i/k��S�pzwDGQ/���
8��Vg-U��21�Y��|�d��ٛ��UM�@��5��xsNպ����u���}v���=����,E@�r�$u2� K!��Z�N���Ѹ��D���6�^X.���"T�p̚�i�<�Q�Kݑ?����@ј�>�	���h����{���<�VR����	*T2��"�0�lI��NL�y#l{��G���j]��Dq�Syb�s$�b�V��
���B��\֛]<Y�Ñ۞�Z���h��lU;�S%��S���p�T`��+M:��)ދ�JǌSU�.k���P��������V�o��F� �(+��,��[�E�3=U2�̇�>Y���"A�×�9���j�����E�|ĨY�1��a�(+Q��/�����l~i��IX�8�s1=yY�@���>��������mh��Owʉ6*��P��%j<���"T����f ������x���`D�u7��Z��٫��u�?�{p!vuc`}�b���A�A��TE��թ!�8Y��J��^^5�!�F�T�3(U2�ݔ�7�	���CP`H� 7��K�����q���,���i��h��kGx��I��89Z��En�Ȣ�&��,o7�2t�����G�Z����N����{kE=���O��g�x7�{L�U+��Ĳ���(�>���G�G���$�
p��psk�{�I��)z�:[�8H�g���8|�����㫇��'W�Qe�&\h��Ьq���m�l{��$P6�(���༌@�T���.IΪ���b ���y��om���T�����>�v���d?s_����<h��Q6��<P��XN��ş2����g�e��%� |,V'GUW�L;��2i&[���X�~E���{�w'�l�U]Lz"
���[���T���3o��yI��f�s&=y�i%�K�����ə�X�`٦�/��xF<����F�hȃ����էT�=�B��]�y�Sz/K5l�n~4^��|��8E;�	.��P��kY�G�n��[S��M�˃1��C� ���w�1��(����.Ytqo��m���K{��a���|נ;R#?{��I��ZܤO.��������8�]�
ʭ���0^�Y���C(�7�,l���?.��y.��~�ѓwg����ku�G7�������|rp��Xo�!����	g&�@7P_��<��w�*�������z��xcA�!X�d�{T�e�`�
����VfNe\|]����O%b5��x|�>��ߋa1Ҍ���-��'���+m7����^�#e�F®��F��L��¢�o]����)2�z��&�嫫��Fd �׬?���V�+�KK �ս����D
�w ����y���bB�|�o.��Wp��<�?�W����)
��i�o�<�մY���.5�Ӈq*{/�f�p���VO�È��qTQ�����N�9�֍p��EZ����Y����6ɝ��Q=�Z�[Ԍ Z`(.�P�㽈S1Y�	��E�<N������5�_e5�����^\ϲ.���Z^�ȧ[�ݮ5�Rl�Q�|���m���{�/�}	`�����&T��O��_�D2>�ݪN=%�*ɇl)3�ce{��l�s��IJ�#h�'��Jz]���� ��x��eǐ[��d�PV�nik�^�C��МRP-�C�a6}F
Rr�U·�����ہD�@��b����.t��P�s ��1�����P��� �9 y��-��י��Ȋ�sO~��؋W׫Å_a���5`����竬ĸ1M��/�W.n����B�.[�>��_u�_w�S��=bн�x[�rd������49J&�$g₢�i�en�a�,a�56�� ^�	^^�}�?þ�*�y�����6�_�n*�㵨�xK�� ��K	xI=u!F�*�'Ɣ?�c8�r��fgU�1���Raj������V-��A%HY�Ém��ʓ�bj��!�0�~���L����� ��|�V��VMˁ�G+���������T��dѤ0v��יA]m�;�u�	@O��]�0w�9��,�?dݽ;O~��1�wgk�O����A���͆������p^�b]9����2���R63�R�)����G	x��Iٙ��ؠ;�#�GzKY��_g�E�lԨ�����(�����/��U�
2q#��Z�i�~��~;���D��`+�t���=��d��Jgmun�Anϳ���6�q��轲J���p �0tk�mhn
4�Q}��<��#Ġ,OG��O������'E|=�Q,���wkvٯO~��C
�fbΘ'�۵fyM��Aw�Dc�5ſy�4qO�dQ�7O#N�	�b���p����\=J}�R:1g��60+>�|?�s��H�:)Ж�D�9�`W&a`32c��笌���4��a���ܤwؠE����vu��:ڷ�2���|𷩜U����1�oE�g���xR�IX��$�Ǒ$��){�z���� �f�f����m]�lO��L!|��ڶ��,n��BGyo�ń��\.�;��Ք���j����i`f�!=��y�?�U��a�`R1�L�k��+񅕛_�������q�D����V7���aG��q����L�
�q=�P2)ȟ1��<�Xr{Jmm2uY�Rh��f�-s�(�bG��1��ʈ�<�;>�s!�N)')u"�Z������c����m��z��vXcx7D7�+�C o���P/2|,u"W�$N�����Rm���^�^%1I %&D&9T�����V.��	�Vn�U)��m��/����x��*�y��͊\ޯjۑ�G����������?�Шy�3.� �ε�7�Y�$Tb��5��T��ѵq�VO�d٥�E�jYˎ��#��	Ǭ����H�������* N  �SR�w�����ؽq�p�5�	í��N���h�a7�s'�l�}�pȢd@Ֆ�S��܎B�)TJ��z#GGR�r!�Ǚ�|`�V+�<ǰ��%�����Y�/!�u=ǲX%\ɧsk�X�4L�T[�I�O;j�}\��Dߔ┃��@f��9.���[�U���:�)����Wx��,�C�l�"��(���++�����|w�i����G��l-�	PԠ��l�P:�)�>��ň'�-����>)Hyݷ?/��5�ܥ:��"�D}9����8'Y[����(x�*��-!hУQM�h��������5�Aͧ��ڎ��V�ئ����VՖR�t�n���2{���T�ဵ�������~���%�ϐ�u�:,�{��`�dR���!exG��e���)�.���7��`�3!�7 :�^�N2���8j�8w1	eY�={�a�.��;���H�]|�s���z�^�p�F\�,���R��RO��в�I��_ZO�XTQ�v d,BD�RsE�W�q�7 YY��K�Տ'��//��^\�V	>�i�F��������Q�}$��sa�{�:M'eGࣤ�ѡ.፵�,
��l��ݵ���S�b64���l���g/j�iC+�s�FTm���L�{����1A�fSX�(����,\��~X��S����F��˨k���5�s[��<�w��5�L�A.�;oq��#gŦ�i�P8�A���.W(d���<g[�fqlvyyrVW�F�E�n$q�ɠ/�.��ܖu)�`�{�ި�m�� ��}ҝ��3�q��2��lw@cw�&~�����m%�Y��u������}���X�      �      x��}�rG��3�x?!���쏡H�V�/E��Cʢ�˱^<^`�AE�/ ~�|ɩ̕�h�XU�['�]ꅾTefe�\��-ϗ����j9]���'���oˇ��`8z2(�dY?�� ���x:*F�kP�zý�������ay����|��[=[-���ݗ�Eա�ho��r��s ��D���������}I.���C�|o�A��ߋ����������(�x2�+���ݮ�ˣ���{����\Tp<�O�z�_�u��Q��Ln����}y���	R�D�z�����/�du�n��'UO�z���Lo�A,'����;��@.�9���{�7�
��	�A'�t�p��N��|̑e���
X�5�\^��A笼t�"������4��0Y��z�P~��:\�W?�� ��e�C�̭�׊q!k�ݵ��w�w^��@�*С^��?�M��i+���/�1_:��ܪ:V�R�����:��|%�P/+�La��Z8�}w�nJ8h���2��>;���"�u&b���|�,��:>�u�����^]��9�>���	T�LugE�Ӿ37'ݗ�
�Vл�/���ϫ_u�8��q��\� wJ��~�[;�gqw��ȁ-V�,�w_3�C�a��C��̙:rWq �Cn~��u���ֽN�*��t��p�`ȡ�
�����߀���4�
�V�,`Y�j���3��0�5��ް�=�3z&w��>̭X:�y��n�|�.�΁��)/���h�iTm!Gj2�]��Z�?�
\��p&C,�.H��^��=T�����j�0�������/��<��p/�z4سW��?�1�@�Q�����Po�ٜ�;�<w�ȭ�Y>��X8v��p����ZL�F#q��f���.i�p%ߌ>pԭ����3YQ��������������iy��.7l���cԭ���Y��\��f��5��c�7�d�<�*B@�fN�pW�Z��{օ�ݷjJ'�/HT�sˌH~�獄\>�>/O�d_��u�=4�S��s�D�<1Q�{�����K=ȗ�����R�-���=��F���С^n�H֋3��q��u��_`���#�lB�)��#Æ�-#���X7}u&��K�q�C��l[�	C���˹@�ņ�Gk��ܲ���$g�����G|����z��ЀG��=L�q��C�|,����b���#���;�;����:ιf~#��X�zE�1�]4+k\n�+�p�-���g[�<�X�z��$g��_���F�	p�	Ґ�z	3����u��P�(�e���K\о~߫���r��^��5�l�q����6�)�i`<��[�����Zf���sr)��:�+�R����7l��Xjf�9�(`��_2	�7H��b�_�R��ew����.���{�H}��[*G:Y��0�a�ס^9�XƟ���ȗq0߳�Gw?:���]����������::���ס^�Y8g�$��"�T=��{�#��L���=��싏,�5�ߛ;�!҆5��/�5�ľ��^��8䦃��;�}}�A�l�D�5��΂`7I"�!�ZC$4���L��w�Э�OnY?C�������K�z�hg�����5�s�{�����Y����f��g�}���Bf�|�k�N�p�2Kv��^����>do�l�Xu��$Tr��C���Z��a9Dx��qغ5��h`����P�����2`�5Ԑ����Np��hz��M��(u����j��~GVX�qN�8CoXC�`�=q��C�Z��{uEY\�
G�r�:|�dі�W��/o5_��,�H]�����R̐�M�?�%2����d�LO���V~�Y��G:ԫ��D�KOG��j/u��э���m�4�~s���j�~Z�u�-[`c��1��f����/�8��*�Jt�7�ďNtm���L��ܭ~����wv��}o�%��q��y)�ի�າ4�� hѤ���D�9�X:���FN����M1���,,��l�nN��-�qڑ������W�SG{	-'f����(t{�ɼ��0��>b�7��ҕ�8��
7�D�[⯾Z���PD!��@|5���u"&L� �G|#nvp�8�L�~��,��x�yR���?w�_N����^7}?vD���M^�;8w�v�Cr%w�H�f�|�ΑM5Z��gn�l$
���4��;m��A�(bӳΙĭ�J�enXc`���VG8U��G��O���W9�cIg n:��%���{�����\�}��E�F�&�&��o�#�8�ΘJa�üi��Lɫ �'Ϲ��q��B�O���-|l���қ�+ݚ=S�t��� �#78A˹�A^��ha�4בf���2�6_�f!�3���j_��TnRs㜔���G`$���?r�����O�}�����@�>�0�^B!���d!�/��V��3��t�p���d�`C�Sr�Ye�����57�	xC�f�C$�M?9���7�L�Pi@��aX������T���XRQ�S�r�0Đ�,vF�� �Atnي�d}vONO�
nAX�a�u��Y���1��swx׷�3��E`��L#�|-��N��3�GY.�}���C��PБ����Ǚ��b{��[��]8���!����90G{�Ց{�Gr�MVy���|_S�[&��ב�^��wo�3��7h\�s��?��s+�j���5d�����=f�9j��*9VH�kG�<���H��G�����c�"��6�>��Z���!؛��U�|\*���]>��u�0\ށ&�㛒{��O�i�c;b�(.{�8�����
$9w���J�x>�f��p'X�	
���J�#��~1�lL@_��n5��>wz%���6R����J�'�$�"!<���w���46�x#c��lԥnE(�#�+܆�M 1�{fg�㒒;�Ҩ����L��+ĩAI@��c����k`ebi
�Ab�	[�/p�t!�1�0w�M
�3^a�[�,�J8�B7Gsƞ���#tԜ�Wm�:`��6	�5�t��u3/K�\�][	�V��CFֵ[z�����(�U-�K+�҄�u���X�S�(P�M�����HH�?���v�O����}�(����̜!�����;��;�
��,�\�ݩ�q����x�	�n-�s~ФwŽYoVV�//6��8�aŽO�#)B���x��	h�5!��bZ6������ ���OxVܗU�e�xx��E7���T��?�sR�B�u��4C��X?&�SIrkzfD*\:��M]�%.u��	�n��G�˿�$�SO����;�
ά*�<�|��2����)�H���мl�AV�T��h��I�N˟C���V}K��^qT��+1�n�J9T߃���͡����:���'^�R������(C؞X�E������Nt�z/H��A�t͍z�^�ö�����V�$���ľ���W�bȡUR2�p�ۺ[dO:�OZu�,�E��A.��U�Y=^gc�z�>2�{������@Ν�� �:�697�����5�qn������x���<��:���I6gB\�i�	��edr{���l�VЌ�t�U�xn�|E`�/�Ll�p>?>�/�#����c]���w նePF�2���a��k�� �k�*���"���Q��sR��<�S����ifџo�ST��9�p�bс�Ӵ<���|�����rx����,��������c� �W���rX�ϟ�A�9]�3^�9C�'�lC�B,w�I�s$z��J@����o�܈����W�c��7����O<SWLa�0��%}fnt��e�/� ��J>�s9�6l�!�����y9Dl�Qd#���`?�ם��y�Y��0�VD�qd|}p���wW��L��(	�%}l������/|Y~��(z����U{���G�POC��W�VE�)Iǎ�d������=�Q�#Gɴ�DjIvS
^;_X��pЄL�(y"�B�J1�bO}�����w/̂W�V5?nQ>�
� g�4�;�Q[���P+��Tc+x����7^}_Xa��Z�"r���S0!ɛ*EK�|h(��Y="V馝    ���CUC�p��fP��ڔ�ZI���ҏ(���1uJ�G����6a^I.v��5/ۢ���ߝIK�j�Su��ǳ�ҭ~������~,��a��3aJD
r�
��Tݢ_��D#�؆BM�*�N�
�P�!�[��a���*�7�����cW�����ot�x������Gu�P�ɽs��E�u�R��+�y�p�h�e0�2���Ch���(���&i5I��L%Y�\� CKO?'n>����-��v�l2���7���4)�x��l���Y�,Xh���Q�&�}�� �R��'`ȡV�S� �D3Xwʂ�/9�Y7G�GO��-&0`:#�ۇ{�Й��\�C��P~ע��5�zCw`)���Ve�?Ν1���9"�$O�Ow�7Z��'� �ZF��Kr�3��}��0 �E�!C7b(���;Q(�' m�q�FMf�B(s�W2�m���
rhu�~q��y8�O�[�	��o@�Ш��h�d�B1,^�澏=� '�e��b�7��K����.�@Т:|���8Ҩ���C����-��a��P0͵'0䐋-�4�����y��7�z���l��]^������_���N�X���!�g���@E��)0�p�(L�����(�p��6U�6Ajff�:�R�����/����M�OstV�&o���כ`�O
�hO+eӪ�zz�m-}ͳ��M��.0�0�D�-%�RMM�W?��3�|4S�i��my0+����/�ڗ�g`ȡmס��-m��B��,�p����B(cX7�O_�q)x�y,<��\�gb�WG,�2rȲjV/�9�Ca�G5'5�ЪeQ���ÒS��	��lQ���K��ݩ�V���芒��5,0���֖�����7gw�P�7����	FV\,C[� s,��2#*�fCo�g��4�X�c��C��x�[T��Q�$�y������?|�W��r9�Maſ�~e�� �"��V����G��钯��6��5���б{SR�/&sk]�
m�k_�Z ^S��9�r��j
h7W���5rh�W�I�P��'5���ު���uZ��wȫ?0�PA҅Q�!sO�
^^���H8�f�����3���Y��">���9�Cl���r��7���F-�����s�1���=e�ͽ��L�v���1�0Q�B�?4��F�sw1��ʆ�vbi�gT-OC�k������l��H&H�����@�ة�?wش[��u"(��
�/_'`P�/ge^���d#��6|$O0���!�+�ֳ�{;��[���7G�7�Rp8��C��G����MD@���`9���[g����e)��w�����厁��1��,��6=I�MO%`�MJ�zX�f�Z#����6!X�a�dFf&'�jg�5��		
N�Ő�6]�濚r$I0s�-����8J�� @�	���'�bȡ�{��f�����.S�3��Y����o߷�~qn�@��=S�7B�߾%�U[%�o�ƭEm��-�q�G�d�غ�4Y9�q���4��M�f�&�8l��×fz`1b5B��i �〗H�t�\�,��7*!r�$�/,'0|���h4�J ��������}�����m5E!"����ֶ��)��#�� �+
[�vu_��h8ũ���Ӑ�፣0��[ӽE:oz�t� h�WR�tk:��q���(�zЇU�BJ��i��D�L������iG7�9o�E�f�z�����NP��Нk�#w��P׾˒�3C��Y4�G6ש��o9����!�z��J�7Qvx�d�PYu
b�Eg��z�'ǐ��OH��m�Vp�7�z#�\ _w橡�ф�&�W���$�;��u��B`��](��a�Q5e0]o�L��k0��`�BI�=h�����!�Xh�3�����J�/4.� �{�� �~z��m��Z�;��!�-��j����۔���!��D�_,.��y�_=Y��^]�c��ȁ(P�-W�e���{�/�!(M��7ur��MLǧ��&��n�j��悺����1�����Y��3^;}�Ū��x9�D��}�n!��Kdɥԅ`ȡVX��^�����ʖ�Y{�څ�SC�~� �]����2�v۫���K�IW�n����Vi�%h������O�|t��&%�e����K�P'$���+@���`��l��:��߁�]��V�� �}li}�*�K6�$��[-#SH�,[��sge����T���)xHUr&yi]�*��]�pS��&��/q�C�~�v����7^��y����S�bo/�����L�l�9������r�\�/q�j�qYX�␍��޶i��ڛ7|����@�S����\h`�W`����!�]n$ߡ#�\�UwL��đI��E Y��Vo1hP�G�'���w9\iϭg��!����FqǃV����S�y�rxٞ��!yLyb%�c�aMI³,N�f��R���z�N��( �����]#m��X8���<t9��z�j���L�����8x��GB�V$D�+9�C���x��)�/J@����Δ�Ms�<R�-�0AS��]{M^KN-�P/��`R��K
�v�)��w��:����;d��s4]�,o$�p��Ѭ5���ְ����ŧ�F]���;Qp��vx<\�ɘ��#�& 7�c�h�+�Bx4(˺Y����I�DS�q�zS��=�Jc;�5�3|p򧹧Z��u���)�M�0��P�������r
��c��O.d�-��?m���+���-�?(/1tؚ������W�*9kC�Iu��K��Z�	��F��nbn�{f����J���bx�'�E� �5�P�6��7V�,���"HP$�w-9�C��+"�1J,Tʎ>{1�*`��c3�\'�3�t���@r�?�j��̎!�9����K�k)�9�@��\rH�?�h$�Rx+%��c�!�[d�#��WY����a�o�'�_/>��
�{Z<�'d�&�V�3�A	�,���`�Ch���K��ǐ�kב~<di�b���6[MA�������y'������3�hP�R�Ş61ԅ���_�J9�rg�UY":��%!�\��-y�G��Ҙq������er?Xo4(8֒�y�x���r�vf��>b�E?K^"��^.���zʓp�c���d?�M�%r�1lu�]�����J^5�!�;���z�S��Y��2^2�+�Z����lT��(0���8߾('���C��۝4-����Uy�����#�T��rw�\C��Qac����rhu�h/y�+m���[[0���A_��<H�"����a�V���tsk�V��i�,���9�1��Cs��c�Gb�-�#~�å�1�G;j��s�=	>y��Y`ȡ��sL�^ї� .��!�Z /b��|"�#�����r��Y�S3�< �S��9(� j���erH5�ɮ���A9Y}�%N�ǐCo�/��ͬfD��{�&���=~N,/B�54<����#�1n�V �4��H�X�*�Tr�9���4����.�Sr�9����[`*������I@,<��VV�k_����BXw��z�@+9!C�Rڋ6�TF�O�9�.��QK����qܶzo$�	�����N󜛙�i����;z�q�l��%Y�A][l)Qr�=��PiZ��%��C�_�[�ܦ���h��D��qs���i`֎o	�aJ��r�E�P��M�*�c�&���5ow�w�n���rصu[�JSMhN�H@oѩ�p'8W��5�?��)��G���ufG{�^1@LYJ1ᰆ�UEP��0a�5�+�Ξ�a�4Ĭ�}��I�y�rȢ��$s�B��h���r�Ŗ��?���>��W<��y]nm����|U���+�A��\N�>Z�I�i"�EO�'O���GC<6K��5��ig�K_Y�_���j�1����N�4����|]���A^�C�9⿧�G��py^������3Z����|��;���Li9�ܺ�C��^	    X�g)��N�Y-b
b�j�9rTM'�M��3������ �W��vӫM�oȽq�3��x�] ��o��_�Ͽ=,�tp5S������B&���3�1�w�❩����v�>�NLc
rn}ڞ��yo,y�[٢�k9Pӈ{�q�1̉�I�+�W �6FJ�C���Pؑ�k[H0�|JQ_�!�]�^����u�����i��|b6����O�W���!��m1_$Ҿ
��8Ⱅ����M9S�F[���e��V�i�r���-���>���h�l&Yyt�bYf�W������G��о���m9�JUl}��}t���Ԏ	�vNL��ڐ8��nM�W���^!Ą��։*��J�˚�sU�	�l�!�6�8	�b���R
&
VV���a�=�hy���c����|��Mڛ��z�/f�}q�͎�GJ��;h���� �6�'oc�!אl���o�k=�gb���zC~���]������QwSc*��Ɛ��Z�	��VJߍ�3�ПN�V9��Y��XTę�r�� �l��v�+�d7������M+;��xD >x!܅3�:����n O��(]��\���������cȡV�}�\����LC��5�z��锧�F-�V�9���+{&`���٩�$1�`ŉ���`��܎Rg�l�fF-u��H
��7j����[q�9�"Z6 �{=��VS�1M�Tџ9yvk8����?�~c�q�v`	g�c�a�AH�t��y����*��Y�MNR0�GdK������Կ�t�"7Jy;�tW�P��7ڷ�$o�m��}}m��$4�"��ﾔ{@8�b�����J���̷�RaJ��D�Oէ�Q1��-r�I����1�P���є��fi��gsrN
v���}�-�Y�R
"��<�7�N�wx��~5�g�h�y���YQ�r�7�a��Tbfd�uL��x0!����ܑ�4�O@�	�����~������2�?�/���E<$S�X�-a��\M,�Lg�S�K�)Zkjt�ڧ�S���d-#�}ѕl�9cC��(�=mH��YG#u1W��)�X�|�[X0�Ǯ[�x'�b��OxI�	S��G��L^,C�*^�!�<��:0�$�}�Z��{�V��\rO=�M4�Оj9	����q�1�)��%<�C�A���؁�mOA+7e�n�<C�@QU{�tjbݧ�_��&� �f�u?��x�V�D�∣����x� �zE=ؒ�=�yOn�a���과�x ܌bu��Ư��q��V���]�2�W!`ȡ�;�&ڦ����bKb�\���A^l�k0�p˭�S�;��kD�����6���3L@mK
��͋,0䐶3'�m�^W	������u<q���3#�f�Q_3C&/	��Cm�Mj�T7$(N�m�?y.]�q���w@��As����j�]�.}\l��������ur&��+��߃X��~�'�I��g�EX�r9���%�j�P����	���@5�Y������� ��Dr�ٖLs0�H�S�ܥ�ʆ��9�%U�:	C��3�!u��إ�5&��X��UKSp[���7��Gy��L9���ļ�]��c��t��w��Ng̺ձR�/�YǳsW��e�m�K5P�Q
k���E;o�w��nDQ�G�9�w�w@�%�����3p6��I���D��4y� '�٪1]x5���i��N���M����K�<.�!�Y��;�:{y������΃K��jG`��v�wM�?�&�F�����hLu��A��<��!�>��G�Y�@�p�%��[�Õ��5��^���y`�a�y�C[h�Q�aK-�:j*d�[�Ŝ��8b��?O��7A����O:�1.b���A8��%9����F�3<���@�I
n��y
_>��y��#@����͠��R-ٔg.-{w�߂�R�Kx��#|�
]1�b��A!C=�b�' 7��;갵���C��s�a=X���c�3���[!I��IdR����\s>jƍ|]bY�ʖ�?�iH�F�*9�<���������y�io�L廈_�h>q^�yf�����$�)�����l)
���sW\n C8km=i�P�?s����O�Tq�9̑�DZ��y-��1�t���oX���ҝ.�MJ@.Z�D%C��W�S𔹗�[�Wi���Mg�����Z��6qY9ܺEb<Ҕ�D�;�y��:����`���$�d� ^|��	r���W�������o@�i��ri���6ā�-
�4\��bި�|�=2^yT9������7B���B�A�X@���,�i�hM� ���ΨUS&Ҕ�����$r�9���v�s�N�8�XiU`�nȌҩ���	$�,�ZKt@N�,�����"�pE
b[{�)~��J@k�t�����b�|�aѕ����vO���D���Q_�3��J���">�<G�c��'������$��3A��R�i���\���:�܄�>\CM?8,�ASK���	[��[�H�a@৬����W�k�S�X>��������[�Vn�(���Yr?1Z��ܯ��_ZƦ~5�v�����k�2X@�����h�w��������Xtב �YGq�y��p�GjմJ=
�P��CI�j��	�<	�m�,�D�>�Qe=h;L��3� X����ig�l���zw��O��=�,�|-�/Mѩ��6I�;f��%�6Kt��v1ވR�[Y?U�؁��1��WqY9�'�|7��8�x�A+�^|~�u..,�	�k��}b��%��s�S�fظ��������	1ı�}*YZ���(V����l��E��3���T=Zr��*P��r�RXv�z�M'N������	�yS��A�?I�& ��C'J"dwŃ��Ke�� V�GZ;J��8�捥R��Ʌ�:k��\�C���q��׽_��^F�����9
�[.����m7��ħnhh�&p�3�Jx�2�F�wgD���L?n>lJ���|�K0cO��}Ȃ�@�Y�J�MurK��3^�����`J@O��&�?�Ema�V�����s�һ91�9Mk���ޚ+��@2;�* 6MVf�*t�?�/���r����h�M����XY	{�-��ʋP�85�P6�~f3��p��C�xDĹ)Z��KS�ds?�]�,����I�
�T1�
'��{��c`혷X�+�w�
�r��FE��xo��;�K��n�]���]��>�2 ��!��V>Ť	H����/��3�N�����Fr&�vR��2Z��Z�հعg���2�໓���}[�벴b��S0�6��ҽ�sr�P9<=o�y���N����Q���M�#
U�?��D��O���)��@1���3�b�@��O�D�/��6M)�%�C��Y�8B�gMGg<mD�+�Y:gSq;��s�O9�r+�<WV��uF��D��G��p���q̺�b��t8Z������[���,��&�'��-/�1��L˻݇�M� ��pؙ�oU���G*�b�@BXW�luk� ��޺(�7G,6���$�>/4�r#>b�3^ES��g6W�=E�}�'�j�醞<|�VQt��ۜ+ƍ�R�rX�Lq����PЗ�+�V��?i�P@.#S�oJ�m���y�3F�#䂍B�#�7�)�

*������\�3b���OB�Q./�!�V�]qtF)����c3�Ab�3P4������r�5d�UfK���/sM@kP���Q�r�Q޺o;�`qfƐCͶ�T�=��7l%5���Hb�� 3���э���0O�/�=�޸�- bƐC��oy�Vo��*��d�BZ���Y	��
	��������r�5B:}d�
Zd.:#�cذK�l�^���qL��SU�"�vb[agɟ ��l�
[Y&��g>�6��A
��B#,��2tG��'�F��:���/\��J_��Ҽuw>�$P���|����
�5�jƐ�S��k��?��YgĪ��F��bӼ�b�r����' �  Z���3��E���K4�؊!RG��^U7]�����8Y�'c_:5S&:2�{z� >VD����զ���x���  �W�\J8�j��h�6�T2k_�zN"O�3�Ź�6f^�bϩ��2�r�A�:6Nm����Z�`I�k7D�˯��1��f���'l���L�o��H����;�M1� (D-^;�\�Ҽ���5WCƐ�v��_�j���6���' ��,��_��0Gu.B����y��BJk��ue�f��<�����1��>��Ѓ�:)�Ֆ��
�3IRP�E�9ܺ)��[�p��6�Mi��cG�ړ�ca��[r����?lf]�t�6j���F1ۚ���έ�\&Ck�=�%z�GN�
J@�7�r i��\/C�X+_ �`��ۮX��t�C�f����
�r�����ǗymE?�>㘛]V�A�${���$cȁZ�H���
!�Ln�$��f(�CO���&�)���ǎ�����3���1�0ݲ�َ���8)h�X�WPO��L��1�r�.�;3}9�9H�+�����ϵgތ;�䲩,5Ǩ�,1�R��9��S0��>����cȡm�ƝFrG	�C�SX��O�����8r�� |	���7����Ъ}��Z�&�E	����щ7G�1577�c����$�9�T Q�BAC;C���1��vJ�rM^9�
59h������	hush�I�48I�Z7@	nS��.�z����YK9��^g��Ec>W݁C�o�O	��V0
56߸���n=m�b�!��<�ˀ0P
��!>��w�!Xl���-�����[
f)M�g�}6����4��җ5��Ő�n�@���,R��9!����K5��ŐC[�hl�ͥI�LZ��4$�rMȉ��H���y���@�M�����7���Q$v��Hԇ�<r�t3]%��ޚ�D��_��B
^!�ޚ��=SH6u�2A��z�1�<�<h�K
]f�ҏ�k�)�Bs���5�qD�R�#�sR����C��5Ψ"�*W��P�.��� �'���{!1�T�hÍF�MD�F��%�!b�H�M�&�|MK��Xy+S��xT����r�ņ�,��T���|I�4>�i5�I���s�1����������\��沽r�uC��g�����7n�Ń
sۙ�K"�� \���`�̟��K	3I���'�c�뙱�7^��<�q\c�.�ą�J�G�������"�rh�Fy��V���Iba);1�}�j|�q̲��]����<�to��	����%�{J@�7��t��j.��!��=�b��!�B�&1�'h.����[:cfV�*t�V�_�ȓK��|o]���羖�6��q�Q�v�q~K�$��{PLkSs�^9�bc)����F=轞�Ş9�X5�O>�¾J����M��U�t����u56q4��Y�Q��җҩ�\[��-�j�����B/��L�KQ�a�d�i�D���hHx5�^�\ã����2x�{C���?��=/�� ����2�� �,�ܐ���R<ݎh}	���.Pϭ�t��$����`b�v �	�}�=M)},w��y
���H�V͕s1ԫA8@�&�҃x��\;���:����5H��p8 �$� �����b�������nV��1N�ͷq5�/������\0:Ǣý����c$����#�(�
Ƅ	h:�͚v8Hu��x,��Z�(5��h��Gk�E'>Y1/J���/�z������\�����c�������?�	��      �   �   x���� C�3*&c$aC����)�?���c����9�	gw.���=�>�;��<�L6�^�Z�n�6cO�	�2s~ZAUh�o�7T��������|=-��r����6\O����	׳�z�|=g�����'���@'0      �   ~   x�}�1�0Eg��U��N�Cp�.�J3�+q}�NPA�=�'�O`�͋�����?�h�t�,c�#�r�L���	Bvg���wy��{�z�z�?�5���~�| ؎����*��T��o�S@�7r�8�      �   �  x���Mn�0���)�L̛៸3�/dۍQ�M��\����C��@{	�F)N,�N
 )=��ÑZ��������Of1�}���C����ag؛ܲxPJ�$�Ĳ Y悶\bF��,�l֛�Y�3xFU�P� n�
���$���d��1N'�����%�'��*g�z�A�þ�$7D�X	х�g�#�B�Ə�����+���d�G�j�?y�6K�>3H3-'^*�J�fy��z�2��/�t���%� ���&'m���%g�����C�Q�X$��ͭ|)���.�#��n�}7�Mw���ۚ���yHV�B.��H����[}����հ���	>�}hk�G��L��$�<��/<X���1c�"Y�ܥ�k�\�h� ��������h:�8���c��+ɾw����A      �   z   x�3�tt����0�{.츰����.6\�p��¾��FFƺƺF&
V&&V�z�f��x���8C�]�8/̿����=��M`3���hZMͭLM�,��1ME������ vh<�      �   ~   x���1C���b�!嵗�_G�\H���O�GϠz�������\�����N��BJA(DW�^�yM&H��F��?vq0�8��+m<�}e����<q</�����R��╨xe��̏!      �   �  x���ˮ�����k�g'�BA�\(^Q$=QAE����~��wr&'��;�~�F����ۘ�O��}��
2{Q�����힋R�%�5�� ��g�?#�a�:�����$1��g7���ϋ����O��pX��$3?e��N�:��ғ���A��1?�Y��:8���g�%�9n��Oh�	�Oj�h�0��P41;)��]�	5��>\�k^sA��l��^�G�^�I��Ǘ$VdN�=|;��Nsn�1gS����y��J�x��|O��f{)�G��әZ:��|DE� �ӧ��
+ܝG�N�]��io�5�|ӓ�m\(a�PQ�[�a�td���
�����ϙ������>�����?��������2&uH9���� �9 �7��/�]��×�ޠP'|� ����"�җ�n�9����a/�a@P�aS_6��HQ2	���JD;NI�4A>�IDWT	 �y�A�+ $��G�?�T�"G ��� ��	я������t#��g����X}o��1;�����8?)gY��@��0���as��)1mS�xv�5O��1�#��_�!|%y�X��%�8�B���&i�z®;�f����~�_d���;��lp�:���)J��t.��s�O\w	�:)r�w.�9�]�����E_[�[4'��JS�ɑ����d*�o[�F�#]ҷ�o���$��)8����W���#)����u����9mŦ���i^P��q���ȋ�:��5	4
��s�!T�j�b��O /�B�e�e�}����FT3`o�me�MӾ�}��㦚Ak��RM��؎ǫ�$_<��|��mD��C�TI,����N\�t��묹�2�C���>��6��>���9���0����=Om嬗�нu���~Bz�X���u\AE����{�D�Gc��O��u�l+���	F��l1Qcn�����TIE��=�9
��&�PA%�EҌ���=lgП�VC�=��x�%4��@�;k1E����
����Jb���q�~�(�I�p0&������b�cox0��K��0�=�:�zWbvNB%��
�8��W�"S�J��Y����mj��k�,�M}K�FӍ��:$X):�h�6�
'�J��
	��D��H���;R�)�ț�:3��8�mqd޺�
��a6�ĺ?���Lk�6�r1��d��,fT:�	���%�X�XsF����E��t�HP�_�疵���S�N�Pn�w!;�4Y��@�J�����X�H��^$S�����b�~�<���*�8_��}��謲|`��'vc�;+���]Z�Q�G<*����(����ᢌё֗��I�A81;R�t�Z��'�Y��R���C'5rUsA�-\���!�mUG*a�$Q�aL�F��r/�&�h�)��#/(A����h�@�=��a�=�x�x>ϕ��\6v������)<9L�
�Ub�Tz��֒�0����wͥe5��<�\';V��b�|���Z��Z���h�JqA�v"��1���*�0�7�c23�,Kf�Y;���0��ի�'
/Ms�2;�E��q2ufW�[е���瀯��a��Ȫ�X��X�%��0�����H8_��Z�k�4�&7A�}k��{I�\�]���Hf󆦼��-��x��2̳�bĀ��t�m���2�qMߠ��"f�c��l����BM��\�k��43����:�����S�(��^E8��IW%��r,��AD؎     