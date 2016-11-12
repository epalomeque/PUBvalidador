PGDMP         9            
    t            PUB_validador    9.4.9    9.4.4 �   �	           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                       false            �	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �	           1262    33087    PUB_validador    DATABASE     r   CREATE DATABASE "PUB_validador" WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE "PUB_validador";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            �	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5            �            3079    11861    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    243            �            1259    49534 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    5            �            1259    49532    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    179    5            �	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    178            �            1259    49544    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    5            �            1259    49542    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    181    5            �	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    180            �            1259    49524    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    5            �            1259    49522    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    5    177            �	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    176            �            1259    49554 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    5            �            1259    49564    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    5            �            1259    49562    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    5    185            �	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    184            �            1259    49552    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    5    183            �	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    182            �            1259    49574    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    5            �            1259    49572 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    5    187            �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    186            �            1259    49652 #   consultaCatalogos_cat_anioejercicio    TABLE     �   CREATE TABLE "consultaCatalogos_cat_anioejercicio" (
    id integer NOT NULL,
    "AnioEjercicio" character varying(4) NOT NULL
);
 9   DROP TABLE public."consultaCatalogos_cat_anioejercicio";
       public         postgres    false    5            �            1259    49650 *   consultaCatalogos_cat_anioejercicio_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_anioejercicio_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."consultaCatalogos_cat_anioejercicio_id_seq";
       public       postgres    false    191    5            �	           0    0 *   consultaCatalogos_cat_anioejercicio_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "consultaCatalogos_cat_anioejercicio_id_seq" OWNED BY "consultaCatalogos_cat_anioejercicio".id;
            public       postgres    false    190            �            1259    49660 "   consultaCatalogos_cat_asentamiento    TABLE     �   CREATE TABLE "consultaCatalogos_cat_asentamiento" (
    id integer NOT NULL,
    "identAsentamiento" integer NOT NULL,
    "nombreAsentamiento" character varying(50) NOT NULL
);
 8   DROP TABLE public."consultaCatalogos_cat_asentamiento";
       public         postgres    false    5            �            1259    49658 )   consultaCatalogos_cat_asentamiento_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_asentamiento_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."consultaCatalogos_cat_asentamiento_id_seq";
       public       postgres    false    193    5            �	           0    0 )   consultaCatalogos_cat_asentamiento_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE "consultaCatalogos_cat_asentamiento_id_seq" OWNED BY "consultaCatalogos_cat_asentamiento".id;
            public       postgres    false    192            �            1259    49668 "   consultaCatalogos_cat_codigopostal    TABLE     �   CREATE TABLE "consultaCatalogos_cat_codigopostal" (
    id integer NOT NULL,
    "claveCP" integer NOT NULL,
    "idLocalidad_id" integer NOT NULL
);
 8   DROP TABLE public."consultaCatalogos_cat_codigopostal";
       public         postgres    false    5            �            1259    49666 )   consultaCatalogos_cat_codigopostal_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_codigopostal_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."consultaCatalogos_cat_codigopostal_id_seq";
       public       postgres    false    5    195            �	           0    0 )   consultaCatalogos_cat_codigopostal_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE "consultaCatalogos_cat_codigopostal_id_seq" OWNED BY "consultaCatalogos_cat_codigopostal".id;
            public       postgres    false    194            �            1259    49676 "   consultaCatalogos_cat_dependencias    TABLE     �   CREATE TABLE "consultaCatalogos_cat_dependencias" (
    id integer NOT NULL,
    "identDependencia" character varying(2) NOT NULL,
    "nombreDependencia" character varying(150) NOT NULL
);
 8   DROP TABLE public."consultaCatalogos_cat_dependencias";
       public         postgres    false    5            �            1259    49674 )   consultaCatalogos_cat_dependencias_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_dependencias_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."consultaCatalogos_cat_dependencias_id_seq";
       public       postgres    false    197    5            �	           0    0 )   consultaCatalogos_cat_dependencias_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE "consultaCatalogos_cat_dependencias_id_seq" OWNED BY "consultaCatalogos_cat_dependencias".id;
            public       postgres    false    196            �            1259    49684    consultaCatalogos_cat_edocivil    TABLE     �   CREATE TABLE "consultaCatalogos_cat_edocivil" (
    id integer NOT NULL,
    "identEdoCivil" character varying(2) NOT NULL,
    "nombreEdoCivil" character varying(14) NOT NULL
);
 4   DROP TABLE public."consultaCatalogos_cat_edocivil";
       public         postgres    false    5            �            1259    49682 %   consultaCatalogos_cat_edocivil_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_edocivil_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."consultaCatalogos_cat_edocivil_id_seq";
       public       postgres    false    5    199            �	           0    0 %   consultaCatalogos_cat_edocivil_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "consultaCatalogos_cat_edocivil_id_seq" OWNED BY "consultaCatalogos_cat_edocivil".id;
            public       postgres    false    198            �            1259    49692    consultaCatalogos_cat_estados    TABLE     �   CREATE TABLE "consultaCatalogos_cat_estados" (
    id integer NOT NULL,
    "identEstado" integer NOT NULL,
    "nombreEstado" character varying(25) NOT NULL
);
 3   DROP TABLE public."consultaCatalogos_cat_estados";
       public         postgres    false    5            �            1259    49690 $   consultaCatalogos_cat_estados_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_estados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."consultaCatalogos_cat_estados_id_seq";
       public       postgres    false    201    5            �	           0    0 $   consultaCatalogos_cat_estados_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "consultaCatalogos_cat_estados_id_seq" OWNED BY "consultaCatalogos_cat_estados".id;
            public       postgres    false    200            �            1259    49700     consultaCatalogos_cat_frecuencia    TABLE     �   CREATE TABLE "consultaCatalogos_cat_frecuencia" (
    id integer NOT NULL,
    "identFrecuencia" character varying(2) NOT NULL,
    "nombreFrecuencia" character varying(15) NOT NULL,
    "descripFrecuencia" character varying(45) NOT NULL
);
 6   DROP TABLE public."consultaCatalogos_cat_frecuencia";
       public         postgres    false    5            �            1259    49698 '   consultaCatalogos_cat_frecuencia_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_frecuencia_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."consultaCatalogos_cat_frecuencia_id_seq";
       public       postgres    false    5    203            �	           0    0 '   consultaCatalogos_cat_frecuencia_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE "consultaCatalogos_cat_frecuencia_id_seq" OWNED BY "consultaCatalogos_cat_frecuencia".id;
            public       postgres    false    202            �            1259    49708    consultaCatalogos_cat_fuentes    TABLE     �   CREATE TABLE "consultaCatalogos_cat_fuentes" (
    id integer NOT NULL,
    "identFuentes" character varying(3) NOT NULL,
    "descripcionFuentes" character varying(35) NOT NULL
);
 3   DROP TABLE public."consultaCatalogos_cat_fuentes";
       public         postgres    false    5            �            1259    49706 $   consultaCatalogos_cat_fuentes_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_fuentes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public."consultaCatalogos_cat_fuentes_id_seq";
       public       postgres    false    5    205            �	           0    0 $   consultaCatalogos_cat_fuentes_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "consultaCatalogos_cat_fuentes_id_seq" OWNED BY "consultaCatalogos_cat_fuentes".id;
            public       postgres    false    204            �            1259    49716 $   consultaCatalogos_cat_identificacion    TABLE     �   CREATE TABLE "consultaCatalogos_cat_identificacion" (
    id integer NOT NULL,
    "identIdentificacion" character varying(2) NOT NULL,
    "nombreIdentificacion" character varying(70) NOT NULL
);
 :   DROP TABLE public."consultaCatalogos_cat_identificacion";
       public         postgres    false    5            �            1259    49714 +   consultaCatalogos_cat_identificacion_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_identificacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."consultaCatalogos_cat_identificacion_id_seq";
       public       postgres    false    207    5            �	           0    0 +   consultaCatalogos_cat_identificacion_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE "consultaCatalogos_cat_identificacion_id_seq" OWNED BY "consultaCatalogos_cat_identificacion".id;
            public       postgres    false    206            �            1259    49724    consultaCatalogos_cat_localidad    TABLE     �   CREATE TABLE "consultaCatalogos_cat_localidad" (
    id integer NOT NULL,
    "identLocalidad" integer NOT NULL,
    "nombreLocalidad" character varying(50) NOT NULL,
    "idMunicipio_id" integer NOT NULL
);
 5   DROP TABLE public."consultaCatalogos_cat_localidad";
       public         postgres    false    5            �            1259    49722 &   consultaCatalogos_cat_localidad_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_localidad_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."consultaCatalogos_cat_localidad_id_seq";
       public       postgres    false    209    5            �	           0    0 &   consultaCatalogos_cat_localidad_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "consultaCatalogos_cat_localidad_id_seq" OWNED BY "consultaCatalogos_cat_localidad".id;
            public       postgres    false    208            �            1259    49732    consultaCatalogos_cat_mes    TABLE     v   CREATE TABLE "consultaCatalogos_cat_mes" (
    id integer NOT NULL,
    "nombreMes" character varying(12) NOT NULL
);
 /   DROP TABLE public."consultaCatalogos_cat_mes";
       public         postgres    false    5            �            1259    49730     consultaCatalogos_cat_mes_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_mes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public."consultaCatalogos_cat_mes_id_seq";
       public       postgres    false    5    211            �	           0    0     consultaCatalogos_cat_mes_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE "consultaCatalogos_cat_mes_id_seq" OWNED BY "consultaCatalogos_cat_mes".id;
            public       postgres    false    210            �            1259    49740    consultaCatalogos_cat_municipio    TABLE     �   CREATE TABLE "consultaCatalogos_cat_municipio" (
    id integer NOT NULL,
    "identMunicipio" integer NOT NULL,
    "nombreMunicipio" character varying(25) NOT NULL,
    "idEstado_id" integer NOT NULL
);
 5   DROP TABLE public."consultaCatalogos_cat_municipio";
       public         postgres    false    5            �            1259    49738 &   consultaCatalogos_cat_municipio_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_municipio_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."consultaCatalogos_cat_municipio_id_seq";
       public       postgres    false    5    213            �	           0    0 &   consultaCatalogos_cat_municipio_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "consultaCatalogos_cat_municipio_id_seq" OWNED BY "consultaCatalogos_cat_municipio".id;
            public       postgres    false    212            �            1259    49748     consultaCatalogos_cat_parentesco    TABLE     �   CREATE TABLE "consultaCatalogos_cat_parentesco" (
    id integer NOT NULL,
    "identParentesco" character varying(2) NOT NULL,
    "nombreParentesco" character varying(20) NOT NULL
);
 6   DROP TABLE public."consultaCatalogos_cat_parentesco";
       public         postgres    false    5            �            1259    49746 '   consultaCatalogos_cat_parentesco_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_parentesco_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."consultaCatalogos_cat_parentesco_id_seq";
       public       postgres    false    215    5            �	           0    0 '   consultaCatalogos_cat_parentesco_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE "consultaCatalogos_cat_parentesco_id_seq" OWNED BY "consultaCatalogos_cat_parentesco".id;
            public       postgres    false    214            �            1259    49756    consultaCatalogos_cat_periodos    TABLE     �   CREATE TABLE "consultaCatalogos_cat_periodos" (
    id integer NOT NULL,
    "identPeriodo" character varying(2) NOT NULL,
    "nombrePeriodo" character varying(20) NOT NULL
);
 4   DROP TABLE public."consultaCatalogos_cat_periodos";
       public         postgres    false    5            �            1259    49754 %   consultaCatalogos_cat_periodos_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_periodos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public."consultaCatalogos_cat_periodos_id_seq";
       public       postgres    false    217    5            �	           0    0 %   consultaCatalogos_cat_periodos_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "consultaCatalogos_cat_periodos_id_seq" OWNED BY "consultaCatalogos_cat_periodos".id;
            public       postgres    false    216            �            1259    49764    consultaCatalogos_cat_programas    TABLE     �   CREATE TABLE "consultaCatalogos_cat_programas" (
    id integer NOT NULL,
    "identPrograma" character varying(10) NOT NULL,
    "nombrePrograma" character varying(80) NOT NULL,
    "descripPrograma" text NOT NULL
);
 5   DROP TABLE public."consultaCatalogos_cat_programas";
       public         postgres    false    5            �            1259    49762 &   consultaCatalogos_cat_programas_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_programas_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."consultaCatalogos_cat_programas_id_seq";
       public       postgres    false    5    219            �	           0    0 &   consultaCatalogos_cat_programas_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "consultaCatalogos_cat_programas_id_seq" OWNED BY "consultaCatalogos_cat_programas".id;
            public       postgres    false    218            �            1259    49775    consultaCatalogos_cat_sexo    TABLE     �   CREATE TABLE "consultaCatalogos_cat_sexo" (
    id integer NOT NULL,
    "identSexo" character varying(1) NOT NULL,
    "nombreSexo" character varying(10) NOT NULL
);
 0   DROP TABLE public."consultaCatalogos_cat_sexo";
       public         postgres    false    5            �            1259    49773 !   consultaCatalogos_cat_sexo_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_sexo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."consultaCatalogos_cat_sexo_id_seq";
       public       postgres    false    5    221            �	           0    0 !   consultaCatalogos_cat_sexo_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "consultaCatalogos_cat_sexo_id_seq" OWNED BY "consultaCatalogos_cat_sexo".id;
            public       postgres    false    220            �            1259    49783 "   consultaCatalogos_cat_subprogramas    TABLE       CREATE TABLE "consultaCatalogos_cat_subprogramas" (
    id integer NOT NULL,
    "identSubprograma" character varying(10) NOT NULL,
    "nombreSubPrograma" character varying(80) NOT NULL,
    "descripSubprograma" text NOT NULL,
    "idPrograma_id" integer NOT NULL
);
 8   DROP TABLE public."consultaCatalogos_cat_subprogramas";
       public         postgres    false    5            �            1259    49781 )   consultaCatalogos_cat_subprogramas_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_subprogramas_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."consultaCatalogos_cat_subprogramas_id_seq";
       public       postgres    false    5    223             
           0    0 )   consultaCatalogos_cat_subprogramas_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE "consultaCatalogos_cat_subprogramas_id_seq" OWNED BY "consultaCatalogos_cat_subprogramas".id;
            public       postgres    false    222            �            1259    49794    consultaCatalogos_cat_tipoapoyo    TABLE     �   CREATE TABLE "consultaCatalogos_cat_tipoapoyo" (
    id integer NOT NULL,
    "identTipoApoyo" character varying(2) NOT NULL,
    "nombreTipoApoyo" character varying(10) NOT NULL
);
 5   DROP TABLE public."consultaCatalogos_cat_tipoapoyo";
       public         postgres    false    5            �            1259    49792 &   consultaCatalogos_cat_tipoapoyo_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_tipoapoyo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."consultaCatalogos_cat_tipoapoyo_id_seq";
       public       postgres    false    5    225            
           0    0 &   consultaCatalogos_cat_tipoapoyo_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "consultaCatalogos_cat_tipoapoyo_id_seq" OWNED BY "consultaCatalogos_cat_tipoapoyo".id;
            public       postgres    false    224            �            1259    49802     consultaCatalogos_cat_tipopadron    TABLE     �   CREATE TABLE "consultaCatalogos_cat_tipopadron" (
    id integer NOT NULL,
    "nombrePadron" character varying(10) NOT NULL
);
 6   DROP TABLE public."consultaCatalogos_cat_tipopadron";
       public         postgres    false    5            �            1259    49800 '   consultaCatalogos_cat_tipopadron_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_tipopadron_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."consultaCatalogos_cat_tipopadron_id_seq";
       public       postgres    false    227    5            
           0    0 '   consultaCatalogos_cat_tipopadron_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE "consultaCatalogos_cat_tipopadron_id_seq" OWNED BY "consultaCatalogos_cat_tipopadron".id;
            public       postgres    false    226            �            1259    49810 !   consultaCatalogos_estatustrabajos    TABLE     �   CREATE TABLE "consultaCatalogos_estatustrabajos" (
    id integer NOT NULL,
    "nombreEstatus" character varying(20) NOT NULL
);
 7   DROP TABLE public."consultaCatalogos_estatustrabajos";
       public         postgres    false    5            �            1259    49808 (   consultaCatalogos_estatustrabajos_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_estatustrabajos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."consultaCatalogos_estatustrabajos_id_seq";
       public       postgres    false    5    229            
           0    0 (   consultaCatalogos_estatustrabajos_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "consultaCatalogos_estatustrabajos_id_seq" OWNED BY "consultaCatalogos_estatustrabajos".id;
            public       postgres    false    228            �            1259    49818 !   consultaCatalogos_formatopubactor    TABLE     �  CREATE TABLE "consultaCatalogos_formatopubactor" (
    id integer NOT NULL,
    "RazonSocial" character varying(20) NOT NULL,
    "RFC" character varying(13) NOT NULL,
    "PrimerApellido" character varying(20) NOT NULL,
    "SegundoApellido" character varying(20) NOT NULL,
    "Nombre" character varying(20) NOT NULL,
    "CURP" character varying(18) NOT NULL,
    "Titular" character varying(1) NOT NULL,
    "NombreVialidadActor" character varying(20) NOT NULL,
    "NumeroExtActor" character varying(5) NOT NULL,
    "NumeroIntActor" character varying(5) NOT NULL,
    "CodigoPostalActor" character varying(5) NOT NULL,
    "RefDomActor" character varying(250) NOT NULL,
    "NombreVialidadIntegrante" character varying(20) NOT NULL,
    "NumeroExtIntegrante" character varying(5) NOT NULL,
    "NumeroIntIntegrante" character varying(5) NOT NULL,
    "CodigoPostalIntegrante" character varying(5) NOT NULL,
    "RefDomicilioIntegrante" character varying(250) NOT NULL,
    "Beneficio" character varying(250) NOT NULL,
    "AnioEjercicio_id" integer NOT NULL,
    "ClavePrograma_id" integer NOT NULL,
    "ClaveSubprograma_id" integer NOT NULL,
    "Dependencia_id" integer NOT NULL,
    "EdoNacimiento_id" integer NOT NULL,
    "FuentesRecurso_id" integer NOT NULL,
    "LocDondeSePagaBeneficio_id" integer NOT NULL,
    "LocResidActorSocial_id" integer NOT NULL,
    "LocResidDelIntegrante_id" integer NOT NULL,
    "MesPeriodoPago_id" integer NOT NULL,
    "MunDondeSePagaBeneficio_id" integer NOT NULL,
    "OtroDocId_id" integer NOT NULL,
    "PeriodicidadEntregaBeneficio_id" integer NOT NULL,
    "Sexo_id" integer NOT NULL,
    "TipoApoyo_id" integer NOT NULL,
    "Trimestre_id" integer NOT NULL
);
 7   DROP TABLE public."consultaCatalogos_formatopubactor";
       public         postgres    false    5            �            1259    49816 (   consultaCatalogos_formatopubactor_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_formatopubactor_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."consultaCatalogos_formatopubactor_id_seq";
       public       postgres    false    5    231            
           0    0 (   consultaCatalogos_formatopubactor_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "consultaCatalogos_formatopubactor_id_seq" OWNED BY "consultaCatalogos_formatopubactor".id;
            public       postgres    false    230            �            1259    49826 #   consultaCatalogos_formatopubpersona    TABLE       CREATE TABLE "consultaCatalogos_formatopubpersona" (
    id integer NOT NULL,
    "AnioEjercicio_id" integer NOT NULL,
    "MesPeriodoPago_id" integer NOT NULL,
    "PeriodicidadEntregaBeneficio_id" integer NOT NULL,
    "Trimestre_id" integer NOT NULL,
    "AsentamientoHumano_id" integer NOT NULL,
    "Beneficio" character varying(250) NOT NULL,
    "CURP" character varying(18) NOT NULL,
    "ClavePrograma_id" integer NOT NULL,
    "ClaveSubprograma_id" integer NOT NULL,
    "CodigoPostal" character varying(5) NOT NULL,
    "Dependencia_id" integer NOT NULL,
    "EstadoCivil_id" integer NOT NULL,
    "FuentesRecurso_id" integer NOT NULL,
    "IdHogar" character varying(15) NOT NULL,
    "IdPersona" character varying(15) NOT NULL,
    "LocalidadPagoBeneficio_id" integer NOT NULL,
    "LocalidadResidencia_id" integer NOT NULL,
    "MunicipioBeneficiado_id" integer NOT NULL,
    "Nombre" character varying(20) NOT NULL,
    "NombreVialidad" character varying(20) NOT NULL,
    "NumeroExterior" character varying(5) NOT NULL,
    "NumeroInterior" character varying(5) NOT NULL,
    "OtroDocId_id" integer NOT NULL,
    "PrimerApellido" character varying(20) NOT NULL,
    "ReferenciaDomicilio" character varying(250) NOT NULL,
    "SegundoApellido" character varying(20) NOT NULL,
    "Sexo_id" integer NOT NULL,
    "TipoApoyo_id" integer NOT NULL,
    "Titular" character varying(1) NOT NULL
);
 9   DROP TABLE public."consultaCatalogos_formatopubpersona";
       public         postgres    false    5            �            1259    49824 *   consultaCatalogos_formatopubpersona_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_formatopubpersona_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."consultaCatalogos_formatopubpersona_id_seq";
       public       postgres    false    5    233            
           0    0 *   consultaCatalogos_formatopubpersona_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "consultaCatalogos_formatopubpersona_id_seq" OWNED BY "consultaCatalogos_formatopubpersona".id;
            public       postgres    false    232            �            1259    49834 %   consultaCatalogos_formatopubpoblacion    TABLE     �  CREATE TABLE "consultaCatalogos_formatopubpoblacion" (
    id integer NOT NULL,
    "AnioEjercicio_id" integer NOT NULL,
    "PeriodicidadEntregaBeneficio_id" integer NOT NULL,
    "Trimestre_id" integer NOT NULL,
    "AsentamientoHumano_id" integer NOT NULL,
    "ClavePrograma_id" integer NOT NULL,
    "ClaveSubprograma_id" integer NOT NULL,
    "CodigoPostal" character varying(5) NOT NULL,
    "Dependencia_id" integer NOT NULL,
    "FuentesRecurso_id" integer NOT NULL,
    "IdObra" character varying(15) NOT NULL,
    "LocalidadBeneficiada_id" integer NOT NULL,
    "Multilocalidad" character varying(2) NOT NULL,
    "MunicipioBeneficiado_id" integer NOT NULL,
    "NombreVialidad" character varying(20) NOT NULL,
    "NumeroExterior" character varying(5) NOT NULL,
    "NumeroInterior" character varying(5) NOT NULL,
    "RFC" character varying(13) NOT NULL,
    "ReferenciaDomicilio" character varying(250) NOT NULL,
    "TipoApoyo_id" integer NOT NULL
);
 ;   DROP TABLE public."consultaCatalogos_formatopubpoblacion";
       public         postgres    false    5            �            1259    49832 ,   consultaCatalogos_formatopubpoblacion_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_formatopubpoblacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."consultaCatalogos_formatopubpoblacion_id_seq";
       public       postgres    false    235    5            
           0    0 ,   consultaCatalogos_formatopubpoblacion_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "consultaCatalogos_formatopubpoblacion_id_seq" OWNED BY "consultaCatalogos_formatopubpoblacion".id;
            public       postgres    false    234            �            1259    49842 $   consultaCatalogos_trabajosrealizados    TABLE     �  CREATE TABLE "consultaCatalogos_trabajosrealizados" (
    id integer NOT NULL,
    "archivoRelacionado" character varying(100) NOT NULL,
    "FechaInicio" timestamp with time zone NOT NULL,
    "UltimaActualizacion" date NOT NULL,
    "CantidadRegistros" integer NOT NULL,
    "JsonTrabajo" text NOT NULL,
    "AnioEjercicio_id" integer NOT NULL,
    "Estatus_id" integer NOT NULL,
    "TipoPadron_id" integer NOT NULL,
    "Trimestre_id" integer NOT NULL,
    "Usuario_id" integer NOT NULL
);
 :   DROP TABLE public."consultaCatalogos_trabajosrealizados";
       public         postgres    false    5            �            1259    49840 +   consultaCatalogos_trabajosrealizados_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_trabajosrealizados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."consultaCatalogos_trabajosrealizados_id_seq";
       public       postgres    false    237    5            
           0    0 +   consultaCatalogos_trabajosrealizados_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE "consultaCatalogos_trabajosrealizados_id_seq" OWNED BY "consultaCatalogos_trabajosrealizados".id;
            public       postgres    false    236            �            1259    50072    csvimport_csvimport    TABLE     �  CREATE TABLE csvimport_csvimport (
    id integer NOT NULL,
    model_name character varying(255) NOT NULL,
    field_list character varying(255) NOT NULL,
    upload_file character varying(100) NOT NULL,
    file_name character varying(255) NOT NULL,
    encoding character varying(32) NOT NULL,
    upload_method character varying(50) NOT NULL,
    error_log text NOT NULL,
    import_date date NOT NULL,
    import_user character varying(255) NOT NULL
);
 '   DROP TABLE public.csvimport_csvimport;
       public         postgres    false    5            �            1259    50070    csvimport_csvimport_id_seq    SEQUENCE     |   CREATE SEQUENCE csvimport_csvimport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.csvimport_csvimport_id_seq;
       public       postgres    false    5    240            
           0    0    csvimport_csvimport_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE csvimport_csvimport_id_seq OWNED BY csvimport_csvimport.id;
            public       postgres    false    239            �            1259    50083    csvimport_importmodel    TABLE       CREATE TABLE csvimport_importmodel (
    id integer NOT NULL,
    csvimport_id integer NOT NULL,
    numeric_id integer NOT NULL,
    natural_key character varying(100) NOT NULL,
    CONSTRAINT csvimport_importmodel_numeric_id_check CHECK ((numeric_id >= 0))
);
 )   DROP TABLE public.csvimport_importmodel;
       public         postgres    false    5            �            1259    50081    csvimport_importmodel_id_seq    SEQUENCE     ~   CREATE SEQUENCE csvimport_importmodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.csvimport_importmodel_id_seq;
       public       postgres    false    242    5            	
           0    0    csvimport_importmodel_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE csvimport_importmodel_id_seq OWNED BY csvimport_importmodel.id;
            public       postgres    false    241            �            1259    49628    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    5            �            1259    49626    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    189    5            

           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    188            �            1259    49514    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    5            �            1259    49512    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    5    175            
           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    174            �            1259    49506    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    5            �            1259    49504    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    5    173            
           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    172            �            1259    50049    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    5            6           2604    49537    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    178    179    179            7           2604    49547    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    180    181    181            5           2604    49527    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    177    176    177            8           2604    49557    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    182    183    183            9           2604    49567    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    184    185            :           2604    49577    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    187    187            =           2604    49655    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_anioejercicio" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_anioejercicio_id_seq"'::regclass);
 W   ALTER TABLE public."consultaCatalogos_cat_anioejercicio" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    191    191            >           2604    49663    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_asentamiento" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_asentamiento_id_seq"'::regclass);
 V   ALTER TABLE public."consultaCatalogos_cat_asentamiento" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    192    193            ?           2604    49671    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_codigopostal" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_codigopostal_id_seq"'::regclass);
 V   ALTER TABLE public."consultaCatalogos_cat_codigopostal" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    195    195            @           2604    49679    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_dependencias" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_dependencias_id_seq"'::regclass);
 V   ALTER TABLE public."consultaCatalogos_cat_dependencias" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            A           2604    49687    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_edocivil" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_edocivil_id_seq"'::regclass);
 R   ALTER TABLE public."consultaCatalogos_cat_edocivil" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            B           2604    49695    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_estados" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_estados_id_seq"'::regclass);
 Q   ALTER TABLE public."consultaCatalogos_cat_estados" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            C           2604    49703    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_frecuencia" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_frecuencia_id_seq"'::regclass);
 T   ALTER TABLE public."consultaCatalogos_cat_frecuencia" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            D           2604    49711    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_fuentes" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_fuentes_id_seq"'::regclass);
 Q   ALTER TABLE public."consultaCatalogos_cat_fuentes" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            E           2604    49719    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_identificacion" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_identificacion_id_seq"'::regclass);
 X   ALTER TABLE public."consultaCatalogos_cat_identificacion" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            F           2604    49727    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_localidad" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_localidad_id_seq"'::regclass);
 S   ALTER TABLE public."consultaCatalogos_cat_localidad" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            G           2604    49735    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_mes" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_mes_id_seq"'::regclass);
 M   ALTER TABLE public."consultaCatalogos_cat_mes" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            H           2604    49743    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_municipio" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_municipio_id_seq"'::regclass);
 S   ALTER TABLE public."consultaCatalogos_cat_municipio" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            I           2604    49751    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_parentesco" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_parentesco_id_seq"'::regclass);
 T   ALTER TABLE public."consultaCatalogos_cat_parentesco" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            J           2604    49759    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_periodos" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_periodos_id_seq"'::regclass);
 R   ALTER TABLE public."consultaCatalogos_cat_periodos" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    217    217            K           2604    49767    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_programas" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_programas_id_seq"'::regclass);
 S   ALTER TABLE public."consultaCatalogos_cat_programas" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219            L           2604    49778    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_sexo" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_sexo_id_seq"'::regclass);
 N   ALTER TABLE public."consultaCatalogos_cat_sexo" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    221    221            M           2604    49786    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_subprogramas" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_subprogramas_id_seq"'::regclass);
 V   ALTER TABLE public."consultaCatalogos_cat_subprogramas" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    223    223            N           2604    49797    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_tipoapoyo" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_tipoapoyo_id_seq"'::regclass);
 S   ALTER TABLE public."consultaCatalogos_cat_tipoapoyo" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225            O           2604    49805    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_tipopadron" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_tipopadron_id_seq"'::regclass);
 T   ALTER TABLE public."consultaCatalogos_cat_tipopadron" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226    227            P           2604    49813    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_estatustrabajos" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_estatustrabajos_id_seq"'::regclass);
 U   ALTER TABLE public."consultaCatalogos_estatustrabajos" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    229    229            Q           2604    49821    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_formatopubactor_id_seq"'::regclass);
 U   ALTER TABLE public."consultaCatalogos_formatopubactor" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    231    231            R           2604    49829    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_formatopubpersona_id_seq"'::regclass);
 W   ALTER TABLE public."consultaCatalogos_formatopubpersona" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232    233            S           2604    49837    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_formatopubpoblacion_id_seq"'::regclass);
 Y   ALTER TABLE public."consultaCatalogos_formatopubpoblacion" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    234    235            T           2604    49845    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_trabajosrealizados_id_seq"'::regclass);
 X   ALTER TABLE public."consultaCatalogos_trabajosrealizados" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    237    237            U           2604    50075    id    DEFAULT     r   ALTER TABLE ONLY csvimport_csvimport ALTER COLUMN id SET DEFAULT nextval('csvimport_csvimport_id_seq'::regclass);
 E   ALTER TABLE public.csvimport_csvimport ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    239    240            V           2604    50086    id    DEFAULT     v   ALTER TABLE ONLY csvimport_importmodel ALTER COLUMN id SET DEFAULT nextval('csvimport_importmodel_id_seq'::regclass);
 G   ALTER TABLE public.csvimport_importmodel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    241    242            ;           2604    49631    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    189    188    189            4           2604    49517    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    175    174    175            3           2604    49509    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    172    173    173            �	          0    49534 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    179   `?      
           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    178            �	          0    49544    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    181   }?      
           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    180            �	          0    49524    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    177   �?      
           0    0    auth_permission_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_permission_id_seq', 102, true);
            public       postgres    false    176            �	          0    49554 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    183   �C      �	          0    49564    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    185   �D      
           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    184            
           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 2, true);
            public       postgres    false    182            �	          0    49574    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    187   E      
           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 57, true);
            public       postgres    false    186            �	          0    49652 #   consultaCatalogos_cat_anioejercicio 
   TABLE DATA               M   COPY "consultaCatalogos_cat_anioejercicio" (id, "AnioEjercicio") FROM stdin;
    public       postgres    false    191   �E      
           0    0 *   consultaCatalogos_cat_anioejercicio_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_anioejercicio_id_seq"', 4, true);
            public       postgres    false    190            �	          0    49660 "   consultaCatalogos_cat_asentamiento 
   TABLE DATA               f   COPY "consultaCatalogos_cat_asentamiento" (id, "identAsentamiento", "nombreAsentamiento") FROM stdin;
    public       postgres    false    193   F      
           0    0 )   consultaCatalogos_cat_asentamiento_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_asentamiento_id_seq"', 42, true);
            public       postgres    false    192            �	          0    49668 "   consultaCatalogos_cat_codigopostal 
   TABLE DATA               X   COPY "consultaCatalogos_cat_codigopostal" (id, "claveCP", "idLocalidad_id") FROM stdin;
    public       postgres    false    195   �G      
           0    0 )   consultaCatalogos_cat_codigopostal_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_codigopostal_id_seq"', 1, false);
            public       postgres    false    194            �	          0    49676 "   consultaCatalogos_cat_dependencias 
   TABLE DATA               d   COPY "consultaCatalogos_cat_dependencias" (id, "identDependencia", "nombreDependencia") FROM stdin;
    public       postgres    false    197   �G      
           0    0 )   consultaCatalogos_cat_dependencias_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_dependencias_id_seq"', 73, true);
            public       postgres    false    196            �	          0    49684    consultaCatalogos_cat_edocivil 
   TABLE DATA               Z   COPY "consultaCatalogos_cat_edocivil" (id, "identEdoCivil", "nombreEdoCivil") FROM stdin;
    public       postgres    false    199   �M      
           0    0 %   consultaCatalogos_cat_edocivil_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"consultaCatalogos_cat_edocivil_id_seq"', 7, true);
            public       postgres    false    198            �	          0    49692    consultaCatalogos_cat_estados 
   TABLE DATA               U   COPY "consultaCatalogos_cat_estados" (id, "identEstado", "nombreEstado") FROM stdin;
    public       postgres    false    201   bN      
           0    0 $   consultaCatalogos_cat_estados_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"consultaCatalogos_cat_estados_id_seq"', 32, true);
            public       postgres    false    200            �	          0    49700     consultaCatalogos_cat_frecuencia 
   TABLE DATA               u   COPY "consultaCatalogos_cat_frecuencia" (id, "identFrecuencia", "nombreFrecuencia", "descripFrecuencia") FROM stdin;
    public       postgres    false    203   �O      
           0    0 '   consultaCatalogos_cat_frecuencia_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"consultaCatalogos_cat_frecuencia_id_seq"', 9, true);
            public       postgres    false    202            �	          0    49708    consultaCatalogos_cat_fuentes 
   TABLE DATA               \   COPY "consultaCatalogos_cat_fuentes" (id, "identFuentes", "descripcionFuentes") FROM stdin;
    public       postgres    false    205   6P      
           0    0 $   consultaCatalogos_cat_fuentes_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"consultaCatalogos_cat_fuentes_id_seq"', 16, true);
            public       postgres    false    204            �	          0    49716 $   consultaCatalogos_cat_identificacion 
   TABLE DATA               l   COPY "consultaCatalogos_cat_identificacion" (id, "identIdentificacion", "nombreIdentificacion") FROM stdin;
    public       postgres    false    207   �P      
           0    0 +   consultaCatalogos_cat_identificacion_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('"consultaCatalogos_cat_identificacion_id_seq"', 10, true);
            public       postgres    false    206            �	          0    49724    consultaCatalogos_cat_localidad 
   TABLE DATA               o   COPY "consultaCatalogos_cat_localidad" (id, "identLocalidad", "nombreLocalidad", "idMunicipio_id") FROM stdin;
    public       postgres    false    209   �Q      
           0    0 &   consultaCatalogos_cat_localidad_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('"consultaCatalogos_cat_localidad_id_seq"', 565, true);
            public       postgres    false    208            �	          0    49732    consultaCatalogos_cat_mes 
   TABLE DATA               ?   COPY "consultaCatalogos_cat_mes" (id, "nombreMes") FROM stdin;
    public       postgres    false    211   �l      
           0    0     consultaCatalogos_cat_mes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"consultaCatalogos_cat_mes_id_seq"', 12, true);
            public       postgres    false    210            �	          0    49740    consultaCatalogos_cat_municipio 
   TABLE DATA               l   COPY "consultaCatalogos_cat_municipio" (id, "identMunicipio", "nombreMunicipio", "idEstado_id") FROM stdin;
    public       postgres    false    213   8m      
           0    0 &   consultaCatalogos_cat_municipio_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"consultaCatalogos_cat_municipio_id_seq"', 17, true);
            public       postgres    false    212            �	          0    49748     consultaCatalogos_cat_parentesco 
   TABLE DATA               `   COPY "consultaCatalogos_cat_parentesco" (id, "identParentesco", "nombreParentesco") FROM stdin;
    public       postgres    false    215   .n      
           0    0 '   consultaCatalogos_cat_parentesco_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('"consultaCatalogos_cat_parentesco_id_seq"', 13, true);
            public       postgres    false    214            �	          0    49756    consultaCatalogos_cat_periodos 
   TABLE DATA               X   COPY "consultaCatalogos_cat_periodos" (id, "identPeriodo", "nombrePeriodo") FROM stdin;
    public       postgres    false    217   �n       
           0    0 %   consultaCatalogos_cat_periodos_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"consultaCatalogos_cat_periodos_id_seq"', 4, true);
            public       postgres    false    216            �	          0    49764    consultaCatalogos_cat_programas 
   TABLE DATA               n   COPY "consultaCatalogos_cat_programas" (id, "identPrograma", "nombrePrograma", "descripPrograma") FROM stdin;
    public       postgres    false    219   Oo      !
           0    0 &   consultaCatalogos_cat_programas_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"consultaCatalogos_cat_programas_id_seq"', 1, false);
            public       postgres    false    218            �	          0    49775    consultaCatalogos_cat_sexo 
   TABLE DATA               N   COPY "consultaCatalogos_cat_sexo" (id, "identSexo", "nombreSexo") FROM stdin;
    public       postgres    false    221   lo      "
           0    0 !   consultaCatalogos_cat_sexo_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"consultaCatalogos_cat_sexo_id_seq"', 2, true);
            public       postgres    false    220            �	          0    49783 "   consultaCatalogos_cat_subprogramas 
   TABLE DATA               �   COPY "consultaCatalogos_cat_subprogramas" (id, "identSubprograma", "nombreSubPrograma", "descripSubprograma", "idPrograma_id") FROM stdin;
    public       postgres    false    223   �o      #
           0    0 )   consultaCatalogos_cat_subprogramas_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_subprogramas_id_seq"', 1, false);
            public       postgres    false    222            �	          0    49794    consultaCatalogos_cat_tipoapoyo 
   TABLE DATA               ]   COPY "consultaCatalogos_cat_tipoapoyo" (id, "identTipoApoyo", "nombreTipoApoyo") FROM stdin;
    public       postgres    false    225   �o      $
           0    0 &   consultaCatalogos_cat_tipoapoyo_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"consultaCatalogos_cat_tipoapoyo_id_seq"', 3, true);
            public       postgres    false    224            �	          0    49802     consultaCatalogos_cat_tipopadron 
   TABLE DATA               I   COPY "consultaCatalogos_cat_tipopadron" (id, "nombrePadron") FROM stdin;
    public       postgres    false    227   �o      %
           0    0 '   consultaCatalogos_cat_tipopadron_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"consultaCatalogos_cat_tipopadron_id_seq"', 3, true);
            public       postgres    false    226            �	          0    49810 !   consultaCatalogos_estatustrabajos 
   TABLE DATA               K   COPY "consultaCatalogos_estatustrabajos" (id, "nombreEstatus") FROM stdin;
    public       postgres    false    229   <p      &
           0    0 (   consultaCatalogos_estatustrabajos_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('"consultaCatalogos_estatustrabajos_id_seq"', 4, true);
            public       postgres    false    228            �	          0    49818 !   consultaCatalogos_formatopubactor 
   TABLE DATA               �  COPY "consultaCatalogos_formatopubactor" (id, "RazonSocial", "RFC", "PrimerApellido", "SegundoApellido", "Nombre", "CURP", "Titular", "NombreVialidadActor", "NumeroExtActor", "NumeroIntActor", "CodigoPostalActor", "RefDomActor", "NombreVialidadIntegrante", "NumeroExtIntegrante", "NumeroIntIntegrante", "CodigoPostalIntegrante", "RefDomicilioIntegrante", "Beneficio", "AnioEjercicio_id", "ClavePrograma_id", "ClaveSubprograma_id", "Dependencia_id", "EdoNacimiento_id", "FuentesRecurso_id", "LocDondeSePagaBeneficio_id", "LocResidActorSocial_id", "LocResidDelIntegrante_id", "MesPeriodoPago_id", "MunDondeSePagaBeneficio_id", "OtroDocId_id", "PeriodicidadEntregaBeneficio_id", "Sexo_id", "TipoApoyo_id", "Trimestre_id") FROM stdin;
    public       postgres    false    231   zp      '
           0    0 (   consultaCatalogos_formatopubactor_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('"consultaCatalogos_formatopubactor_id_seq"', 1, false);
            public       postgres    false    230            �	          0    49826 #   consultaCatalogos_formatopubpersona 
   TABLE DATA               V  COPY "consultaCatalogos_formatopubpersona" (id, "AnioEjercicio_id", "MesPeriodoPago_id", "PeriodicidadEntregaBeneficio_id", "Trimestre_id", "AsentamientoHumano_id", "Beneficio", "CURP", "ClavePrograma_id", "ClaveSubprograma_id", "CodigoPostal", "Dependencia_id", "EstadoCivil_id", "FuentesRecurso_id", "IdHogar", "IdPersona", "LocalidadPagoBeneficio_id", "LocalidadResidencia_id", "MunicipioBeneficiado_id", "Nombre", "NombreVialidad", "NumeroExterior", "NumeroInterior", "OtroDocId_id", "PrimerApellido", "ReferenciaDomicilio", "SegundoApellido", "Sexo_id", "TipoApoyo_id", "Titular") FROM stdin;
    public       postgres    false    233   �p      (
           0    0 *   consultaCatalogos_formatopubpersona_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"consultaCatalogos_formatopubpersona_id_seq"', 1, false);
            public       postgres    false    232            �	          0    49834 %   consultaCatalogos_formatopubpoblacion 
   TABLE DATA               �  COPY "consultaCatalogos_formatopubpoblacion" (id, "AnioEjercicio_id", "PeriodicidadEntregaBeneficio_id", "Trimestre_id", "AsentamientoHumano_id", "ClavePrograma_id", "ClaveSubprograma_id", "CodigoPostal", "Dependencia_id", "FuentesRecurso_id", "IdObra", "LocalidadBeneficiada_id", "Multilocalidad", "MunicipioBeneficiado_id", "NombreVialidad", "NumeroExterior", "NumeroInterior", "RFC", "ReferenciaDomicilio", "TipoApoyo_id") FROM stdin;
    public       postgres    false    235   �p      )
           0    0 ,   consultaCatalogos_formatopubpoblacion_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"consultaCatalogos_formatopubpoblacion_id_seq"', 1, false);
            public       postgres    false    234            �	          0    49842 $   consultaCatalogos_trabajosrealizados 
   TABLE DATA               �   COPY "consultaCatalogos_trabajosrealizados" (id, "archivoRelacionado", "FechaInicio", "UltimaActualizacion", "CantidadRegistros", "JsonTrabajo", "AnioEjercicio_id", "Estatus_id", "TipoPadron_id", "Trimestre_id", "Usuario_id") FROM stdin;
    public       postgres    false    237   �p      *
           0    0 +   consultaCatalogos_trabajosrealizados_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('"consultaCatalogos_trabajosrealizados_id_seq"', 16, true);
            public       postgres    false    236            �	          0    50072    csvimport_csvimport 
   TABLE DATA               �   COPY csvimport_csvimport (id, model_name, field_list, upload_file, file_name, encoding, upload_method, error_log, import_date, import_user) FROM stdin;
    public       postgres    false    240   �q      +
           0    0    csvimport_csvimport_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('csvimport_csvimport_id_seq', 2, true);
            public       postgres    false    239            �	          0    50083    csvimport_importmodel 
   TABLE DATA               S   COPY csvimport_importmodel (id, csvimport_id, numeric_id, natural_key) FROM stdin;
    public       postgres    false    242   �r      ,
           0    0    csvimport_importmodel_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('csvimport_importmodel_id_seq', 1, false);
            public       postgres    false    241            �	          0    49628    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    189   �r      -
           0    0    django_admin_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_admin_log_id_seq', 853, true);
            public       postgres    false    188            �	          0    49514    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    175   ��      .
           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 34, true);
            public       postgres    false    174            �	          0    49506    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    173   ��      /
           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 25, true);
            public       postgres    false    172            �	          0    50049    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    238   �      e           2606    49541    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    179    179            k           2606    49551 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         postgres    false    181    181    181            m           2606    49549    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    181    181            g           2606    49539    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    179    179            `           2606    49531 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         postgres    false    177    177    177            b           2606    49529    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    177    177            v           2606    49569    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    185    185            x           2606    49571 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         postgres    false    185    185    185            o           2606    49559    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    183    183            |           2606    49579    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    187    187            ~           2606    49581 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         postgres    false    187    187    187            r           2606    49561    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    183    183            �           2606    49657 (   consultaCatalogos_cat_anioejercicio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_anioejercicio"
    ADD CONSTRAINT "consultaCatalogos_cat_anioejercicio_pkey" PRIMARY KEY (id);
 z   ALTER TABLE ONLY public."consultaCatalogos_cat_anioejercicio" DROP CONSTRAINT "consultaCatalogos_cat_anioejercicio_pkey";
       public         postgres    false    191    191            �           2606    49665 '   consultaCatalogos_cat_asentamiento_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_asentamiento"
    ADD CONSTRAINT "consultaCatalogos_cat_asentamiento_pkey" PRIMARY KEY (id);
 x   ALTER TABLE ONLY public."consultaCatalogos_cat_asentamiento" DROP CONSTRAINT "consultaCatalogos_cat_asentamiento_pkey";
       public         postgres    false    193    193            �           2606    49673 '   consultaCatalogos_cat_codigopostal_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_codigopostal"
    ADD CONSTRAINT "consultaCatalogos_cat_codigopostal_pkey" PRIMARY KEY (id);
 x   ALTER TABLE ONLY public."consultaCatalogos_cat_codigopostal" DROP CONSTRAINT "consultaCatalogos_cat_codigopostal_pkey";
       public         postgres    false    195    195            �           2606    49681 '   consultaCatalogos_cat_dependencias_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_dependencias"
    ADD CONSTRAINT "consultaCatalogos_cat_dependencias_pkey" PRIMARY KEY (id);
 x   ALTER TABLE ONLY public."consultaCatalogos_cat_dependencias" DROP CONSTRAINT "consultaCatalogos_cat_dependencias_pkey";
       public         postgres    false    197    197            �           2606    49689 #   consultaCatalogos_cat_edocivil_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY "consultaCatalogos_cat_edocivil"
    ADD CONSTRAINT "consultaCatalogos_cat_edocivil_pkey" PRIMARY KEY (id);
 p   ALTER TABLE ONLY public."consultaCatalogos_cat_edocivil" DROP CONSTRAINT "consultaCatalogos_cat_edocivil_pkey";
       public         postgres    false    199    199            �           2606    49697 "   consultaCatalogos_cat_estados_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY "consultaCatalogos_cat_estados"
    ADD CONSTRAINT "consultaCatalogos_cat_estados_pkey" PRIMARY KEY (id);
 n   ALTER TABLE ONLY public."consultaCatalogos_cat_estados" DROP CONSTRAINT "consultaCatalogos_cat_estados_pkey";
       public         postgres    false    201    201            �           2606    49705 %   consultaCatalogos_cat_frecuencia_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_frecuencia"
    ADD CONSTRAINT "consultaCatalogos_cat_frecuencia_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."consultaCatalogos_cat_frecuencia" DROP CONSTRAINT "consultaCatalogos_cat_frecuencia_pkey";
       public         postgres    false    203    203            �           2606    49713 "   consultaCatalogos_cat_fuentes_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY "consultaCatalogos_cat_fuentes"
    ADD CONSTRAINT "consultaCatalogos_cat_fuentes_pkey" PRIMARY KEY (id);
 n   ALTER TABLE ONLY public."consultaCatalogos_cat_fuentes" DROP CONSTRAINT "consultaCatalogos_cat_fuentes_pkey";
       public         postgres    false    205    205            �           2606    49721 )   consultaCatalogos_cat_identificacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_identificacion"
    ADD CONSTRAINT "consultaCatalogos_cat_identificacion_pkey" PRIMARY KEY (id);
 |   ALTER TABLE ONLY public."consultaCatalogos_cat_identificacion" DROP CONSTRAINT "consultaCatalogos_cat_identificacion_pkey";
       public         postgres    false    207    207            �           2606    49729 $   consultaCatalogos_cat_localidad_pkey 
   CONSTRAINT        ALTER TABLE ONLY "consultaCatalogos_cat_localidad"
    ADD CONSTRAINT "consultaCatalogos_cat_localidad_pkey" PRIMARY KEY (id);
 r   ALTER TABLE ONLY public."consultaCatalogos_cat_localidad" DROP CONSTRAINT "consultaCatalogos_cat_localidad_pkey";
       public         postgres    false    209    209            �           2606    49737    consultaCatalogos_cat_mes_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY "consultaCatalogos_cat_mes"
    ADD CONSTRAINT "consultaCatalogos_cat_mes_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public."consultaCatalogos_cat_mes" DROP CONSTRAINT "consultaCatalogos_cat_mes_pkey";
       public         postgres    false    211    211            �           2606    49745 $   consultaCatalogos_cat_municipio_pkey 
   CONSTRAINT        ALTER TABLE ONLY "consultaCatalogos_cat_municipio"
    ADD CONSTRAINT "consultaCatalogos_cat_municipio_pkey" PRIMARY KEY (id);
 r   ALTER TABLE ONLY public."consultaCatalogos_cat_municipio" DROP CONSTRAINT "consultaCatalogos_cat_municipio_pkey";
       public         postgres    false    213    213            �           2606    49753 %   consultaCatalogos_cat_parentesco_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_parentesco"
    ADD CONSTRAINT "consultaCatalogos_cat_parentesco_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."consultaCatalogos_cat_parentesco" DROP CONSTRAINT "consultaCatalogos_cat_parentesco_pkey";
       public         postgres    false    215    215            �           2606    49761 #   consultaCatalogos_cat_periodos_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY "consultaCatalogos_cat_periodos"
    ADD CONSTRAINT "consultaCatalogos_cat_periodos_pkey" PRIMARY KEY (id);
 p   ALTER TABLE ONLY public."consultaCatalogos_cat_periodos" DROP CONSTRAINT "consultaCatalogos_cat_periodos_pkey";
       public         postgres    false    217    217            �           2606    49772 $   consultaCatalogos_cat_programas_pkey 
   CONSTRAINT        ALTER TABLE ONLY "consultaCatalogos_cat_programas"
    ADD CONSTRAINT "consultaCatalogos_cat_programas_pkey" PRIMARY KEY (id);
 r   ALTER TABLE ONLY public."consultaCatalogos_cat_programas" DROP CONSTRAINT "consultaCatalogos_cat_programas_pkey";
       public         postgres    false    219    219            �           2606    49780    consultaCatalogos_cat_sexo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY "consultaCatalogos_cat_sexo"
    ADD CONSTRAINT "consultaCatalogos_cat_sexo_pkey" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public."consultaCatalogos_cat_sexo" DROP CONSTRAINT "consultaCatalogos_cat_sexo_pkey";
       public         postgres    false    221    221            �           2606    49791 '   consultaCatalogos_cat_subprogramas_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_subprogramas"
    ADD CONSTRAINT "consultaCatalogos_cat_subprogramas_pkey" PRIMARY KEY (id);
 x   ALTER TABLE ONLY public."consultaCatalogos_cat_subprogramas" DROP CONSTRAINT "consultaCatalogos_cat_subprogramas_pkey";
       public         postgres    false    223    223            �           2606    49799 $   consultaCatalogos_cat_tipoapoyo_pkey 
   CONSTRAINT        ALTER TABLE ONLY "consultaCatalogos_cat_tipoapoyo"
    ADD CONSTRAINT "consultaCatalogos_cat_tipoapoyo_pkey" PRIMARY KEY (id);
 r   ALTER TABLE ONLY public."consultaCatalogos_cat_tipoapoyo" DROP CONSTRAINT "consultaCatalogos_cat_tipoapoyo_pkey";
       public         postgres    false    225    225            �           2606    49807 %   consultaCatalogos_cat_tipopadron_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_tipopadron"
    ADD CONSTRAINT "consultaCatalogos_cat_tipopadron_pkey" PRIMARY KEY (id);
 t   ALTER TABLE ONLY public."consultaCatalogos_cat_tipopadron" DROP CONSTRAINT "consultaCatalogos_cat_tipopadron_pkey";
       public         postgres    false    227    227            �           2606    49815 &   consultaCatalogos_estatustrabajos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_estatustrabajos"
    ADD CONSTRAINT "consultaCatalogos_estatustrabajos_pkey" PRIMARY KEY (id);
 v   ALTER TABLE ONLY public."consultaCatalogos_estatustrabajos" DROP CONSTRAINT "consultaCatalogos_estatustrabajos_pkey";
       public         postgres    false    229    229            �           2606    49823 &   consultaCatalogos_formatopubactor_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "consultaCatalogos_formatopubactor_pkey" PRIMARY KEY (id);
 v   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "consultaCatalogos_formatopubactor_pkey";
       public         postgres    false    231    231            �           2606    49831 (   consultaCatalogos_formatopubpersona_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "consultaCatalogos_formatopubpersona_pkey" PRIMARY KEY (id);
 z   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "consultaCatalogos_formatopubpersona_pkey";
       public         postgres    false    233    233            �           2606    49839 *   consultaCatalogos_formatopubpoblacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "consultaCatalogos_formatopubpoblacion_pkey" PRIMARY KEY (id);
 ~   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "consultaCatalogos_formatopubpoblacion_pkey";
       public         postgres    false    235    235            �           2606    49850 )   consultaCatalogos_trabajosrealizados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "consultaCatalogos_trabajosrealizados_pkey" PRIMARY KEY (id);
 |   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "consultaCatalogos_trabajosrealizados_pkey";
       public         postgres    false    237    237            �           2606    50080    csvimport_csvimport_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY csvimport_csvimport
    ADD CONSTRAINT csvimport_csvimport_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.csvimport_csvimport DROP CONSTRAINT csvimport_csvimport_pkey;
       public         postgres    false    240    240            �           2606    50089    csvimport_importmodel_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY csvimport_importmodel
    ADD CONSTRAINT csvimport_importmodel_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.csvimport_importmodel DROP CONSTRAINT csvimport_importmodel_pkey;
       public         postgres    false    242    242            �           2606    49637    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    189    189            [           2606    49521 +   django_content_type_app_label_3ec8c61c_uniq 
   CONSTRAINT        ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_3ec8c61c_uniq UNIQUE (app_label, model);
 i   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_3ec8c61c_uniq;
       public         postgres    false    175    175    175            ]           2606    49519    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    175    175            Y           2606    49511    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    173    173            �           2606    50056    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    238    238            c           1259    49588    auth_group_name_331666e8_like    INDEX     a   CREATE INDEX auth_group_name_331666e8_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_331666e8_like;
       public         postgres    false    179            h           1259    49599    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         postgres    false    181            i           1259    49600    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         postgres    false    181            ^           1259    49587    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         postgres    false    177            s           1259    49613    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         postgres    false    185            t           1259    49612    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         postgres    false    185            y           1259    49625 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         postgres    false    187            z           1259    49624 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         postgres    false    187            p           1259    49601    auth_user_username_94b8aae_like    INDEX     f   CREATE INDEX auth_user_username_94b8aae_like ON auth_user USING btree (username varchar_pattern_ops);
 3   DROP INDEX public.auth_user_username_94b8aae_like;
       public         postgres    false    183            �           1259    50043 +   consultaCatalogos_cat_codigopostal_9fd1c095    INDEX     �   CREATE INDEX "consultaCatalogos_cat_codigopostal_9fd1c095" ON "consultaCatalogos_cat_codigopostal" USING btree ("idLocalidad_id");
 A   DROP INDEX public."consultaCatalogos_cat_codigopostal_9fd1c095";
       public         postgres    false    195            �           1259    50037 (   consultaCatalogos_cat_localidad_127b817c    INDEX     }   CREATE INDEX "consultaCatalogos_cat_localidad_127b817c" ON "consultaCatalogos_cat_localidad" USING btree ("idMunicipio_id");
 >   DROP INDEX public."consultaCatalogos_cat_localidad_127b817c";
       public         postgres    false    209            �           1259    49856 (   consultaCatalogos_cat_municipio_e4961637    INDEX     z   CREATE INDEX "consultaCatalogos_cat_municipio_e4961637" ON "consultaCatalogos_cat_municipio" USING btree ("idEstado_id");
 >   DROP INDEX public."consultaCatalogos_cat_municipio_e4961637";
       public         postgres    false    213            �           1259    49862 +   consultaCatalogos_cat_subprogramas_0fa2623c    INDEX     �   CREATE INDEX "consultaCatalogos_cat_subprogramas_0fa2623c" ON "consultaCatalogos_cat_subprogramas" USING btree ("idPrograma_id");
 A   DROP INDEX public."consultaCatalogos_cat_subprogramas_0fa2623c";
       public         postgres    false    223            �           1259    49949 *   consultaCatalogos_formatopubactor_0e4a3cf3    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubactor_0e4a3cf3" ON "consultaCatalogos_formatopubactor" USING btree ("LocDondeSePagaBeneficio_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_0e4a3cf3";
       public         postgres    false    231            �           1259    49950 *   consultaCatalogos_formatopubactor_0e874c42    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubactor_0e874c42" ON "consultaCatalogos_formatopubactor" USING btree ("LocResidActorSocial_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_0e874c42";
       public         postgres    false    231            �           1259    49945 *   consultaCatalogos_formatopubactor_142f8d67    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubactor_142f8d67" ON "consultaCatalogos_formatopubactor" USING btree ("ClaveSubprograma_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_142f8d67";
       public         postgres    false    231            �           1259    49956 *   consultaCatalogos_formatopubactor_235a6ed3    INDEX     z   CREATE INDEX "consultaCatalogos_formatopubactor_235a6ed3" ON "consultaCatalogos_formatopubactor" USING btree ("Sexo_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_235a6ed3";
       public         postgres    false    231            �           1259    49946 *   consultaCatalogos_formatopubactor_23d285e2    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubactor_23d285e2" ON "consultaCatalogos_formatopubactor" USING btree ("Dependencia_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_23d285e2";
       public         postgres    false    231            �           1259    49953 *   consultaCatalogos_formatopubactor_31ac6525    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubactor_31ac6525" ON "consultaCatalogos_formatopubactor" USING btree ("MunDondeSePagaBeneficio_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_31ac6525";
       public         postgres    false    231            �           1259    49952 *   consultaCatalogos_formatopubactor_3591aea9    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubactor_3591aea9" ON "consultaCatalogos_formatopubactor" USING btree ("MesPeriodoPago_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_3591aea9";
       public         postgres    false    231            �           1259    49954 *   consultaCatalogos_formatopubactor_43cb7d7d    INDEX        CREATE INDEX "consultaCatalogos_formatopubactor_43cb7d7d" ON "consultaCatalogos_formatopubactor" USING btree ("OtroDocId_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_43cb7d7d";
       public         postgres    false    231            �           1259    49943 *   consultaCatalogos_formatopubactor_5b9247da    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubactor_5b9247da" ON "consultaCatalogos_formatopubactor" USING btree ("AnioEjercicio_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_5b9247da";
       public         postgres    false    231            �           1259    49957 *   consultaCatalogos_formatopubactor_7d70f29c    INDEX        CREATE INDEX "consultaCatalogos_formatopubactor_7d70f29c" ON "consultaCatalogos_formatopubactor" USING btree ("TipoApoyo_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_7d70f29c";
       public         postgres    false    231            �           1259    49951 *   consultaCatalogos_formatopubactor_951d3632    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubactor_951d3632" ON "consultaCatalogos_formatopubactor" USING btree ("LocResidDelIntegrante_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_951d3632";
       public         postgres    false    231            �           1259    49947 *   consultaCatalogos_formatopubactor_b2050017    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubactor_b2050017" ON "consultaCatalogos_formatopubactor" USING btree ("EdoNacimiento_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_b2050017";
       public         postgres    false    231            �           1259    49948 *   consultaCatalogos_formatopubactor_c7d3ec40    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubactor_c7d3ec40" ON "consultaCatalogos_formatopubactor" USING btree ("FuentesRecurso_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_c7d3ec40";
       public         postgres    false    231            �           1259    49955 *   consultaCatalogos_formatopubactor_cd68ec25    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubactor_cd68ec25" ON "consultaCatalogos_formatopubactor" USING btree ("PeriodicidadEntregaBeneficio_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_cd68ec25";
       public         postgres    false    231            �           1259    49944 *   consultaCatalogos_formatopubactor_e9884a2b    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubactor_e9884a2b" ON "consultaCatalogos_formatopubactor" USING btree ("ClavePrograma_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_e9884a2b";
       public         postgres    false    231            �           1259    49958 *   consultaCatalogos_formatopubactor_f0115ab9    INDEX        CREATE INDEX "consultaCatalogos_formatopubactor_f0115ab9" ON "consultaCatalogos_formatopubactor" USING btree ("Trimestre_id");
 @   DROP INDEX public."consultaCatalogos_formatopubactor_f0115ab9";
       public         postgres    false    231            �           1259    57940 ,   consultaCatalogos_formatopubpersona_13ef433e    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_13ef433e" ON "consultaCatalogos_formatopubpersona" USING btree ("LocalidadResidencia_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_13ef433e";
       public         postgres    false    233            �           1259    57910 ,   consultaCatalogos_formatopubpersona_142f8d67    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_142f8d67" ON "consultaCatalogos_formatopubpersona" USING btree ("ClaveSubprograma_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_142f8d67";
       public         postgres    false    233            �           1259    57958 ,   consultaCatalogos_formatopubpersona_235a6ed3    INDEX     ~   CREATE INDEX "consultaCatalogos_formatopubpersona_235a6ed3" ON "consultaCatalogos_formatopubpersona" USING btree ("Sexo_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_235a6ed3";
       public         postgres    false    233            �           1259    57916 ,   consultaCatalogos_formatopubpersona_23d285e2    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_23d285e2" ON "consultaCatalogos_formatopubpersona" USING btree ("Dependencia_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_23d285e2";
       public         postgres    false    233            �           1259    49980 ,   consultaCatalogos_formatopubpersona_3591aea9    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_3591aea9" ON "consultaCatalogos_formatopubpersona" USING btree ("MesPeriodoPago_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_3591aea9";
       public         postgres    false    233            �           1259    57922 ,   consultaCatalogos_formatopubpersona_385626ad    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_385626ad" ON "consultaCatalogos_formatopubpersona" USING btree ("EstadoCivil_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_385626ad";
       public         postgres    false    233            �           1259    57952 ,   consultaCatalogos_formatopubpersona_43cb7d7d    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_43cb7d7d" ON "consultaCatalogos_formatopubpersona" USING btree ("OtroDocId_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_43cb7d7d";
       public         postgres    false    233            �           1259    57934 ,   consultaCatalogos_formatopubpersona_5154ec08    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_5154ec08" ON "consultaCatalogos_formatopubpersona" USING btree ("LocalidadPagoBeneficio_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_5154ec08";
       public         postgres    false    233            �           1259    49979 ,   consultaCatalogos_formatopubpersona_5b9247da    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_5b9247da" ON "consultaCatalogos_formatopubpersona" USING btree ("AnioEjercicio_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_5b9247da";
       public         postgres    false    233            �           1259    57964 ,   consultaCatalogos_formatopubpersona_7d70f29c    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_7d70f29c" ON "consultaCatalogos_formatopubpersona" USING btree ("TipoApoyo_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_7d70f29c";
       public         postgres    false    233            �           1259    57898 ,   consultaCatalogos_formatopubpersona_7e80bdbc    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_7e80bdbc" ON "consultaCatalogos_formatopubpersona" USING btree ("AsentamientoHumano_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_7e80bdbc";
       public         postgres    false    233            �           1259    57928 ,   consultaCatalogos_formatopubpersona_c7d3ec40    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_c7d3ec40" ON "consultaCatalogos_formatopubpersona" USING btree ("FuentesRecurso_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_c7d3ec40";
       public         postgres    false    233            �           1259    49981 ,   consultaCatalogos_formatopubpersona_cd68ec25    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_cd68ec25" ON "consultaCatalogos_formatopubpersona" USING btree ("PeriodicidadEntregaBeneficio_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_cd68ec25";
       public         postgres    false    233            �           1259    57946 ,   consultaCatalogos_formatopubpersona_d061293e    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_d061293e" ON "consultaCatalogos_formatopubpersona" USING btree ("MunicipioBeneficiado_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_d061293e";
       public         postgres    false    233            �           1259    57904 ,   consultaCatalogos_formatopubpersona_e9884a2b    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_e9884a2b" ON "consultaCatalogos_formatopubpersona" USING btree ("ClavePrograma_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_e9884a2b";
       public         postgres    false    233            �           1259    49982 ,   consultaCatalogos_formatopubpersona_f0115ab9    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_f0115ab9" ON "consultaCatalogos_formatopubpersona" USING btree ("Trimestre_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_f0115ab9";
       public         postgres    false    233            �           1259    57739 .   consultaCatalogos_formatopubpoblacion_142f8d67    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_142f8d67" ON "consultaCatalogos_formatopubpoblacion" USING btree ("ClaveSubprograma_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_142f8d67";
       public         postgres    false    235            �           1259    57745 .   consultaCatalogos_formatopubpoblacion_23d285e2    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_23d285e2" ON "consultaCatalogos_formatopubpoblacion" USING btree ("Dependencia_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_23d285e2";
       public         postgres    false    235            �           1259    57757 .   consultaCatalogos_formatopubpoblacion_4b57d789    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_4b57d789" ON "consultaCatalogos_formatopubpoblacion" USING btree ("LocalidadBeneficiada_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_4b57d789";
       public         postgres    false    235            �           1259    50003 .   consultaCatalogos_formatopubpoblacion_5b9247da    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_5b9247da" ON "consultaCatalogos_formatopubpoblacion" USING btree ("AnioEjercicio_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_5b9247da";
       public         postgres    false    235            �           1259    57769 .   consultaCatalogos_formatopubpoblacion_7d70f29c    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_7d70f29c" ON "consultaCatalogos_formatopubpoblacion" USING btree ("TipoApoyo_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_7d70f29c";
       public         postgres    false    235            �           1259    57727 .   consultaCatalogos_formatopubpoblacion_7e80bdbc    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_7e80bdbc" ON "consultaCatalogos_formatopubpoblacion" USING btree ("AsentamientoHumano_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_7e80bdbc";
       public         postgres    false    235            �           1259    57751 .   consultaCatalogos_formatopubpoblacion_c7d3ec40    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_c7d3ec40" ON "consultaCatalogos_formatopubpoblacion" USING btree ("FuentesRecurso_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_c7d3ec40";
       public         postgres    false    235            �           1259    50005 .   consultaCatalogos_formatopubpoblacion_cd68ec25    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_cd68ec25" ON "consultaCatalogos_formatopubpoblacion" USING btree ("PeriodicidadEntregaBeneficio_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_cd68ec25";
       public         postgres    false    235            �           1259    57763 .   consultaCatalogos_formatopubpoblacion_d061293e    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_d061293e" ON "consultaCatalogos_formatopubpoblacion" USING btree ("MunicipioBeneficiado_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_d061293e";
       public         postgres    false    235            �           1259    57733 .   consultaCatalogos_formatopubpoblacion_e9884a2b    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_e9884a2b" ON "consultaCatalogos_formatopubpoblacion" USING btree ("ClavePrograma_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_e9884a2b";
       public         postgres    false    235            �           1259    50006 .   consultaCatalogos_formatopubpoblacion_f0115ab9    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_f0115ab9" ON "consultaCatalogos_formatopubpoblacion" USING btree ("Trimestre_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_f0115ab9";
       public         postgres    false    235            �           1259    50033 -   consultaCatalogos_trabajosrealizados_3592bfa3    INDEX     �   CREATE INDEX "consultaCatalogos_trabajosrealizados_3592bfa3" ON "consultaCatalogos_trabajosrealizados" USING btree ("Estatus_id");
 C   DROP INDEX public."consultaCatalogos_trabajosrealizados_3592bfa3";
       public         postgres    false    237            �           1259    50032 -   consultaCatalogos_trabajosrealizados_5b9247da    INDEX     �   CREATE INDEX "consultaCatalogos_trabajosrealizados_5b9247da" ON "consultaCatalogos_trabajosrealizados" USING btree ("AnioEjercicio_id");
 C   DROP INDEX public."consultaCatalogos_trabajosrealizados_5b9247da";
       public         postgres    false    237            �           1259    50034 -   consultaCatalogos_trabajosrealizados_89969398    INDEX     �   CREATE INDEX "consultaCatalogos_trabajosrealizados_89969398" ON "consultaCatalogos_trabajosrealizados" USING btree ("TipoPadron_id");
 C   DROP INDEX public."consultaCatalogos_trabajosrealizados_89969398";
       public         postgres    false    237            �           1259    50036 -   consultaCatalogos_trabajosrealizados_ae6be32e    INDEX     �   CREATE INDEX "consultaCatalogos_trabajosrealizados_ae6be32e" ON "consultaCatalogos_trabajosrealizados" USING btree ("Usuario_id");
 C   DROP INDEX public."consultaCatalogos_trabajosrealizados_ae6be32e";
       public         postgres    false    237            �           1259    50035 -   consultaCatalogos_trabajosrealizados_f0115ab9    INDEX     �   CREATE INDEX "consultaCatalogos_trabajosrealizados_f0115ab9" ON "consultaCatalogos_trabajosrealizados" USING btree ("Trimestre_id");
 C   DROP INDEX public."consultaCatalogos_trabajosrealizados_f0115ab9";
       public         postgres    false    237            �           1259    50095    csvimport_importmodel_5180b393    INDEX     a   CREATE INDEX csvimport_importmodel_5180b393 ON csvimport_importmodel USING btree (csvimport_id);
 2   DROP INDEX public.csvimport_importmodel_5180b393;
       public         postgres    false    242                       1259    49648    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         postgres    false    189            �           1259    49649    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         postgres    false    189            �           1259    50057    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         postgres    false    238            �           1259    50058 (   django_session_session_key_630ca218_like    INDEX     w   CREATE INDEX django_session_session_key_630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_630ca218_like;
       public         postgres    false    238            	           2606    57740     D0c1b4bb49202f0ff700f84504f889ce    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D0c1b4bb49202f0ff700f84504f889ce" FOREIGN KEY ("ClaveSubprograma_id") REFERENCES "consultaCatalogos_cat_subprogramas"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D0c1b4bb49202f0ff700f84504f889ce";
       public       postgres    false    223    235    2216             	           2606    49878     D119b6828811740556612097f0937438    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D119b6828811740556612097f0937438" FOREIGN KEY ("Dependencia_id") REFERENCES "consultaCatalogos_cat_dependencias"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D119b6828811740556612097f0937438";
       public       postgres    false    197    231    2187            	           2606    49969     D19226b2354ae51d1bab7e105d5b6ce7    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "D19226b2354ae51d1bab7e105d5b6ce7" FOREIGN KEY ("PeriodicidadEntregaBeneficio_id") REFERENCES "consultaCatalogos_cat_frecuencia"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "D19226b2354ae51d1bab7e105d5b6ce7";
       public       postgres    false    203    233    2193            "	           2606    57758     D1d057f0d036e0d53e56f4cb3679ae2b    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D1d057f0d036e0d53e56f4cb3679ae2b" FOREIGN KEY ("LocalidadBeneficiada_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D1d057f0d036e0d53e56f4cb3679ae2b";
       public       postgres    false    209    2200    235            	           2606    57728     D1d3ac1f755f5e915e8833bf4bc2fcb0    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D1d3ac1f755f5e915e8833bf4bc2fcb0" FOREIGN KEY ("AsentamientoHumano_id") REFERENCES "consultaCatalogos_cat_asentamiento"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D1d3ac1f755f5e915e8833bf4bc2fcb0";
       public       postgres    false    193    235    2182            	           2606    57734     D23b5da05874cf61145022c50c12f546    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D23b5da05874cf61145022c50c12f546" FOREIGN KEY ("ClavePrograma_id") REFERENCES "consultaCatalogos_cat_programas"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D23b5da05874cf61145022c50c12f546";
       public       postgres    false    219    2211    235            �           2606    49873     D333580be3dab15a6961bff80d743269    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D333580be3dab15a6961bff80d743269" FOREIGN KEY ("ClaveSubprograma_id") REFERENCES "consultaCatalogos_cat_subprogramas"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D333580be3dab15a6961bff80d743269";
       public       postgres    false    223    231    2216            	           2606    57953     D344183b7b0c8568d34a80e3763ad2e5    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "D344183b7b0c8568d34a80e3763ad2e5" FOREIGN KEY ("OtroDocId_id") REFERENCES "consultaCatalogos_cat_identificacion"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "D344183b7b0c8568d34a80e3763ad2e5";
       public       postgres    false    233    207    2197             	           2606    57746     D3cd3ee93f0c174ce7c7048505bb88fa    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D3cd3ee93f0c174ce7c7048505bb88fa" FOREIGN KEY ("Dependencia_id") REFERENCES "consultaCatalogos_cat_dependencias"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D3cd3ee93f0c174ce7c7048505bb88fa";
       public       postgres    false    235    197    2187            	           2606    49898     D43a643115767c9733566b073f7f2bb9    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D43a643115767c9733566b073f7f2bb9" FOREIGN KEY ("LocResidActorSocial_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D43a643115767c9733566b073f7f2bb9";
       public       postgres    false    209    231    2200            	           2606    57905     D4ccd88b4b0740aec274422119dc09d9    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "D4ccd88b4b0740aec274422119dc09d9" FOREIGN KEY ("ClavePrograma_id") REFERENCES "consultaCatalogos_cat_programas"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "D4ccd88b4b0740aec274422119dc09d9";
       public       postgres    false    2211    219    233            %	           2606    49983     D54dfc426c9f7031d61f315f11606382    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D54dfc426c9f7031d61f315f11606382" FOREIGN KEY ("AnioEjercicio_id") REFERENCES "consultaCatalogos_cat_anioejercicio"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D54dfc426c9f7031d61f315f11606382";
       public       postgres    false    2180    235    191            	           2606    49913     D59e4a2489534f6f586590ff584310fd    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D59e4a2489534f6f586590ff584310fd" FOREIGN KEY ("MunDondeSePagaBeneficio_id") REFERENCES "consultaCatalogos_cat_municipio"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D59e4a2489534f6f586590ff584310fd";
       public       postgres    false    2205    231    213            )	           2606    50007     D5ad631e11a94c060436d3ad03ee4ca9    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "D5ad631e11a94c060436d3ad03ee4ca9" FOREIGN KEY ("AnioEjercicio_id") REFERENCES "consultaCatalogos_cat_anioejercicio"(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "D5ad631e11a94c060436d3ad03ee4ca9";
       public       postgres    false    237    2180    191            	           2606    49918     D6c0016e9a5b9c4286f37c445dc6292d    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D6c0016e9a5b9c4286f37c445dc6292d" FOREIGN KEY ("OtroDocId_id") REFERENCES "consultaCatalogos_cat_identificacion"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D6c0016e9a5b9c4286f37c445dc6292d";
       public       postgres    false    207    231    2197            	           2606    49923     D745f08753c4b4cf980ee7724a9b94b9    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D745f08753c4b4cf980ee7724a9b94b9" FOREIGN KEY ("PeriodicidadEntregaBeneficio_id") REFERENCES "consultaCatalogos_cat_frecuencia"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D745f08753c4b4cf980ee7724a9b94b9";
       public       postgres    false    203    231    2193            #	           2606    57764     D87affc170c6a89255c777c2d058bd1a    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D87affc170c6a89255c777c2d058bd1a" FOREIGN KEY ("MunicipioBeneficiado_id") REFERENCES "consultaCatalogos_cat_municipio"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D87affc170c6a89255c777c2d058bd1a";
       public       postgres    false    235    213    2205            	           2606    57911     D94d4550272c69b5a3a885c8612e4619    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "D94d4550272c69b5a3a885c8612e4619" FOREIGN KEY ("ClaveSubprograma_id") REFERENCES "consultaCatalogos_cat_subprogramas"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "D94d4550272c69b5a3a885c8612e4619";
       public       postgres    false    2216    233    223            	           2606    49888 >   FuentesRecurso_id_12eb10a9_fk_consultaCatalogos_cat_fuentes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "FuentesRecurso_id_12eb10a9_fk_consultaCatalogos_cat_fuentes_id" FOREIGN KEY ("FuentesRecurso_id") REFERENCES "consultaCatalogos_cat_fuentes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "FuentesRecurso_id_12eb10a9_fk_consultaCatalogos_cat_fuentes_id";
       public       postgres    false    205    231    2195            	           2606    57929 >   FuentesRecurso_id_31f41906_fk_consultaCatalogos_cat_fuentes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "FuentesRecurso_id_31f41906_fk_consultaCatalogos_cat_fuentes_id" FOREIGN KEY ("FuentesRecurso_id") REFERENCES "consultaCatalogos_cat_fuentes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "FuentesRecurso_id_31f41906_fk_consultaCatalogos_cat_fuentes_id";
       public       postgres    false    205    233    2195            !	           2606    57752 >   FuentesRecurso_id_63473acd_fk_consultaCatalogos_cat_fuentes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "FuentesRecurso_id_63473acd_fk_consultaCatalogos_cat_fuentes_id" FOREIGN KEY ("FuentesRecurso_id") REFERENCES "consultaCatalogos_cat_fuentes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "FuentesRecurso_id_63473acd_fk_consultaCatalogos_cat_fuentes_id";
       public       postgres    false    235    205    2195            �           2606    49594 ?   auth_group_permiss_permission_id_23962d04_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id;
       public       postgres    false    181    177    2146            �           2606    49589 9   auth_group_permissions_group_id_58c48ba9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id;
       public       postgres    false    179    2151    181            �           2606    49582 ?   auth_permiss_content_type_id_51277a81_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id;
       public       postgres    false    2141    177    175            �           2606    49607 3   auth_user_groups_group_id_30a071c9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id;
       public       postgres    false    2151    179    185            �           2606    49602 1   auth_user_groups_user_id_24702650_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id;
       public       postgres    false    183    185    2159            �           2606    49619 ?   auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id;
       public       postgres    false    2146    187    177            �           2606    49614 ;   auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id;
       public       postgres    false    2159    183    187            &	           2606    49993     b2a04d445b0cc6c9a0cbb47b995af568    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT b2a04d445b0cc6c9a0cbb47b995af568 FOREIGN KEY ("PeriodicidadEntregaBeneficio_id") REFERENCES "consultaCatalogos_cat_frecuencia"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT b2a04d445b0cc6c9a0cbb47b995af568;
       public       postgres    false    203    2193    235            	           2606    49959     c57744d9d213f6e8faab6d8ee8cb3f58    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT c57744d9d213f6e8faab6d8ee8cb3f58 FOREIGN KEY ("AnioEjercicio_id") REFERENCES "consultaCatalogos_cat_anioejercicio"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT c57744d9d213f6e8faab6d8ee8cb3f58;
       public       postgres    false    191    233    2180            	           2606    49883 ?   c_EdoNacimiento_id_68602f4a_fk_consultaCatalogos_cat_estados_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "c_EdoNacimiento_id_68602f4a_fk_consultaCatalogos_cat_estados_id" FOREIGN KEY ("EdoNacimiento_id") REFERENCES "consultaCatalogos_cat_estados"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "c_EdoNacimiento_id_68602f4a_fk_consultaCatalogos_cat_estados_id";
       public       postgres    false    201    231    2191            *	           2606    50017 ?   c_TipoPadron_id_1b853eed_fk_consultaCatalogos_cat_tipopadron_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "c_TipoPadron_id_1b853eed_fk_consultaCatalogos_cat_tipopadron_id" FOREIGN KEY ("TipoPadron_id") REFERENCES "consultaCatalogos_cat_tipopadron"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "c_TipoPadron_id_1b853eed_fk_consultaCatalogos_cat_tipopadron_id";
       public       postgres    false    237    2220    227            �           2606    50044 ?   c_idLocalidad_id_236bcae9_fk_consultaCatalogos_cat_localidad_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_codigopostal"
    ADD CONSTRAINT "c_idLocalidad_id_236bcae9_fk_consultaCatalogos_cat_localidad_id" FOREIGN KEY ("idLocalidad_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_codigopostal" DROP CONSTRAINT "c_idLocalidad_id_236bcae9_fk_consultaCatalogos_cat_localidad_id";
       public       postgres    false    2200    209    195            �           2606    50038 ?   c_idMunicipio_id_69ee7479_fk_consultaCatalogos_cat_municipio_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_localidad"
    ADD CONSTRAINT "c_idMunicipio_id_69ee7479_fk_consultaCatalogos_cat_municipio_id" FOREIGN KEY ("idMunicipio_id") REFERENCES "consultaCatalogos_cat_municipio"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_localidad" DROP CONSTRAINT "c_idMunicipio_id_69ee7479_fk_consultaCatalogos_cat_municipio_id";
       public       postgres    false    213    2205    209            �           2606    49863     cbb47b349960e4f969ce332ee746e835    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT cbb47b349960e4f969ce332ee746e835 FOREIGN KEY ("AnioEjercicio_id") REFERENCES "consultaCatalogos_cat_anioejercicio"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT cbb47b349960e4f969ce332ee746e835;
       public       postgres    false    231    191    2180            	           2606    57923 ?   co_EstadoCivil_id_7b800263_fk_consultaCatalogos_cat_edocivil_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "co_EstadoCivil_id_7b800263_fk_consultaCatalogos_cat_edocivil_id" FOREIGN KEY ("EstadoCivil_id") REFERENCES "consultaCatalogos_cat_edocivil"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "co_EstadoCivil_id_7b800263_fk_consultaCatalogos_cat_edocivil_id";
       public       postgres    false    2189    233    199            �           2606    49857 ?   co_idPrograma_id_5e55c862_fk_consultaCatalogos_cat_programas_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_subprogramas"
    ADD CONSTRAINT "co_idPrograma_id_5e55c862_fk_consultaCatalogos_cat_programas_id" FOREIGN KEY ("idPrograma_id") REFERENCES "consultaCatalogos_cat_programas"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_subprogramas" DROP CONSTRAINT "co_idPrograma_id_5e55c862_fk_consultaCatalogos_cat_programas_id";
       public       postgres    false    223    219    2211            (	           2606    50236 ?   con_Estatus_id_3d1491d1_fk_consultaCatalogos_estatustrabajos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "con_Estatus_id_3d1491d1_fk_consultaCatalogos_estatustrabajos_id" FOREIGN KEY ("Estatus_id") REFERENCES "consultaCatalogos_estatustrabajos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "con_Estatus_id_3d1491d1_fk_consultaCatalogos_estatustrabajos_id";
       public       postgres    false    2222    229    237            	           2606    57965 ?   con_TipoApoyo_id_3897031e_fk_consultaCatalogos_cat_tipoapoyo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "con_TipoApoyo_id_3897031e_fk_consultaCatalogos_cat_tipoapoyo_id" FOREIGN KEY ("TipoApoyo_id") REFERENCES "consultaCatalogos_cat_tipoapoyo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "con_TipoApoyo_id_3897031e_fk_consultaCatalogos_cat_tipoapoyo_id";
       public       postgres    false    225    2218    233            $	           2606    57770 ?   con_TipoApoyo_id_6ca564eb_fk_consultaCatalogos_cat_tipoapoyo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "con_TipoApoyo_id_6ca564eb_fk_consultaCatalogos_cat_tipoapoyo_id" FOREIGN KEY ("TipoApoyo_id") REFERENCES "consultaCatalogos_cat_tipoapoyo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "con_TipoApoyo_id_6ca564eb_fk_consultaCatalogos_cat_tipoapoyo_id";
       public       postgres    false    235    225    2218            	           2606    49964 ?   cons_MesPeriodoPago_id_25f9e34d_fk_consultaCatalogos_cat_mes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "cons_MesPeriodoPago_id_25f9e34d_fk_consultaCatalogos_cat_mes_id" FOREIGN KEY ("MesPeriodoPago_id") REFERENCES "consultaCatalogos_cat_mes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "cons_MesPeriodoPago_id_25f9e34d_fk_consultaCatalogos_cat_mes_id";
       public       postgres    false    211    2202    233            	           2606    49908 ?   cons_MesPeriodoPago_id_5873ad3e_fk_consultaCatalogos_cat_mes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "cons_MesPeriodoPago_id_5873ad3e_fk_consultaCatalogos_cat_mes_id" FOREIGN KEY ("MesPeriodoPago_id") REFERENCES "consultaCatalogos_cat_mes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "cons_MesPeriodoPago_id_5873ad3e_fk_consultaCatalogos_cat_mes_id";
       public       postgres    false    231    211    2202            
	           2606    49933 ?   cons_TipoApoyo_id_474dcc1_fk_consultaCatalogos_cat_tipoapoyo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "cons_TipoApoyo_id_474dcc1_fk_consultaCatalogos_cat_tipoapoyo_id" FOREIGN KEY ("TipoApoyo_id") REFERENCES "consultaCatalogos_cat_tipoapoyo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "cons_TipoApoyo_id_474dcc1_fk_consultaCatalogos_cat_tipoapoyo_id";
       public       postgres    false    225    231    2218            '	           2606    49998 ?   cons_Trimestre_id_1c2c0616_fk_consultaCatalogos_cat_periodos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "cons_Trimestre_id_1c2c0616_fk_consultaCatalogos_cat_periodos_id" FOREIGN KEY ("Trimestre_id") REFERENCES "consultaCatalogos_cat_periodos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "cons_Trimestre_id_1c2c0616_fk_consultaCatalogos_cat_periodos_id";
       public       postgres    false    235    2209    217            +	           2606    50022 ?   cons_Trimestre_id_617a18c9_fk_consultaCatalogos_cat_periodos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "cons_Trimestre_id_617a18c9_fk_consultaCatalogos_cat_periodos_id" FOREIGN KEY ("Trimestre_id") REFERENCES "consultaCatalogos_cat_periodos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "cons_Trimestre_id_617a18c9_fk_consultaCatalogos_cat_periodos_id";
       public       postgres    false    2209    217    237            	           2606    49938 ?   cons_Trimestre_id_6b923488_fk_consultaCatalogos_cat_periodos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "cons_Trimestre_id_6b923488_fk_consultaCatalogos_cat_periodos_id" FOREIGN KEY ("Trimestre_id") REFERENCES "consultaCatalogos_cat_periodos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "cons_Trimestre_id_6b923488_fk_consultaCatalogos_cat_periodos_id";
       public       postgres    false    217    231    2209            	           2606    49974 ?   consu_Trimestre_id_671b849_fk_consultaCatalogos_cat_periodos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "consu_Trimestre_id_671b849_fk_consultaCatalogos_cat_periodos_id" FOREIGN KEY ("Trimestre_id") REFERENCES "consultaCatalogos_cat_periodos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "consu_Trimestre_id_671b849_fk_consultaCatalogos_cat_periodos_id";
       public       postgres    false    2209    233    217            �           2606    49851 ?   consul_idEstado_id_74f8039f_fk_consultaCatalogos_cat_estados_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_municipio"
    ADD CONSTRAINT "consul_idEstado_id_74f8039f_fk_consultaCatalogos_cat_estados_id" FOREIGN KEY ("idEstado_id") REFERENCES "consultaCatalogos_cat_estados"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_municipio" DROP CONSTRAINT "consul_idEstado_id_74f8039f_fk_consultaCatalogos_cat_estados_id";
       public       postgres    false    201    2191    213            		           2606    49928 ?   consultaCatal_Sexo_id_3ae100a7_fk_consultaCatalogos_cat_sexo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "consultaCatal_Sexo_id_3ae100a7_fk_consultaCatalogos_cat_sexo_id" FOREIGN KEY ("Sexo_id") REFERENCES "consultaCatalogos_cat_sexo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "consultaCatal_Sexo_id_3ae100a7_fk_consultaCatalogos_cat_sexo_id";
       public       postgres    false    221    231    2213            	           2606    57959 ?   consultaCatal_Sexo_id_6ac787f8_fk_consultaCatalogos_cat_sexo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "consultaCatal_Sexo_id_6ac787f8_fk_consultaCatalogos_cat_sexo_id" FOREIGN KEY ("Sexo_id") REFERENCES "consultaCatalogos_cat_sexo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "consultaCatal_Sexo_id_6ac787f8_fk_consultaCatalogos_cat_sexo_id";
       public       postgres    false    233    2213    221            ,	           2606    50027 ?   consultaCatalogos_trabajosr_Usuario_id_51f8a702_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "consultaCatalogos_trabajosr_Usuario_id_51f8a702_fk_auth_user_id" FOREIGN KEY ("Usuario_id") REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "consultaCatalogos_trabajosr_Usuario_id_51f8a702_fk_auth_user_id";
       public       postgres    false    183    2159    237            -	           2606    50090 ?   csvimport_impor_csvimport_id_300566f3_fk_csvimport_csvimport_id    FK CONSTRAINT     �   ALTER TABLE ONLY csvimport_importmodel
    ADD CONSTRAINT csvimport_impor_csvimport_id_300566f3_fk_csvimport_csvimport_id FOREIGN KEY (csvimport_id) REFERENCES csvimport_csvimport(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.csvimport_importmodel DROP CONSTRAINT csvimport_impor_csvimport_id_300566f3_fk_csvimport_csvimport_id;
       public       postgres    false    240    2284    242            	           2606    57941     d2e6561e94129903fca2ecf7cd99697c    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT d2e6561e94129903fca2ecf7cd99697c FOREIGN KEY ("LocalidadResidencia_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT d2e6561e94129903fca2ecf7cd99697c;
       public       postgres    false    209    2200    233            	           2606    57947     de9825810b480c8e4b2647e6356e32f6    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT de9825810b480c8e4b2647e6356e32f6 FOREIGN KEY ("MunicipioBeneficiado_id") REFERENCES "consultaCatalogos_cat_municipio"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT de9825810b480c8e4b2647e6356e32f6;
       public       postgres    false    2205    213    233            	           2606    57935     dfee052f1d18917c4c35dd7137b68f3a    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT dfee052f1d18917c4c35dd7137b68f3a FOREIGN KEY ("LocalidadPagoBeneficio_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT dfee052f1d18917c4c35dd7137b68f3a;
       public       postgres    false    2200    233    209            �           2606    49638 ?   django_admin_content_type_id_5151027a_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id;
       public       postgres    false    189    2141    175            �           2606    49643 0   django_admin_log_user_id_1c5f563_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id;
       public       postgres    false    2159    183    189            	           2606    57893     e20cd183f2c8ada04c93a0dfd6b864c5    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT e20cd183f2c8ada04c93a0dfd6b864c5 FOREIGN KEY ("LocDondeSePagaBeneficio_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT e20cd183f2c8ada04c93a0dfd6b864c5;
       public       postgres    false    2200    231    209            �           2606    49868     ee84033d702a7be6c59ef1aa7a8657fd    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT ee84033d702a7be6c59ef1aa7a8657fd FOREIGN KEY ("ClavePrograma_id") REFERENCES "consultaCatalogos_cat_programas"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT ee84033d702a7be6c59ef1aa7a8657fd;
       public       postgres    false    2211    231    219            	           2606    57899     f6ba8b4574e3497fb2dd1ef2a9fec011    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT f6ba8b4574e3497fb2dd1ef2a9fec011 FOREIGN KEY ("AsentamientoHumano_id") REFERENCES "consultaCatalogos_cat_asentamiento"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT f6ba8b4574e3497fb2dd1ef2a9fec011;
       public       postgres    false    233    2182    193            	           2606    57917     fe2ad57d7b4fde987eb0f4d1ad1a470e    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT fe2ad57d7b4fde987eb0f4d1ad1a470e FOREIGN KEY ("Dependencia_id") REFERENCES "consultaCatalogos_cat_dependencias"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT fe2ad57d7b4fde987eb0f4d1ad1a470e;
       public       postgres    false    197    2187    233            	           2606    49903     fed0c41393ad7fb0cadccb061f0a02a6    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT fed0c41393ad7fb0cadccb061f0a02a6 FOREIGN KEY ("LocResidDelIntegrante_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT fed0c41393ad7fb0cadccb061f0a02a6;
       public       postgres    false    2200    231    209            �	      x������ � �      �	      x������ � �      �	   &  x�u�]r�8���)8�F��s��p� �0э��=�
$�,��0�����J9K~�)�Ð>�=UӶ�$Yb�?��q)�C����]�-aq�P�R��鬖縮�����
�¾D�����D�z�����~�Iq4>~-�<�];��өpM�"���U-Iy��Ud�߭��[A��www+(��{=mf?��gVIu4q��"�{Ebד�+l�����U�ݮ�Jd���Z�d���u���G*�Q��Z��u�ؿ߬��.�مK��gdK.�sg8�Së�W'���_��`�<Yeɬ8%�ʊ���Y�r�?:�|��x�D^3� # 5���@-5��2��Z󽜶\I�3j�tō �x �fԠ��{|$Y�ݜ5Q����O@
fp��Z��rx�u���T���b�(���5��9�jo���5���?ج��(Zf��`5�;f��`9��[���Mڼexζ$ʌ?�Ƨ|9��g|5�|MfV�f�d��㋢,�!B�%�*f�@`��{�^>�AIV{c�(ʆ#�e�� ��~����Y�5_R�v��Eŧ>�#e��g,X�l4��j�E��O��a�c]T<b��<b�QLjV��t�Q��7$�E��"��*Eyd�(X�h��|(�ዢ��A���y�gb��Y_� � ���y���?Ay��(���ZF�����D},����E� ���(P�&��"�R�<:�
G�.�!�8���kQ��xϒ<$B����e�4����( �S�,�e�_�"�7[ψ�Np'�c"�C�Ʌ����Sny}������6,܂�eѐ��ĜIF�̸$�MFv�>�۷��<�&r�D{{�P����;�@3Ǟί=�χ=��m��\m��7��y�C��;ށ�w���x�ךn����!`#��ϲhI�\Q�1I�\��(C���tQ���qp+l��KaE�$Wް��ޑ�y�;�W8��;��^��p�{�����M�� b:������8�k[I�ڈ�l[;J�#c;V; �;�~�#��ܧuo      �	     x�}�KO�@����+X�3%3Ý�D��h�VPh3�i����.�g�%'o������	VT������nf�^��(4l}��<��>z�ԏy{q�m��\o�L�ưO�k�!RW���#��Є�(�����!eM�vH �5n2J�R�j:��KB�lJ�)뢆����ҧs�tI\l`,�6�h��o�Vn�;�Mh��\�c��[�q0��A��h�b*��$Q��M�U�I�jZ�XB�%]7�E]����(�b}9����b�      �	      x������ � �      �	   �   x�ѷq�@��X(F�g��E��!"B�s&~�'^�K�m�1Ś��1�k.q�C�}	�:�R!UIhUbՄZ!WK��%��!��K���A�u�z]�^7��C���z})�~(�~)��՛��&)�)Jo�қ��f)����<�޼��Zo���m�z[��6��C���z{�}�}�{����^�w�ѻ��������>�      �	   "   x�3�4204�2Q&\� ʔ�D�q��qqq U�      �	   �  x�U�Mn�0���)|��$��e*�i-��膑X��4t)(z��z�\��������9��q�S<->�Q�N�1�>��ea�Υ�*P�u2�p�mX7�
���	2,�s
nT5j�q��j��[�8a�vyy\d��'�f֊�CzjcJ~��:�֠6�ڀ�ť�sÂ�a�N��Ť}�28�K�����kt��Yq�_9c�ON�<Ҁ>�e؁>��竛-蓓�N�2Թ�^v�����_��XP�c:S���;sX[lJP��Ǒ*P����O>����tpw���eP[��?��K�+[���Tֶ���^X�������a9�4���%苄<d[�.��gfk��0�<Ҁ�1������t]5�؂��)�L�T�A琸���}��"Q}�QJ����      �	      x������ � �      �	     x��W�n�H>O�qF�b0vr$;x�28�H{iC��hOCG����	�8�Vs�+/�Ս��q��|����������K�hY��5��j^��7,����a���s������Y�Z�Ϋ���ZJ�<g,�a��C�*m�W5�[c��)����tņ������Y%I�177+X�*4j}".jI#fP�t��sq��O��n%�cRRR0L��t�8�[�Ͻ$��M���S�\H�Ȳ�ʹʣ��
��y��f�8�CԲ���c�P��д�9�6�_�:�l��x�KDꅲ�cj��y�U6m��ܶOb����7?Q�9�<�1�w�=PQ��dX�̉йӻ�dI�#��/�3&$�%rBu��^�/��ɴk�෴b\�2i~�e��S�����xg�0�-6����s�t��Y��;5�nr����^1M��h�����%A�j�,��1oAYլ�50Y�X�)��c���<G��)/���J��`U����l����|GS�s��S�껤.`vu��9�a�$N��˕,H�#i��,�iJb���E�������v�ӂ���4�]o>�f�;����$�Pՙ�q����u��ib?�m���A�4U���k~�0,|oP�=�P���ώ�} �a9��p�e������+ W���.��~#����YӴM�-6jzU�S��=Fu��BiR[�
u�GJDH�u�獯�ž�2xC��+�kX��װ��ʃ��JնH���a� p�G��Y�f8|�mA����Ze�rG��b?~$O�>6��I�>z�c��L�Bs�""jM�6@�IT4R�v XsB�/��@f�	�iPm
彺-{
A�OW��6�hp7MUU�:%(o�ɰ�!X� ߫�ʞj�}A<� �[T%�{<�9>� y;�6BAPp�L=�y�\a�m��#�9q3<��= óA��,}X�z@ʉ��$il�2�I��Zо<������M��i".e�zNP�-�ө�!� �mUW
uc#evdK�������5s@�9����w�~>��~u�\�#i����L�A���x
�wt���K�>I_�x�9D�.�(WM�N�QN�'�z�P�P�H&�uO����DK�xF>�Գ�pF�o�"�I��Iq�ǂU��"��n,z������ˎfC��q����˓�|������Vj�)��8{��z��p��p&��zwN;D�3��p�3�(��^�O�^��I|�o����i���(�"G�oO�L� �_ّ\f�d��ɔ#���j"�k�Ć��#��߂�+1oԈ���p��J|� cH��$��NQj�@�����tV�3�{2�$���ڪ�E,>�~�)$��2�5��t���o�$A��~�s�u���ü���V%���SU��u0��ڔ���[2>=��rൔ�߂>���1L^�x:�u<0�U�l]Iu-a����=�����?�}���I���Z�*���mIO���m��������a�32,F      �	   i   x�3�����)I-��2�tv�tN,NL��2����,2M8]<9]2��3AR���>��y��7�)�d&�r�q�s�&��*@�J�2��@������ R%!B      �	   \  x�]�Mn1���S�	��=�K�HA�	D3B��8Nڑ��m4p�Y��}1^o�����n�*�}n::����G��x�/�ͭ�\RP������Vd�%�z�x7xYa�}֡���ƚEg�6�A/:���<4^S�a��0�j���/�,@7�hz�b�iҗ���m�_X����Q�|{	����c���k��5�ܐ�M���萋�y���Oe1;�]�?r��7�]�>�U��5���?pTˍY�3��Z��l�o!U��Jfk	:j�>�0v�\�8��CҘ��5�S.,6��>�<�݂Nz�üH���^�$|���J�%�}mN�<ioAߘ�zǏ���㪒�      �	   X   x�3�t��t�+M���2�v�N�M-.)�M9C�8C�2�f�Ρ�Υ�%Hb�N��N���+�oj^1�HKN�N�'W� ���      �	   �   x�e���0E��o!��|��E^Y*�P	QԖ�'�$AɖX�^�B �}��U`����pp��x_��@��<-��x�cM���t�.!.S�	��p���E7�X�|����)����.��k��K�Z��$�#�zC-C���l�2Y]�D���vz      �	   �   x��OKN1];��	"ʟu:���T�lL�J�2�����k�Ћ�$`�$��z����x�Bc�9���6�����`��u�j7)a,c���w6?�.bS��D�rz1�sQ��]B���^��ڤYB?9��������U�&G��]ú�u��`�b���I�����5Μ�.����%� �%X�����@�$g���{֣a�����-�˾����S%so�����5ͦ���~1Wg�{�]S���ϻ'�{��T      �	      x��\�v�Ȗ��_�PN�"�BI~/�֕5^s{M��_P����l~c2�:��Y������&P�$n5�)T��U�Uz3����b��.�6���if^������􏮬���cѮv�k��!���E5?+����w�mWT�U1����lՖ�g�Q?�]vE�m��Ey��Oγ�-�J�b��j"[R��ο�ն�+��I��?��$�Mg�f��jZL�k�`y^���i��������Ľ�7{�fu^n�f��2ǢU@!�u��f�	��]Y�@Ƚ`����~�u��@�ת����=����1��x��g������m��=�cmȑ��L�Fj��ɩ�/=�����/���wM�-�u6��#I�7Л�$���}�7���f~�f���I��>�eQcN:�I�R��cV�ϳ�b��6v��X�Ͷ-�r�lTD
���]Yow���6�UL��d��+��u����"kom��Og�:t9��T���`�m�v �r���L�D�_���M�b��������K�hq>��!��"D#Bٛ�`���q�iI�q�i/�"X����A/�e�ݹ.�R��[E��.�z���5%�A���9]a���^8\�'�v��\���4���6��:ۖ��ք����d{d:�f�������_em.�Ex����o-(p��X�!)Sn���Y ^wYn��n��}��j�Ɉ�i��(�]�~�_�����(����M���iH�"���i[��!Br-2l����Yü^7+�+��VeV?�q��(���M#v[�
H=9���l>���ݣ�$E�b6R _6%�{GA���?:�����.��g^�[��S�koY�ͯ�F�<*G��&M|6	�7�54	�$����}Y��w����m���"��.�uQ�e�j�D�B:�wŷ���h�yz��t�q�N��m��e���^G����&�S�j��`�M:�{��_w���*{� i�l���m&s��=|���i\��?o;헫.�-�Xek]�1y��~������b�,Co�xz�m��TNF%P�E��Ana3Z���۲.W�J�LLJ���]�VL�h���e�܋��K[�19�K7���ý��'+bIv�]���n��L�8Vfؒ4ù��L�˼��"ؿq�Z�f����lU&���\��+�C�����{+I��,�#�$���}�J�~@������.f[Էb��dw%����4|�i�g+l��e�Ueo$��V������u�h/'���?m+�	��~ٓP���ʼg6!�00�����zU#��,Gx�kߗ�}�^J�O��F��n^g���"�q8�p�c:o;�(!��_&4������I��2�yS��y�Uj�d+I6|񵐎TF���^tm�o�*�'*'�X/S�$�l�)I���:��*#G`�<�r �R󔒖d��L�mJV���-�2?9�6ǌ�v��[)� V�M�Ի����c���E�`f�"��9��B\���WXpJ�Ӊ�O�?z��p�r.p�h`Xk�҇N�k�.�D�[�4�� �dt��Yc� h"LD ÔfQ�����*2����|�e����_h$�6��4���*��-�QQ��[-��(��؃�q�x������:���X{d^E;�v<�&�v��^��$����jװ�\�E$>%�J�:/��z��R�H��Pz ÔK�vd�E_{�#k�L�3kE�1�Wmq�l�9`�#�ʯCPkC�1��O�)m�Ƅ��Nfp��>��Ȩ7N��SiEf0�7������W05N�,a4�2	�uIw�s��k�<[�I������ț,�׶O�$�:�		�z�1���P��\M09��&(.�SY|uR���`�WE�&
�3^qU|Fy����]��t����6u@��M�jZ\�2�kA�ѣ�t��'	�K��� pf�6���݄/3��.W�(R"���vb��AA�����܍�0��+�� $�x�5��6�(G:�=:iy71G/���B�~\Ꮣ��麼��J�tte�D�m��|�m|��wB?�ڐ��H�{dd-'�G�A��h|������*R��~�չxN��%�~]����lbr��D�[C�F$&R�ܧL&$��JJ�R"���;���r�wu�w`d�#���Sy�fD�jw�ʚ��"�;Ј�!�}�!h�jkDҍ�2�Y�,~Dc-���7p�+���A�����M3������N�V+C���)��m�pV
k�T�l�g��g?*�#&��_���Æ��:�I����?���Y���.��T�N۶yh毛z�,KL̑B�&�j["%Ј�%�&P�1��^�%BE<�;�âZB�R����O�!� �!���Tn��%�*C�&�>��T��G%"(K&���v�[ڗ �i��m4	�A�ϣ�9O��㘏Y����%��cտ�͍$Ҁ�y��_\������48B��YE~_�]�� ��&}N�B��DS��@yf;βv+���?�EFP༟�%F�E���	�[~�	���}��Ӫ�4#����O��r�!""_lG/���++
��l��Sb�m��5K	"�&$���fn;�$%�����ωc���mњ�!��T,߂�mfc!�zF��*n������la�G�o����T*".a��\�uA���mu��/!V�{h�9ш������D�"�g�҆
�����l��:kJ@"5�/��03�k������*#K5�g�B��� ح�0e���X`�]�I�"\7H���?7r�*"�x$j֥�# XB�z8
���}�vVd۶|T)!ᒆ��m$Ic�1k{#�H�=7�86�ɬ/��bm�|������e_M�P�������m�i�b:)uB���V����S�����=
�D!GEn��~��d���������#|VAH���%�؝��Fr��&�D�A�M���>��9�Q!A��"����JbE�8Y�qY�
������J���;cn��D�����m�n0�π�Q�Oi�pL�Q�W&$I�8���u�q ���3m����(|���������c�+^5���{��L*�R?+u���i�K���M�a���%�`�>K1T��&9�V��ԟ���q�.z\��])۵=�H
�~q\Q�j�����.NԤ|����r�.k@��}�v9�מj�N�)e/K��V/���9�ɾH�f+ "!أ��9��@�%�Y����JDD"��f��LDex
�kUN����G�E���S��#��y����cEDҏh�4P���䈈��T}:P"�/����b�'Ę��bb�kT�n�7k9>9ru��R�4#!0dׅX��1���w-\�� S�o�v�[�f/�`�[�]OsgiGa���oZ�� }z���q�5/w�9���H2
�x�6�����b���f��Il���\4Qm�$�3�tI�����������%oIB�=ף����Ќ�Vȅ����B��i7&|,���%a1�&�v��Y�)D�h�LV�yv'Q����X�c�v��X	�6�2>ɡ��� 5
��G���:��C.;�Vd(�z�v��%욧W��9��y��ĝ%�+��WoAj�	dU�������R^������-����*,�q�.r���4Xz�}������D/%7��i�	�/ʵ� %-������$�c�tBIJJ��E'We�7V�-�L�h2=� ��N1%�����V]V)IH�+o��ձ�K9�˳�@�R�!jIG���-�@o����pv&HʨFl%�G���5���
[Ūu�(��L{�J�(�TL����(FTL��%���Y��-`<���N2.)���].q����U���)�NH(�t����#��=l��DDTn��ݏZJ�"!l��K�&!l��`�4_Ra��v�#\d��C`\}��ǐ"$ ��>|+1�?:��#��d>[)2��pX�g��w<xDC���y��@�'.&�֔S�����W9J|�����cUڔ}�dQϪt�	�;�7�r5-؋&Qú��"���[�FD��\ �
  ySuۣs'z�V4�K�&!v~t����OYY�zuE$(м���j��B�T�(DaF%B������ ��r��+90t�"�F��0n����+[��>�W��B�$l Mźɏ`�0��M�	h����Z��	�+}5���۳���)�XnK�rbju0�LD8����\�t͈f,ō��(dS�qDq-<<J�d2��,��f�#�k���)F�6��h��/�=[�#Xm��C�Ar��z�B�X���mMBЖ����z%)�����8U��DăX���������l�^�++�b�?�!]�^R+B��ފ1%B���PyL徒s;5!1\��ϥ&iR�����1�Nc��هF�z ��јAM�aeUe����Rl�7D�!�Zzhc"����-��O}d"z!�e�j�ݍ�Ȯ<gy�h�G���ϐ��N�S���g�P=�I=/�q"l�!u�ٿ���,~=l��t"��{uY�e��!fG��)�Q����e�sI���B�	�),��PV<a6��א�G?�g����|)�\V�\�A�H�
�ˣcL�B�^mĴ��.Zm3ގA��D2�G�KZ�����D:��a��%�>��T�4!�9��m��.)�	ɒ�'����F��HB���tMR"�ku�*GT���Ϸ�]�F���\s����1?�B�h��VdJ��� �	������E}""�Z����*n�|O'�D3X����	�9�v�E�ZD7�>�9���M��(%�r&G��[[ގ�:�pA�Qq����A0D��b
$)��Oڏ`�sI҇بwM0IHm��~�ez$�����Ζ[� ���>|Cd���K��v�Zo���� B�����q}�D?�M��T�9�F�#�Fp��³}�S}ݴM���iz:��M't��F�4МX��#�a2�}I6����Js"���w_�H#j������z=B@���$D�����4!3�.�oh�Sꑙ(|ʸ�����M���ڿgmv��^5|����d&#Q2H���6�ID�5GSܻ+[S6H�4 �B�[~����2R?u����"��D�ύ�b뤤 q��]��[��K�E��#(��rx��
��?g2AFp3!�2p�m��Zyyp`��5���Ԉ�RR�Z0���CH� �K�N�>�4Q\&��Lo55�=�ܚQL����EϮ4��5�k���Am2"
�3��\�I��k�|���yi��+��/��*�sbK��H5!a�SԸ��J�*W����3���r��aHpS��A�6]Z|Pl���&Ը�
=|r����/7
��bG%�����Vf�G�	��O,��Wkg��F���X�U�D��,��u@��rM���ng�?�)J�(�0���;WY��Q���l?\@#�.i?LF���wx5@��\�b=���jl�fn�DD⪹�"�S ��m݈�{�E���z�Z�ܾ�<��Ug�V��Bw����t�FI����'֊<��0ԇ0`绿+�_�n@��2��m�ڋB
�ÜD������$����c��T��̦��F�A4��L4=�h&��S����l%�}",Lc���L�DX��dhKB-Y�ӚkI�%G���������$ݺ�~!Z�\��5���k�Z��]�ݷ/2��%h8��
 48�,<�]���B��Ў�T���G>��BBX�_�c����F�yPB�?y1AԈ�/�u6	�T�����j* �~�o?>|���`x��6��?0�-�9r��v���p�73�����.�b-��6���!H	�&!��>%��s���	,�}�t�@�Q�sK�g ���6�4v|�+��T~a�9Y�)1�geh����BB)��r�ٽ��-ti�D޴/�\��t��D�C�k��eqs亾hr8ݱ�tb�A�"��I�T�U� ab~^�7�0Z��0荻���.�?1�hAV"o�w���9�d�IU���H�$��ttd�� �!�G�CyN��(Y@;>��9zaIZs�%�/��Ԏ<bM��Ӱma��{�p��銈u�͆ߚ����/�]yD6��ԬU��{���o��$̚|ݥ�j��R��#���&ty����.T���[�N֔G��t෦����ȕAD>�}�ژ����7��9/{Y������o�\G>)��5S�2���J�3ذ	>Ƀ{�o��/�l$���5�������2S#m���0�T�r�i��e.���r�O�`��d���,x�'���F����MEc��$r���Mvc[, %�q.�x�U��FiIms*Ts�T�t��*j��������_�ܔ�B:���Q�?�4� !1�;}C꣛9�y�����b�ܣ�,��)u��ⵌs��
F|�r!��r�6�n�e�Qè�RN�x��A	����4�#�"(H���I��M%�S#�-i�����ʜ�z��O��&$
1<�h�4�.���71�z��f<~�f�"��0~*?Clas'o���M��4b�䐦+�^��$�qկr]�8�9+�)��"��%Oĥ��W�TZ+�m���vQD���xFv�oo �w����<��骩>7�|��e]lƦ3"%0��;3Pg��gr�|+Y��?��u�	��7�s���L?R9�����ɳ���姕T���Z�K�7�ոX'r�c;v�����~��� "��      �	   f   x�5�A
�0D�3�)ƪ��h��|�Q�x�s�]���@�e�N�p�����m�Y��*+�w�W����u�����ɔ�4���^������_�'�;      �	   �   x�5�=j�0�z|
� X��1���!���f�E�"��jr�-S��XF�,��FH��MUz��b׻�Qkj���;�9�����8���L1�r�6�~�#�Hm�>�������g������F'zM~`�J>\t���ˎ8i�L�J#��+����C���K���lPM��6�#˦��Ɩo�n�z��<��7c���۸�7�h�ٹ�^h��9���N.��SQ���^�      �	   �   x�U��n�PE�w��/���]ZB�0H��n�0�:�S>��~�?ֱ�ܜ�9����xld'��A���=J�7�/�zч�����*-ѕ�$�Օ��g��Q��L/�9���f6�+�Od��u��V���y�w���a<���)~B[����3�c��u?�Qݿ�%h*4ڇ�ζ��jQ]��ׂ�� ��I+      �	   D   x�3�1���uRQ�!A�\F�!F����~.�H�Ɯ!@�䌢؄3Ą�9�1(Ym� PL�      �	      x������ � �      �	   %   x�3�t�tK�M�����2����M,N.��b���� ���      �	      x������ � �      �	   0   x�3�t��t��K-��2��w��O*J�2�t�t-.HM�L����� �	�      �	   .   x�3�tt�r�2�p
��s�2��w�qt�������� ���      �	   .   x�3�t���q��2����t�tt��2�t����p1z\\\ ,b      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	     x���]K�0���Wx/K�G���Y/tl�B�z��.���{:n6�%$���='H�y�L	Х�)ش�����cY���n�ê�/ W��e��wZ^�~s�8{����`���H�R��L	�_�L����+�Z�7���aM9Yyo�X$�X8.[�1��A6tH�U����<�G���8��٧�~:m��H&O��e�Z�<�{vD��^��Uy���uN�xo��m���y��3��ߖ�%�{���$��V��      �	   �   x����j�0Ek�+�رƐ>R���T�E~$=E���(K���=w;)#>�i�LVn��W�����ǋ�Ǵ)/��I���*�~�t������U|Ģ�BV�	>W�s����~��eԴYp�Z�R�Jʠyaa�9�6ÓcD�#���H%�ׄ�V�]SV�O[��~P���͵k���e�      �	      x������ � �      �	      x��}K��H���+x��N� ��R��JZ����%�.[�2$JA�$�@RS��e~���V�:ԡ�n}�[�x����v۬��Z�;��/�����r��<�sf��}l��&�l��[�Mr�K�����OE�S[�J_�O�/��Ss����)��~jӟ:;�K�)���S�~j��E5�L��zq����rz�����<C�� :���7y��:{���o�)��f�寸>�<=�����ǹ���O:�������*M�g���瓓��7�gW�sX�?�ف߻Y,����՛�'A��٬,�ś'�NN_�y}�'ћ�$�>!)&����zz�ݶ��y}�M���n���t^�?t3ᨱa�c[�BY(���\XM���M�\Է}�����U<��Y�K^�����C�/^�\��TH�R"@[i/���Wg�'O��I�&��3ϑ�={���~z2�zqu}��+S:�؇��O��=[���f5�!eH'%����������x9'���_w�˘Q��	��{7��$�4���,w�,6�������ժ햫��^�Ztw�R��/�S�B�xOO�庯��fzr��
��m�X��q��q���T�U�!��*d����m�������>o���x�Y"㗛~��m;�V{�F���3�xGO;�4bG��N��]��Oӓ���o��LϷ�!{��u_3����A�q��,ANn��e�>����כ�o��庹�/I�:��>.�3�������mjx��z���-��ϧ� ��~�殥|R���.5}�:�f����,W�$_9��ۛ͒_h�ᚮX�n�M�K�n?FC��泌�-��-W�z��y�G^7�ep��^�_,hno�>C�YnI�T�OGZd�����ң����!���@y���;�|���C�5���?��|�}�n���c�C�1�ǁְ�E����cӯ������Y�=�{==}_/���$��dUG��#:����8p��C���������h:�����ݻ�	<�z��|�'�K{g��U>v��&�U�a������<F����,`//��Q��_l�v��_�%�I�^@U��)Z骙�ͺ�z�3�!@����8�M�49�qaf,�Am�X���z��F�h�Xo�h���W�En���i����[�1<�w���������]�G���
զ�٘	_�{r�w�Z��; �3.��ϛ���C2I��m��H[�Q{
�h�����}��d��G��� �X9f�+�5�}=}M{꾞���0�g 8A̦���x6��_�O��h@����/����S7�G�>Gܴс���J�OV�Ua����P~ǟ�	�ާf������������D9�ȊkF �����Շ�A~��	�Q�g/�������ˊG��K5:g��f�/�OXQ��09��O^�ǿ�:�7�
��u��mA�Vl��y�O�oP���ObaP	�'��q ���G��0[�iҡ^��*Y�O$��J:,�0� j8v����q �n�_�V�Ix�M�+(��0��H
���Y˳����3��w 
����3Pe%IPy�o��}��-��ࢹ��Ը��A���ƪ|z�C��z���b�D\���>��gP�����&����s����?��J`������.�~M���݀¯���K�8���g�˸���{�����d��	�\�}Do!��7Ђ�s�'8���w'>2��<��W<��I5���=�ս�>5��t���Aٸk�K'��br��y�׮ƫy�܁jEcLL�/3��$skf�U"h��k�K�נm���������nt`���/����(ؠ����m?���=�-�Opw�`�
��K���	�4V�^�&���g�E6v�P3�-�Z����Q��<$�2��r���R��T�r��m��Ҁ'[�a�_e'���� N�.p ��S�C�:��gf���l�w��H�<kW k���W(Y��G�1B�����Of��\߷ E��}s�ׇ�]�����蹱��hע��u�e�^79��㢜��W!1$/���3�k���WK_����n��4���vC#kk@��U�5R:�*����������L�N@��Xf;�E�sB���������KNh~=iWD��ϸ��%gw�|���p��
�%����UW�=��P|�ps��0�� �l��JC@�~C��T��lo��y���=}&l�
�`��3��,���4�-E�l�����T����؉t�cq-�^�'�������󓒃���_F[����s�{Si_x�����AsPt�fU/6�{j} ��p���>�&+��"z!}&�%FJ
�P�9����,:p
�>���p�ٛoy3
ON_�ӷ�\��l�����F����(0ME"��oy�y=߬b��� �:�}S��/��G�-$G� ��{￉kM��O ��#��C!V�^蕱�:��A���b/5�O�AnPxO��z\r�,8��狊�y�xG��|��/m���`9<y�l�[2����qW%�̡�XqP�Q���f�k�|��lְ��A�J��N%���]˱.���W���g���ar�F�<-����0}���aJ`Vxff8�HKE���2fP� �?£h���wp�?��G����o�s���#X���(L>���!���ϓ�U�w��{�έW��E?קƑ��4����+��>�뼚��`'OAa��v�_(.{α}Xu\�W�M��4N�Ȃa�O���d5}y���3�B s~�X��������4�%Ҭ��޼��d���g�N#
��_�d���`����XgL��t{��h��j�G�3Ӏ�\r���C3�D@�+�fW�� ��L0�0Eer�˟���~��Ċ�er�&��[p!�K@�P��C�}�~/?"A�Cs-gs��U���]s�v�2O@�0�_���N��(<��(g��7��>l�uL���$B�������$��g���Y�d�b�f��=$��o_j9�������oc����?��V�����}WϷ�.#� %~|��i���o]��<A@�g�VC�u�	L�uD� ���c%_RM^o0W�`�U�*Tl�&o�_�y�$� z�����&>,I>@��/&���L�h������ �x���mPy-�i��d�����}�A�n����[w���i��r��#:�����Jp0��o�0wˮ��` ��1\\�P�H0@�a��@q_o�Ht$	N ߶4�Dq��/ <�7K��@�Ɋ\b�o1��o>G$	
*��ag	��/w��$�$�|���8[7��cTn�E�C!��râ���[�sG������澡8_D�Rb�E�Co#��&�~�9��$�!�2%s���)'O�MR���9&��r5^�*% ��r�j�͚!ɿV)����%�R��,�䚠B�*�U�X�A�%�\)8Nz1��s 4���OA�?�{nș�r����W���֌4e�\`Ox`���7j8�S�Ɖv}�����A�wxy��@�O,�j�|kD��Qf;n��m7~��P:��"#@�]W�1c�CΥ8��;t�]���^�Vb,��D�_߳�f��S�#A���h!K��eO�"��A�ވ�@���z��:����qtNϦ�=-%�0H��!	ܰ lVH"q���sv��)W|I����ͼ�g���ζ$X&�������ߚ����[�7���&��4���L�����j������ �
�����4C�e}�O���O��<=�>����_����C�6�������}���[��w���i~PrD���u�|z�yC�hQ�r�ޞ��l�]YD��ɡa��N|�\\L/�Y�gL��. 	⊜^LO���n�M�"��ArLȄ�C�ԛ�)�h�bj}L0���L��lr��쒋D���L����R������@��R�Xk��N.���?�������W�����s<�\����_"楆F��R����/�k��Ͻ����W�_    ��_�rʂx�'��\]ǿ���Aˢ�}�:��~qv�DꦙFo5�$3P+�ק�?�)����/� ��~�6yJ����.����8Mh�m�	ˤ��i�g���'�L�G�jn��d�I*�A$��ꡙ�����6W���?�N�S�r� A��>�����h��S��v9ID94/�w�w,9���j�)�]w�@�SB��[uGh���}Xp���2���{�=�Ch�/�$���>��{�
��eKq��m�"�ߘHo�#賵�'߃f��Q��N����l��_���;�wDXiD !:����}Ga��H��@V|�.����������f#6D6����}w=dؘ&��A����''7�����_1]����~(1��nz��w��2���"]�,@̿����=�bh/y��r�qD���g���_)y��HLx��f�-G�����	0�:�C)x�-��Y�����j$�I�6�,�;O��z��E�@���=���e7��~��uD�� `8"��$�1�JP�#-���%l�C�����#
�o�%�1K�fy�|�H}J��H^ ��n�}Q��_Qg�&h�:Ԕ6���?l�1I���b�8`ao_E����Db�ԣ_㺞w��n��5��bf�����f��*"K���_a$(y�,�U��h���)���N|�`	���)f8D3��?]�FAN}*�н����6~��z�=��B�_���[��)*I�pU]�{����T�$/���v��v1͙To?�%��9�ݐ� �Bo>�ޜ����-�(����f�m 4�=f���i�b�G�9��a��N�"�J}a����B�]�"��A8TC8�t~JsO�@%����ه�6~@��I 	�������"��P��l7y��s��"e���4��t˸�)LPǠt� 8����C�z&�u ZU }�/2	$8�,6V+�5#��W� ,ϱ$k?#�yG��n���e*"Hv�aqw�Q6�!��93� �cR@  B0v>֣%H�@���@"8�p���1	�|#� Jr�+� �S��Pn~�d�I��Ӻ��,^���ٕ:�M0�0^r�����t�I.@j9"�%.X�6�U+q��*A� 3d.��NA�56��`���j�q����0��^_��]��d�
���@"U��kL�d�����Jɏt�M6?��8 d�#��&P���T����KP��w�� ��Gi^&K�P� ��n<١c�LT�I,��S�s)"K@Q!(
� M"[�G�JPQQg"�@�k00���!�"�: �v�b���uD���.67?� D~B�<��yl�.��"Ǧ��$��W�5��m�?-��z6���e�I���+::����.h
����]���`m7+���F>V����Y��~���ƁS���l*���7O��Am�h����*Q��;L��/dR��W�����b��Gg�L��w��J������Doh���n,G'�azڴ7���)���E��id��JS1���k*K!vE�o�桙O�?��]j.���K6E_ի�6�M�MGB�9́�4��Cq{�C�9P���`���
i5�/f��C	Q�YJ]����_N�װm���f�<%��� ��/���7x"�J	v��1C�h��hEKX�Ãgg&�Zl�u1ZP�;�>.�a
�P@����q;���F'��̂_S���/,��&P��e$����;�
�Unt,d"�������}}e��)�, �r1���-��iAq�!�[M^��n��u5}���5��,�xJ�8V��Tw�Ճ(����bB�x��Ԭ�e�zA�{ˡ�M�n�7X����4�g���l����f��rz��R���q،膹"`Rs��u�/�髺���*$`3T���%��X8������ށ�^��5�����<���TL�#˝`͢-X�gX�;�A�.�WO f)j&S)F�Ф��G�	����j�"���uCW��.�p�~��������� ��;ĊW,��Y���oa�r1����u�������k��h~n���FLcm�,�3��9N����L� �̍�R|���=:$�Fk�O�k���B�Z��0G1�3K N
S$
x{fG�a����f!c���dy�o[M������j1Z��:0
�7"d�5O`�F_����m��z�Q���^�c�F=���d	�+�-��x$o��v/kw�H�]ṓrmpP.��-?��]D�l2*�b̀��߃s��d?z�����YCEF���]	��0��� �2?�!@�n�I�`�\wXx�y���ϣ���44��'����-	�$A�i�F��n>�<5J���Up�)@6^T�PC��R�2��u��y���1j(���S����5MIf�J�g>��]y�e�t�h��V���G��k b;�x�y>�&O�q�!���^���?�M?=�����(fC%O����첂�I�f�ܵ�v��P;o~i��7y���ܞK	�;���'������'/�S����h���Q>	�i����2�sl75��B�cf\H�V�&׀����\���W�?�����S�S"n��R^��vd�
�~k��ǰF��Wܩ#�X�s \M!��5�ث�D��[������!S�P��W)�m&/�: ����H*���4�NZ�,��1:��g}�<.�brl���{���u�H�>�D9Ą���	]���b/�o)$��|�\I_��ࢹ�6-2^Q5�G	NǌC�gM��C���U����d��*�s䈚,�m�22-�H8I�[��$�>��W�g�\��0RÉ�2�\���l������f�v&9d1q�Xb�Y8�������9�?C|$����� ��Na���������`q1���a��k�9�/(KO�%,.6���ay�v���{�ȌF:E�glA��䤟S����(C�)5�*��e�Z@�V�����&6ČvQ��pW`�e�{>V� );�v���[c`[� ��ސ+��I�PD�1�Xd�vf(���u�|lF�a���!'�I����o8���?8�`����9l��|�i?2�mk����Ug���:>oV���⌃$�oUV��.��"p�U?#M� ��ק�P'W�q�@��u�a�\e*}
��g�C��m���q��4����N��Pύ�T� �$c08rC2��(y6A9�a�&���Ƒ��3$�|rZ/���H_;c�Ai�Sq�D�1��F���k�s�*���Ἇ�'��`���=�h]K�wbW8��Qh\b���	�� �+,_[E4W8� �*N4W�+�� {��8�1ƜƘ���IتL���1vi�Ɯ�^e6��@%�ތ��k���h;�X}T�PN��	2�FN!�3)���C-����8��W��X&&a��N7FD	=�}�Y��!�L͛ k���E�	q4��Ԃ��,��@�F��'���2!���6����9뒹	E��q�����/���O�`�O0V���Y��T>>Yǎ��(s�H�m�����s�!1R��U����(td'�J�Ų����֢�úe,���s���)5�)�R2:yA4�r�<�7Ԑ�^1Lұ�H4�pf��y)�����9պۧR�ʑ�������Ł��vPt0J8,(���=��& ��Rc��a$����Ɖ�%��Y�����vDH`Jq�RZ��T����rYL����ll˱�W��
��c"~����9�(��ԅQ	�
G���	)�-��׌<9�� 5�۔���1�E����\Jd�n�taPZnF^ST�,-7TA��8�_^��%�y3�&'0�2ec�fFr�nr�(h"vd�����AJU�J�?�gU!SK�S��ۆ����$��m�1]��rFV��**\�K�i�a��������ޣ��ǠZih�4߲4R۞��˶���֭�P�)�,.N��)SJǼ4s��    8) Wd�{��9�� B��8�a�":���������t�*�*�ʂ�@�r�I��'K>��1�h�i �L�1^�_m�cc3A\��PQ��>��i4t-�߄�U�	�ިx�f�E�ͣ,8M=��쵙�cAF39<6��P�!M{��5y�s2&�|����`A�{�m����
D(�[��Gß�ܷwqX�f�uGI�4NA`��}}�:-uJ��Κ��i�be��� KeSs��b%(�4tD���K9[��Ti1��X�'�u�������'���-�2T��r��G����ҕ:2�'&�}�>l�@',"Lp�Х�/����`)Et	8� ClD�M�8wD�`�jإ��%\b�&a��!���DYq\�kr����a�q	�p����T�m�F��	�J���D��y%�������9���<G��;��5� ۽_6������~�E�!�8+����@g�U�+Jg�E��^H˄"���~��.��pysH�T�PiVq���q��Kx�`�J����R� ��NaD� ��":���[Cɒ���-4�pX���]h��j|
3��bfF��7�`Qh,ɼ��v�N^m�\0�͘L�1e��Xf����'}��/|�]T��kԙ<������U"X���U�L?OH�Z��"B�Ë�
���j�NN.O������'�O��l��qx�F6��~�j"s�W��Ư�n>4���L�&Y��,��u��E�Y�P"q�|8�A��RJ�UN�V���ID�S��b�64�<��P��Z�U*��*S��%�F�u��!%��ͤ��D���'O�,������d�鿫�o(�@�Pvb}�B�YDQ4�F����_$2�Q���vܡ�*Ͱ�+"1)����p��Q����&�s[���sG�c������Gj���Z8$I^���ƻo5h��b�y�I��x�6��E�\ppf��c;�̣�H E��Ql8�Aܟ�$��d�^L�/�4��D웁#�`�gи�ȜrXe	�8����'u������*r�~Bf�b���$�$4�7���X����`{�~T�o�����~��t���v�0*�NC�`T;y=�r��+V6NÐ���4
AʯI�4٬�b���(H��v����"@�a*x�2�����������E�IU8�L�*�E�6��������!��cQS��LRh�mfyl�@cg�����zN��+K�$�Fw8f3�=�C� +��剜�z�܍�\J�	+. 8Y��elYř��T
YIrާ����ʔ
ǿHв
r�.G�k�o���@�&����s,&|����i3���O��	6��O��X����(��e��ڱ�!7+&q�@D�сR, ��f�L�6`
�N���#���⃆S-�O |�e�o�6���L�Gv��J[jpX��+oIJ�	 #�q��N�*��0�mq
f�82jK�KQY��-����U��G˨�ai��ܽ�.�^��Yħ�����Al��v������QA�h��^Z�1у��b�Kc��G��'��Ő ��0ʡ���+�:#�#$�Tx�X��x;(/^�܉J]��1$���v��@8��U`�OJ�A%y��5,���R.ӎH|�9�i-8�e����,�{/)�k�8����B,�5"�P��I��ĉh�՟b���P�<b�<���2[���X�yF�5�ŀ�Q��V(�M}!�
����*��(qf+�xe�3�Z�ZT(2���	n�����_"Z��~�cM
n���b=V�Gt288S�dx.����ĸd��38�W �4���W	N�D�� �.����f�"U�E҅��S��Q������K�8|���Y��{�����s�&H��,1i��Q��ec�
�١��fDs��¤E�l86Cu2�p�~g�%bjS�)���K���̥��n�R��	�ߣ���R�A��������E�sY���LF��ટ�x��c�,�, Lfe`�юűo�4�(�R�Ʊgq����f�l�2��r��䚆Z�� �����sy4��r�>������^���}hQ��Gyh<��J8J_�<�QT�������"��Yә�S�i�k�A�s}�#:f1/�FK)uǱ���v���j�\�qj)i�E������5Z-!=�!6I�G4X�%8�"�,NI{����������e��)4E�w��9^v��DM?a���D]l�а�1��"�]A& �"�C���í78!$����k<�T��Q9���8'D��Ȓn�N�u����ߌi�-*�(�����Q;���z���qT>�cv��,��^� ��(+J�)�qY��r:�(!�^.7��*�&��TuE�y���>j��x���pg2Ml��J�$O%��Oq�Y�B��bT�L�r�m��1!������7=��1�B1�)�<X��L�n��/`��K�s�]O�:c˂|z�ގ��뮏�cg�&����K�
�vHG�#���a$o��z����7v��Y&֥�8���h4�ьp�i2�7"Ѡ5$V�܎�c��ѐ5$��
����􍆫!�<��p]?�mG�q*��e�W�	�VC���Cf|Q��)IGDz��z����Hs�"�� �2pV���I���=[���xcT!��y�Q;�a�lx�#����������)#&9���R�I��=8d,���T�O���{�p6�+V|��m�9� �! ٙ����� m�!d���\�U�/�I	���Oq��$z)[��2G��1�#4c��\��%AzĤv&eI��2��m%�lD�*`Y�6�ZŸ́{�:��L�mkv�i2C�%��=*��|J���!�e�R�Rì��	�08"?]Hy�3�C��c,��F��B��#� ^��FA07� /GWz��Uy���I�a3��䆣�s�>(Ne�qpL���{��b!�'p�T�,i��ow�W�'������M�s�'h,��"/~��q]fD�@�F�Q�j�Ώ!b�_�zB��:1f�0��4AӔty�׫�	�eD����.#n��b�[`
�V���d8�k�sW���'�+y��8�@�L�T�ay��A��m콏4���f���a8I�K��8��,��-�8�c����<D5�#��̔��OO�l��0�����=��pC��.Ͽ��W��+��|<m�Ew����h�!�b�Y͸f������&��ɿ�u�u.��M��/��ׯD#�*Y#�/e��5������e��^���À��\i �����,�8,������j!'mv|�,ȼ���o��M��P�p&��>�o�/^�]�U��aVt#�P�+n������?\�C+g���t�^�'B!�N��%$RX�O\1��X���'��`ӗj�N� ��H�a��i�k���\\��	�\��6I�z �R�&��!��u��8[�B�d4�R�D�J��7��B���]Nb������6;V�"#{oh�āL{EQ�)�9��8�	C������D�uX.CK/���o�8SQ��%���+v�7#�I]��`�2�㌥�4���'�m��������ٌ>GC��[�3�B!w�7��F���JC�����?z�K�=\�DX}��-8�S��j{��F��;^f��׼�5�L�%�p܄!k��E��X���h�s��EB~ز�Y���:2���H��WB�,�I�dL��}��{����}� �.�-�PQ��6Ϋ�,J��j�8�p~�jo�F*}�����"pRЁ�!�i�`Xс
��,���e/����v&3|:!�n�Y�I�CWVI����u{���s��Jb���&כy��\��nʄ�|�����Ǵ�\c�P�M�]0���q,S}�!b��1˅����8s�C�xH�(�Q�+|��7Rf�|�=$^}�!�QE�j��6n�ĘC�Ů��+��P��g+�'`��y��<����!��sK�dR�u�>��.����F�?��YC�d�����V#k���O�d�pdo*K�o��ON%�    HF�X��nG�^,�21��$KZ�����t{_�,����@�|�
��u��ƕ�萨S�&�:�)�MC���6�Y��QQ���2�R[N�t+����^P#D�	�(���:�s~?c�xOea=�PZ��g��D�A�_"�	��e-_�o�-Fc QH%6��Q
��H4��A��zʦ����aE�F�#�ZA�3��>.�F��Y���RkOϋh4p�|���᠙����-�\o�7�<}�����hrt�N)G��=���yRh�8����������b8��Ǹ��!oF���`�t�r�H�p�`��4_fOn��/��@O�(sMIw�d" |6���'o����#��Ȯ�roMJ�@JX�;:�G=~�Ք8�d�	=���]Q�����Qi��N����D���%����
+�	�&'u?o�.��2%��7xN,Ώ�1#�٠Hrrt�Js���[�����d"!Ώ����4hpb@�;k��\t���g:�Q������tL�����V$U�S���	^��i���Fq�˯��i���0�~~�#'�mt�A�DÇ��������j��Թ�"9��k9;��c ����oh��M�]�U�V�%A>�;�b�r�D�<�❆���f2,���~��!|O�5�
��^� ù0|퉮�X���gX7ǣu�y�A��x��6dĶ=�^� ]����c�50�k�Ρ�PI��(��%����Ǽ��{�ʂ���;�p�ˈ�ᔚ���a!'��ݘ�ᴐ�	HiBb%�R�c.�a�'(�7Y]�E�]/��b�7"KPj�yX�@.���{�2�'�N.b����c?�L��m}3/���
�/k�>z�a-:^��g�2��x<���<��(Э����Ǌ�L`HE�V�BUAQ�X��	渙@l�ʤ�*_&�ԍH���+�)@��)����p]�ɢ�;~y�/D��AA���+6�"#Nۿ���L�EsӋ�����5��/]g���9�!#EH%���_��x�K�o�t�K��A��?�\X�᥎��ȱ�x��n��q8r��*��=�|�[�����#IY4������83f0�A�N�۾~G��D4�9�!wⴘ�ݧ����f����LV�M���-�q�!h�b�� ���<^��M�m���`>h��=��x5c���268�����0��x���4ڌ�Z����-ؤCR��w���u����CT��lt��gŌ�]"�G�A����bs�D<��*�,X�3_"���x$Y�}x�4���$s���Z�V��x�AL� .`�T�`qL\-�v�L��� R7@Ȅ�1�"T3K�Y�Q�й�x��B�щ���j�Uǔ����2Ә�l��sc>?�}}�ENe���u�vf8�j�� twҖ����O�p^�>~DI��#V��!�cw�f�C-����/�����4K��`�������-�:?޽�:q�ȴܪ�dA�����mOn�iZ�j]n��	2?n�ۿ��'��LcΒi��6��i>�k+�y��&��p��=Q���QY^�h$����p'�j�J��:�����	������y1Qs��
��r��A1�~�
�b�6�T����y�#��w�P=_%@"�Vy����4���?¢��1�r�iV��a���Ѐ�M���8�������W�t�6�_UH�p~��2�F��v;ِ�U*͔of'g�P�"^�qn�Ir�5`=l*�ՙ�]��эa|�-cMfYFd�&�.�ݭKVB1g`�.o���EMJ�O��`�!��]�Bg�K� )c9���,�EL�4^<:s��!2��5�ğ2J�N�p�����+�(� <i����4Ǌw�(����s�BDn��	5Oۏ�Є'd��QF9!��檐�d�� SFi!4�����/�u�c��o�(�$Îx��X��j�{p$����2�=��I2�r�"����Bf�JBo8����`��q�x��X�rm�+�+��9�er��y_�#�4^Sy.��7�J�(�Sw���x�ʔ#�� ��hvr�&���t�A��n����?�ױt0	�(� �`�>s��Pa�����m�u�M�'2�7L�QWɖV��\���P��v3�gQZ���vbV��8�.=��4�r�Pc�9�x[|��S��!p�������eޫQZ.,Ñ�|�1��a\P��M?^ËK�s�~��ܖVc/��d�?��(c����$�;k@�$u��Ӝ�7*��c�հ�z1x����na�4��
 D���C����C@�K�F�x�ġ68}�b��b:5��Ȉ`(�ɰ�GV�ȋ�4�C�7�cK�A��{�X�Q7����2���F��0��ܜn�7��җNc�T�̋��c�����(�[�����38�͗N#ǃ廈 Ϭ;}?	S:��<ɷ�$���� �h���YA�!;P�	�����b�M�S(��UP��
�^����O0Ft��4Шx�l�4=�K���&���c�8!�+��O�e1 )
3������C� ��E$�ph��!�I���v��"O�������l�l������W����s���p�C���yU�m�<�����	���7�c����2^�Aћ��x�����S&P�6�Y�#�q��9h�QqZY&�	����:�4Ѯ�	�*�(XiU�PL�U�7�\���r>r�J.C�'3�U19oQVcf�XiYj�a�8="�y;1�#�Ԉ3d� ���˚+��к��,5�ͫ�VV��p��o��Zj�J�X���D�ξh0����RC�Ë�@U9y��Sӳ��s�ˠ�gi��v9$��,oР��pl)_VM.����6Eb hXZ굒�l�C^"-ű/�8�!e7�Y>{�^]cԚ���є���G��\*�a��gq8�R�O���g�K�q����َ��F$NC+�+�q�ώñ����6��$*4-b���>��Z%��1�3��=�+�8�c� �G]�* ו��<2�l��E��e� ���X�C8�'��I�u3zxB
�pv��q��J�Gß*V�N��w�Et	�JT ��K�f����JpV���7Á=<����fU�,��rr�����[t�l��Cr���7G�P�JC�ѥ#���yF,�@���.T�Ȑ��/�؎K�4��^�$���!� tT]R����={�!�󇺁� n���'N��@���F(⠡	�HR�M��<~�QG��B��K�q�s�k!� �	yn�q�� ��w�b!���	y���'��#3��.i(�<���s��z*���ͼ}Kd�AR�(�!w��w�W������hƱ}�c	�,dub��ʸXԟFA�������˥�E5�.�� �?1�"e���v��ku�!7���/���� �ܦ��e���I���&��!w�Σ�5�J������c�
�O)1��ΐ�	A`*�-".Sb�qf��y�lz8죩i�ۿ}h�1���q��p��n�TDR_�og�y�h��=�8������Hq�"K�@q8����T���Ƶ}�s�"�0	) f򊣡��$Q�"	�����p���؇��.��h�	���U��8��lٷ�.��f8\1�Dk�50 ��z77�BÏ������}��ԯ�D����!��O6�rܗ���
�L�V�q5�3!���+a�$����r�unwr����̓��C�z��$�=ƙ���P�Ȳer�Ag?0rF}�%{W8�'V4�⛂�%g=���*�Ku���0N|��K�.K�?���oT�.y�9��Xu�i@>���ba���αn��1?� M�)A,cu2N��MbN�"ڜ9f�[k��G�PC�t���ΦQ�`4��3�A^¥˭w�s5���.�z�B�`5�a}*�
Z��[�릗��3^r�n����d5@��N��W�����zq'm��ź�j絸*]�$��+na)2�H���V�e$�xA��#Y�`50�Xb��ɛռ���j��&~�����G^��#��8h �   �M��tp�ϱҔ`5���(��7�;=!Ϋ8� �[9��+�x�����0�T�������=��dAI��e<�@�Vf�8_C�Fu4`����vx0�~�\��E�^�=%��_n<5"ĉ���@�KQ1��r������[>{󏽘9�b8:�_�6&�����?�_X}��      �	   \  x�u��n�0@���L#����ߘ4�$0WG�T�~T��������]���x�sIw0���D��L<C����k��6��'87��"��=������~=�x[�\���XP���3���d�ûBe���l�������UR��V�cK7��5
1�wX	�)9Ah �v��=i�rAǒ�YB��G#�EA&�8�C��ֲ��#K4)Ls�Y��@�p�d磟�<K��h�c�1aX�t���Rm�D�(2�� �i4�C�ɂ�/m�%y(s$y��p�=��	̑�'$g�%ޑ����u�9R�tF��$��*�wG���K���ԉ�|�9���n���;?�� ��wW      �	     x����n� ���O��*h��5*!���%�ll�o_���?��7�,�|Μ��9Ncc��Oai  ]7v��}��3�3�'$+�ɴ�_ ��k�y�\1 ���/C7ޯGls=ݨ�n���������Ρ"S�2��}�;�y薥�������a|MU5G�9j�κ�G|��E�펠sD~!�).�~��_����Kt��ڥ��}�T�
����|[�yw���M� �T�X������>�:�M�bڔ�#6K(�?�cP�^?0s��˝�i$`�.8�f�`�#�q�AH"�1�"Z"�|��9t�t��2%�(��~L����q����D[�V ���:D��Ї���L��e$7Am�������pHX�i^�&]��k�$�Nr�X�Lo>�:�\`��L�12�'�L'����z^n9����0�P���Q=$�8ɞ�GA����|�ǤM;�8��-3f�W=ψpЂ`�L=�x�]���3�'4(����_P�3��+񴨌�����?��+      �	   
  x�e��o�0@��W�h�
�����p%�FS�_�K:?Q�_o�d��_�{����k|��Em�������t��.�;P
+�%ǜ|PNjA8��pYX�� ����>X�W��<YM�<[�~�T��<tz�����PrR�K�B�%�� ����RTB�v!_��$3�4�C�"R�%i��� r�7vi&��E� ��?�#���?n��
��<�,mXj�6j�.�>�?>�`��Ct1�b��鈠����"�}�<�{Y)f�     