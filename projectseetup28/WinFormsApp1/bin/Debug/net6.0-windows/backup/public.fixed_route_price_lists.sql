PGDMP         /                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            %           1259    244817    fixed_route_price_lists    TABLE       CREATE TABLE public.fixed_route_price_lists (
    route_seq_id bigint DEFAULT '1'::bigint NOT NULL,
    fixed_route_id bigint DEFAULT '1'::bigint NOT NULL,
    client_id bigint DEFAULT '1'::bigint NOT NULL,
    effort_condition character varying DEFAULT ''::character varying NOT NULL,
    request_provider_id bigint DEFAULT '1'::bigint NOT NULL,
    id integer NOT NULL,
    vat_percent real DEFAULT '0'::real NOT NULL,
    effort_id smallint DEFAULT '1'::smallint NOT NULL,
    default_cost real DEFAULT '0'::real NOT NULL,
    status smallint DEFAULT '1'::smallint NOT NULL,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint NOT NULL
);
 +   DROP TABLE public.fixed_route_price_lists;
       public         heap    postgres    false            &           1259    244835    fixed_route_price_lists_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fixed_route_price_lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.fixed_route_price_lists_id_seq;
       public          postgres    false    293            �           0    0    fixed_route_price_lists_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.fixed_route_price_lists_id_seq OWNED BY public.fixed_route_price_lists.id;
          public          postgres    false    294            W           2604    246399    fixed_route_price_lists id    DEFAULT     �   ALTER TABLE ONLY public.fixed_route_price_lists ALTER COLUMN id SET DEFAULT nextval('public.fixed_route_price_lists_id_seq'::regclass);
 I   ALTER TABLE public.fixed_route_price_lists ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    294    293            a           2606    246688 6   fixed_route_price_lists PK_f858dc3d9f83333680be680ec0b 
   CONSTRAINT     v   ALTER TABLE ONLY public.fixed_route_price_lists
    ADD CONSTRAINT "PK_f858dc3d9f83333680be680ec0b" PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.fixed_route_price_lists DROP CONSTRAINT "PK_f858dc3d9f83333680be680ec0b";
       public            postgres    false    293            c           2606    246852 6   fixed_route_price_lists UQ_b052f2fa947bf0a0c3a5649a09d 
   CONSTRAINT     �   ALTER TABLE ONLY public.fixed_route_price_lists
    ADD CONSTRAINT "UQ_b052f2fa947bf0a0c3a5649a09d" UNIQUE (fixed_route_id, route_seq_id, effort_id);
 b   ALTER TABLE ONLY public.fixed_route_price_lists DROP CONSTRAINT "UQ_b052f2fa947bf0a0c3a5649a09d";
       public            postgres    false    293    293    293           