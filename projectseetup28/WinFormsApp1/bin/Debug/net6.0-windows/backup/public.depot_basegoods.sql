PGDMP     1    .                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    244145    depot_basegoods    TABLE     �  CREATE TABLE public.depot_basegoods (
    portal_id bigint DEFAULT '0'::bigint,
    portal_code character varying DEFAULT ''::character varying,
    customer_id bigint DEFAULT '0'::bigint,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    country_prefix character varying DEFAULT '+84'::character varying,
    member_created bigint DEFAULT '0'::bigint,
    member_updated bigint DEFAULT '0'::bigint,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint,
    basegood_id bigint NOT NULL,
    request_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    good_name character varying NOT NULL,
    good_description character varying DEFAULT ''::character varying NOT NULL,
    good_maker character varying DEFAULT ''::character varying NOT NULL,
    good_origin character varying DEFAULT ''::character varying NOT NULL,
    good_shape character varying DEFAULT ''::character varying NOT NULL,
    good_height real DEFAULT '0.001'::real NOT NULL,
    good_width real DEFAULT '0'::real NOT NULL,
    good_length real DEFAULT '0'::real NOT NULL,
    good_weight real DEFAULT '0'::real NOT NULL,
    good_color character varying DEFAULT ''::character varying NOT NULL,
    good_class character varying DEFAULT ''::character varying NOT NULL,
    handling_unit_id smallint DEFAULT '-1'::smallint NOT NULL,
    packaging_unit_id smallint DEFAULT '1'::smallint NOT NULL,
    good_specific character varying DEFAULT ''::character varying NOT NULL,
    good_image character varying DEFAULT ''::character varying NOT NULL,
    basegood_unit_id smallint DEFAULT '-1'::smallint NOT NULL
);
 #   DROP TABLE public.depot_basegoods;
       public         heap    postgres    false            m           2606    246506 .   depot_basegoods PK_1b4feb9148977a717ff1efd9952 
   CONSTRAINT     w   ALTER TABLE ONLY public.depot_basegoods
    ADD CONSTRAINT "PK_1b4feb9148977a717ff1efd9952" PRIMARY KEY (basegood_id);
 Z   ALTER TABLE ONLY public.depot_basegoods DROP CONSTRAINT "PK_1b4feb9148977a717ff1efd9952";
       public            postgres    false    253            o           2606    246718 .   depot_basegoods UQ_1b4feb9148977a717ff1efd9952 
   CONSTRAINT     r   ALTER TABLE ONLY public.depot_basegoods
    ADD CONSTRAINT "UQ_1b4feb9148977a717ff1efd9952" UNIQUE (basegood_id);
 Z   ALTER TABLE ONLY public.depot_basegoods DROP CONSTRAINT "UQ_1b4feb9148977a717ff1efd9952";
       public            postgres    false    253           