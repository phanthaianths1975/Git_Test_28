PGDMP         1                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    243890    base_vehicles    TABLE     5  CREATE TABLE public.base_vehicles (
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
    resource_id bigint NOT NULL,
    cont_weight real DEFAULT '0'::real NOT NULL,
    handling_unit_ids character varying DEFAULT ''::character varying NOT NULL,
    vheight real DEFAULT '0'::real NOT NULL,
    vlength real DEFAULT '0'::real NOT NULL,
    vwidth real DEFAULT '0'::real NOT NULL,
    max_weight real DEFAULT '0'::real NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    "group" bigint DEFAULT '0'::bigint NOT NULL,
    group_name character varying DEFAULT ''::character varying NOT NULL
);
 !   DROP TABLE public.base_vehicles;
       public         heap    postgres    false            f           2606    246578 ,   base_vehicles PK_65f45b2c48d576c64ab3c690838 
   CONSTRAINT     u   ALTER TABLE ONLY public.base_vehicles
    ADD CONSTRAINT "PK_65f45b2c48d576c64ab3c690838" PRIMARY KEY (resource_id);
 X   ALTER TABLE ONLY public.base_vehicles DROP CONSTRAINT "PK_65f45b2c48d576c64ab3c690838";
       public            postgres    false    229            h           2606    246790 ,   base_vehicles UQ_65f45b2c48d576c64ab3c690838 
   CONSTRAINT     p   ALTER TABLE ONLY public.base_vehicles
    ADD CONSTRAINT "UQ_65f45b2c48d576c64ab3c690838" UNIQUE (resource_id);
 X   ALTER TABLE ONLY public.base_vehicles DROP CONSTRAINT "UQ_65f45b2c48d576c64ab3c690838";
       public            postgres    false    229           