PGDMP     !    .                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    244000    cms_notification    TABLE     *  CREATE TABLE public.cms_notification (
    cms_notification_id bigint NOT NULL,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    member_id bigint DEFAULT '0'::bigint NOT NULL,
    message character varying DEFAULT ''::character varying NOT NULL,
    title character varying DEFAULT ''::character varying NOT NULL,
    type character varying DEFAULT ''::character varying NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    request_provider_id bigint DEFAULT '0'::bigint NOT NULL
);
 $   DROP TABLE public.cms_notification;
       public         heap    postgres    false            [           2606    246500 /   cms_notification PK_120fb2cc1d8da3eaa333d2d96b5 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_notification
    ADD CONSTRAINT "PK_120fb2cc1d8da3eaa333d2d96b5" PRIMARY KEY (cms_notification_id);
 [   ALTER TABLE ONLY public.cms_notification DROP CONSTRAINT "PK_120fb2cc1d8da3eaa333d2d96b5";
       public            postgres    false    237            ]           2606    246712 /   cms_notification UQ_120fb2cc1d8da3eaa333d2d96b5 
   CONSTRAINT     {   ALTER TABLE ONLY public.cms_notification
    ADD CONSTRAINT "UQ_120fb2cc1d8da3eaa333d2d96b5" UNIQUE (cms_notification_id);
 [   ALTER TABLE ONLY public.cms_notification DROP CONSTRAINT "UQ_120fb2cc1d8da3eaa333d2d96b5";
       public            postgres    false    237           