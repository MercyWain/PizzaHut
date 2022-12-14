PGDMP     *                
    z            postgres    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE     ?   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3351                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false                       0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16413    Ingredients    TABLE     ?   CREATE TABLE public."Ingredients" (
    "Type" text,
    "Ingredient_ID" smallint NOT NULL,
    "Quantity (g)" integer,
    "Pizza_ID" integer
);
 !   DROP TABLE public."Ingredients";
       public         heap    postgres    false            ?            1259    16408    Pizza    TABLE        CREATE TABLE public."Pizza" (
    "Type" text,
    "Pizza_ID" integer NOT NULL,
    "Price" integer,
    "Sales_ID" integer
);
    DROP TABLE public."Pizza";
       public         heap    postgres    false            ?            1259    16423    Sales    TABLE     ?   CREATE TABLE public."Sales" (
    "Sales_ID" bigint NOT NULL,
    "Date" date,
    "Time" time without time zone,
    "Quantity Sold" integer,
    "Server_ID" bigint
);
    DROP TABLE public."Sales";
       public         heap    postgres    false            ?            1259    16418    Server    TABLE     j   CREATE TABLE public."Server" (
    "Name" text,
    "Server_ID" bigint NOT NULL,
    "Sales_ID" bigint
);
    DROP TABLE public."Server";
       public         heap    postgres    false            ?            1259    16428    Supplier    TABLE     ?   CREATE TABLE public."Supplier" (
    "Supplier_ID" bigint NOT NULL,
    "Name" text,
    "Address" character varying,
    "Ingredient_ID" bigint
);
    DROP TABLE public."Supplier";
       public         heap    postgres    false                      0    16413    Ingredients 
   TABLE DATA           \   COPY public."Ingredients" ("Type", "Ingredient_ID", "Quantity (g)", "Pizza_ID") FROM stdin;
    public          postgres    false    216                    0    16408    Pizza 
   TABLE DATA           J   COPY public."Pizza" ("Type", "Pizza_ID", "Price", "Sales_ID") FROM stdin;
    public          postgres    false    215   ?                 0    16423    Sales 
   TABLE DATA           [   COPY public."Sales" ("Sales_ID", "Date", "Time", "Quantity Sold", "Server_ID") FROM stdin;
    public          postgres    false    218   ?                 0    16418    Server 
   TABLE DATA           C   COPY public."Server" ("Name", "Server_ID", "Sales_ID") FROM stdin;
    public          postgres    false    217   S                 0    16428    Supplier 
   TABLE DATA           W   COPY public."Supplier" ("Supplier_ID", "Name", "Address", "Ingredient_ID") FROM stdin;
    public          postgres    false    219   ?       x           2606    16529    Ingredients Ingredients_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public."Ingredients"
    ADD CONSTRAINT "Ingredients_pkey" PRIMARY KEY ("Ingredient_ID");
 J   ALTER TABLE ONLY public."Ingredients" DROP CONSTRAINT "Ingredients_pkey";
       public            postgres    false    216            v           2606    16468    Pizza Pizza_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Pizza"
    ADD CONSTRAINT "Pizza_pkey" PRIMARY KEY ("Pizza_ID");
 >   ALTER TABLE ONLY public."Pizza" DROP CONSTRAINT "Pizza_pkey";
       public            postgres    false    215            |           2606    16427    Sales Sales_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Sales"
    ADD CONSTRAINT "Sales_pkey" PRIMARY KEY ("Sales_ID");
 >   ALTER TABLE ONLY public."Sales" DROP CONSTRAINT "Sales_pkey";
       public            postgres    false    218            z           2606    16422    Server Server_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Server"
    ADD CONSTRAINT "Server_pkey" PRIMARY KEY ("Server_ID");
 @   ALTER TABLE ONLY public."Server" DROP CONSTRAINT "Server_pkey";
       public            postgres    false    217            ~           2606    16434    Supplier Supplier_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Supplier"
    ADD CONSTRAINT "Supplier_pkey" PRIMARY KEY ("Supplier_ID");
 D   ALTER TABLE ONLY public."Supplier" DROP CONSTRAINT "Supplier_pkey";
       public            postgres    false    219               e   x?E?I
?0?=??L6??EÈ?f???] x-???4?E2?a??H)?k?a-8|?Ѹ??ù?|?i??fx_?@i9!?W?ԭ?1?O?ٵ-l?w?b[          P   x??--?(????4400?44?42?r??L?N?	?q?pq9%&??L9?8?L?R
R???2A?Ɯ?? U1z\\\ ZV         O   x?=??	?0Cѳ?K?%ۅf???G???MNgg?t??	??Z4#-?(?j??cf-U'Aq??>??????{? 4J?         l   x??K
?0 ???)??|?t??? ]?l ???T???????Jg? f,{t??~4??0^=??C?@UAM?{??.[/03?S?p????h+??`?s??	?w?p         ^   x???
? ?????B??6&Yk44??	E? ????I???W???38????KL?<b)??1???[=?????x???w:0p?j3B)?"?	??     