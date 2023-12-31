PGDMP     
    0                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            N           1259    245411    partner_order    TABLE     &  CREATE TABLE public.partner_order (
    request_id bigint NOT NULL,
    transport_id character varying DEFAULT '1'::character varying NOT NULL,
    tracking_number character varying DEFAULT ''::character varying NOT NULL,
    cod real DEFAULT '0'::real NOT NULL,
    plength real DEFAULT '0'::real NOT NULL,
    width real DEFAULT '0'::real NOT NULL,
    height real DEFAULT '0'::real NOT NULL,
    weight real DEFAULT '0'::real NOT NULL,
    status character varying DEFAULT ''::character varying NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    reason character varying DEFAULT ''::character varying NOT NULL,
    id integer NOT NULL,
    shipping_fee real DEFAULT '0'::real NOT NULL,
    cod_fee real DEFAULT '0'::real NOT NULL,
    return_fee real DEFAULT '0'::real NOT NULL,
    insurance_fee real DEFAULT '0'::real NOT NULL,
    total_fee real DEFAULT '0'::real NOT NULL,
    product_price real DEFAULT '0'::real NOT NULL
);
 !   DROP TABLE public.partner_order;
       public         heap    postgres    false            O           1259    245434    partner_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.partner_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.partner_order_id_seq;
       public          postgres    false    334                        0    0    partner_order_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.partner_order_id_seq OWNED BY public.partner_order.id;
          public          postgres    false    335            ^           2604    246410    partner_order id    DEFAULT     t   ALTER TABLE ONLY public.partner_order ALTER COLUMN id SET DEFAULT nextval('public.partner_order_id_seq'::regclass);
 ?   ALTER TABLE public.partner_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    335    334            f           2606    246582 ,   partner_order PK_671df97aebd4d722514f4c9d180 
   CONSTRAINT     l   ALTER TABLE ONLY public.partner_order
    ADD CONSTRAINT "PK_671df97aebd4d722514f4c9d180" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.partner_order DROP CONSTRAINT "PK_671df97aebd4d722514f4c9d180";
       public            postgres    false    334            h           2606    246784 ,   partner_order UQ_60a7b291b92b2e3138ad8796a0c 
   CONSTRAINT     �   ALTER TABLE ONLY public.partner_order
    ADD CONSTRAINT "UQ_60a7b291b92b2e3138ad8796a0c" UNIQUE (request_id, transport_id, tracking_number);
 X   ALTER TABLE ONLY public.partner_order DROP CONSTRAINT "UQ_60a7b291b92b2e3138ad8796a0c";
       public            postgres    false    334    334    334           