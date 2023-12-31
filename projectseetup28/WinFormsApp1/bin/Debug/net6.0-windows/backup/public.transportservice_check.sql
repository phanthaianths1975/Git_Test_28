PGDMP     6    0                {            dev24_source %   14.10 (Ubuntu 14.10-0ubuntu0.22.04.1)    14.9 
    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    243645    dev24_source    DATABASE     a   CREATE DATABASE dev24_source WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE dev24_source;
                postgres    false            x           1259    246155    transportservice_check    TABLE     �  CREATE TABLE public.transportservice_check (
    portal_id bigint DEFAULT '0'::bigint,
    client_id bigint DEFAULT '0'::bigint NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    request_id bigint NOT NULL,
    transport_id character varying DEFAULT ''::character varying NOT NULL,
    order_code_of_provider character varying DEFAULT ''::character varying NOT NULL,
    request_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    service_provider_id bigint DEFAULT '0'::bigint NOT NULL,
    service_id bigint DEFAULT '0'::bigint NOT NULL,
    distance real DEFAULT '0'::real NOT NULL,
    package_name character varying DEFAULT ''::character varying NOT NULL,
    note character varying DEFAULT ''::character varying NOT NULL,
    count_of_parcels smallint DEFAULT '1'::smallint NOT NULL,
    rlength real DEFAULT '0'::real NOT NULL,
    rwidth real DEFAULT '0'::real NOT NULL,
    rheight real DEFAULT '0'::real NOT NULL,
    rweight real DEFAULT '0'::real NOT NULL,
    rvolume real DEFAULT '0'::real NOT NULL,
    cod_value real DEFAULT '0'::real NOT NULL,
    cod_fee real DEFAULT '0'::real NOT NULL,
    insurance_fee real DEFAULT '0'::real NOT NULL,
    return_fee real DEFAULT '0'::real NOT NULL,
    warehouse_fee real DEFAULT '0'::real NOT NULL,
    packing_fee real DEFAULT '0'::real NOT NULL,
    fragile_fee real DEFAULT '0'::real NOT NULL,
    created_at bigint DEFAULT '0'::bigint,
    finished_at bigint DEFAULT '0'::bigint NOT NULL,
    income_cod_value real DEFAULT '0'::real NOT NULL,
    income_cod_fee real DEFAULT '0'::real NOT NULL,
    income_insurance_fee real DEFAULT '0'::real NOT NULL,
    income_return_fee real DEFAULT '0'::real NOT NULL,
    income_warehouse_fee real DEFAULT '0'::real NOT NULL,
    income_packing_fee real DEFAULT '0'::real NOT NULL,
    income_changed_addr_fee real DEFAULT '0'::real NOT NULL,
    income_fragile_fee real DEFAULT '0'::real NOT NULL,
    id integer NOT NULL,
    tracking_number character varying DEFAULT ''::character varying NOT NULL,
    member_id bigint DEFAULT '0'::bigint NOT NULL,
    extra_service_id bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    income_rweight real DEFAULT '0'::real NOT NULL,
    request_total_price real DEFAULT '0'::real NOT NULL,
    income_request_total_price real DEFAULT '0'::real NOT NULL,
    external_code character varying DEFAULT ''::character varying NOT NULL,
    member_created bigint DEFAULT '0'::bigint,
    modified_at bigint DEFAULT '0'::bigint,
    shipping_fee real DEFAULT '0'::real NOT NULL,
    income_shipping_fee real DEFAULT '0'::real NOT NULL,
    changed_addr_fee real DEFAULT '0'::real NOT NULL,
    request_status smallint DEFAULT '0'::smallint NOT NULL,
    pickup_time bigint DEFAULT '0'::bigint NOT NULL,
    sender_phone character varying DEFAULT ''::character varying NOT NULL,
    sender_name character varying DEFAULT ''::character varying NOT NULL,
    pickup_lat real DEFAULT '0'::real NOT NULL,
    pickup_lon real DEFAULT '0'::real NOT NULL,
    pickup_address character varying DEFAULT ''::character varying NOT NULL,
    pickup_aid bigint DEFAULT '0'::bigint NOT NULL,
    pickup_pid bigint DEFAULT '0'::bigint NOT NULL,
    pickup_did bigint DEFAULT '0'::bigint NOT NULL,
    pickup_wid bigint DEFAULT '0'::bigint NOT NULL,
    drop_aid bigint DEFAULT '0'::bigint NOT NULL,
    drop_pid bigint DEFAULT '0'::bigint NOT NULL,
    drop_did bigint DEFAULT '0'::bigint NOT NULL,
    drop_wid bigint DEFAULT '0'::bigint NOT NULL,
    receiver_phone character varying DEFAULT ''::character varying NOT NULL,
    receiver_name character varying DEFAULT ''::character varying NOT NULL,
    drop_lat real DEFAULT '0'::real NOT NULL,
    drop_lon real DEFAULT '0'::real NOT NULL,
    drop_address character varying DEFAULT ''::character varying NOT NULL
);
 *   DROP TABLE public.transportservice_check;
       public         heap    postgres    false            y           1259    246226    transportservice_check_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transportservice_check_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.transportservice_check_id_seq;
       public          postgres    false    376            0           0    0    transportservice_check_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.transportservice_check_id_seq OWNED BY public.transportservice_check.id;
          public          postgres    false    377            �           2604    246423    transportservice_check id    DEFAULT     �   ALTER TABLE ONLY public.transportservice_check ALTER COLUMN id SET DEFAULT nextval('public.transportservice_check_id_seq'::regclass);
 H   ALTER TABLE public.transportservice_check ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    377    376            �           2606    246528 5   transportservice_check PK_2c465e594241d231ac9f7a591e2 
   CONSTRAINT     u   ALTER TABLE ONLY public.transportservice_check
    ADD CONSTRAINT "PK_2c465e594241d231ac9f7a591e2" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public.transportservice_check DROP CONSTRAINT "PK_2c465e594241d231ac9f7a591e2";
       public            postgres    false    376            �           2606    246706 5   transportservice_check UQ_096eeec46ee39d284908654fbf2 
   CONSTRAINT     �   ALTER TABLE ONLY public.transportservice_check
    ADD CONSTRAINT "UQ_096eeec46ee39d284908654fbf2" UNIQUE (request_id, transport_id);
 a   ALTER TABLE ONLY public.transportservice_check DROP CONSTRAINT "UQ_096eeec46ee39d284908654fbf2";
       public            postgres    false    376    376           