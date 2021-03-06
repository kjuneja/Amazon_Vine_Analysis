PGDMP     )    )            
    y            amazon_reviews    13.3    13.3     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24750    amazon_reviews    DATABASE     Y   CREATE DATABASE amazon_reviews WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE amazon_reviews;
                postgres    false            ?            1259    24767    customers_table    TABLE     f   CREATE TABLE public.customers_table (
    customer_id integer NOT NULL,
    customer_count integer
);
 #   DROP TABLE public.customers_table;
       public         heap    postgres    false            ?            1259    24759    products_table    TABLE     ]   CREATE TABLE public.products_table (
    product_id text NOT NULL,
    product_title text
);
 "   DROP TABLE public.products_table;
       public         heap    postgres    false            ?            1259    24751    review_id_table    TABLE     ?   CREATE TABLE public.review_id_table (
    review_id text NOT NULL,
    customer_id integer,
    product_id text,
    product_parent integer,
    review_date date
);
 #   DROP TABLE public.review_id_table;
       public         heap    postgres    false            ?            1259    24772 
   vine_table    TABLE     ?   CREATE TABLE public.vine_table (
    review_id text NOT NULL,
    star_rating integer,
    helpful_votes integer,
    total_votes integer,
    vine text,
    verified_purchase text
);
    DROP TABLE public.vine_table;
       public         heap    postgres    false            ?          0    24767    customers_table 
   TABLE DATA           F   COPY public.customers_table (customer_id, customer_count) FROM stdin;
    public          postgres    false    202          ?          0    24759    products_table 
   TABLE DATA           C   COPY public.products_table (product_id, product_title) FROM stdin;
    public          postgres    false    201   1       ?          0    24751    review_id_table 
   TABLE DATA           j   COPY public.review_id_table (review_id, customer_id, product_id, product_parent, review_date) FROM stdin;
    public          postgres    false    200   N       ?          0    24772 
   vine_table 
   TABLE DATA           q   COPY public.vine_table (review_id, star_rating, helpful_votes, total_votes, vine, verified_purchase) FROM stdin;
    public          postgres    false    203   k       =           2606    24771 $   customers_table customers_table_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.customers_table
    ADD CONSTRAINT customers_table_pkey PRIMARY KEY (customer_id);
 N   ALTER TABLE ONLY public.customers_table DROP CONSTRAINT customers_table_pkey;
       public            postgres    false    202            ;           2606    24766 "   products_table products_table_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.products_table
    ADD CONSTRAINT products_table_pkey PRIMARY KEY (product_id);
 L   ALTER TABLE ONLY public.products_table DROP CONSTRAINT products_table_pkey;
       public            postgres    false    201            9           2606    24758 $   review_id_table review_id_table_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.review_id_table
    ADD CONSTRAINT review_id_table_pkey PRIMARY KEY (review_id);
 N   ALTER TABLE ONLY public.review_id_table DROP CONSTRAINT review_id_table_pkey;
       public            postgres    false    200            ?           2606    24779    vine_table vine_table_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.vine_table
    ADD CONSTRAINT vine_table_pkey PRIMARY KEY (review_id);
 D   ALTER TABLE ONLY public.vine_table DROP CONSTRAINT vine_table_pkey;
       public            postgres    false    203            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     