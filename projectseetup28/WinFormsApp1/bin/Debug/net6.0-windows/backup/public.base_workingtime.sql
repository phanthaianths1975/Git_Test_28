PGDMP         .                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9 	    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            �            1259    243929    base_workingtime    TABLE     �  CREATE TABLE public.base_workingtime (
    portal_id bigint DEFAULT '0'::bigint NOT NULL,
    portal_code character varying DEFAULT ''::character varying,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    country_prefix character varying DEFAULT '+84'::character varying,
    member_created bigint DEFAULT '0'::bigint NOT NULL,
    member_updated bigint DEFAULT '0'::bigint,
    status smallint DEFAULT '1'::smallint NOT NULL,
    created_at bigint DEFAULT '0'::bigint NOT NULL,
    modified_at bigint DEFAULT '0'::bigint,
    base_workingtime_id integer NOT NULL,
    base_workingtime_name character varying DEFAULT ''::character varying NOT NULL,
    times character(11)[] DEFAULT '{}'::character(1)[] NOT NULL
);
 $   DROP TABLE public.base_workingtime;
       public         heap    postgres    false            �            1259    243945 (   base_workingtime_base_workingtime_id_seq    SEQUENCE     �   CREATE SEQUENCE public.base_workingtime_base_workingtime_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.base_workingtime_base_workingtime_id_seq;
       public          postgres    false    232            �           0    0 (   base_workingtime_base_workingtime_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.base_workingtime_base_workingtime_id_seq OWNED BY public.base_workingtime.base_workingtime_id;
          public          postgres    false    233            [           2604    246385 $   base_workingtime base_workingtime_id    DEFAULT     �   ALTER TABLE ONLY public.base_workingtime ALTER COLUMN base_workingtime_id SET DEFAULT nextval('public.base_workingtime_base_workingtime_id_seq'::regclass);
 S   ALTER TABLE public.base_workingtime ALTER COLUMN base_workingtime_id DROP DEFAULT;
       public          postgres    false    233    232            _           2606    246902 $   base_workingtime base_workingtime_id 
   CONSTRAINT     s   ALTER TABLE ONLY public.base_workingtime
    ADD CONSTRAINT base_workingtime_id PRIMARY KEY (base_workingtime_id);
 N   ALTER TABLE ONLY public.base_workingtime DROP CONSTRAINT base_workingtime_id;
       public            postgres    false    232           