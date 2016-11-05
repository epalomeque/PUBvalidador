PGDMP         6            
    t            PUB_validador    9.4.9    9.4.4 a   �	           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
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
       public       postgres    false    5    181            �	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
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
       public       postgres    false    185    5            �	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    184            �            1259    49552    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    183    5            �	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
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
       public       postgres    false    187    5            �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
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
       public       postgres    false    5    191            �	           0    0 *   consultaCatalogos_cat_anioejercicio_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "consultaCatalogos_cat_anioejercicio_id_seq" OWNED BY "consultaCatalogos_cat_anioejercicio".id;
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
       public       postgres    false    5    193            �	           0    0 )   consultaCatalogos_cat_asentamiento_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE "consultaCatalogos_cat_asentamiento_id_seq" OWNED BY "consultaCatalogos_cat_asentamiento".id;
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
       public       postgres    false    5    201            �	           0    0 $   consultaCatalogos_cat_estados_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "consultaCatalogos_cat_estados_id_seq" OWNED BY "consultaCatalogos_cat_estados".id;
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
       public       postgres    false    205    5            �	           0    0 $   consultaCatalogos_cat_fuentes_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "consultaCatalogos_cat_fuentes_id_seq" OWNED BY "consultaCatalogos_cat_fuentes".id;
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
       public       postgres    false    5    207            �	           0    0 +   consultaCatalogos_cat_identificacion_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE "consultaCatalogos_cat_identificacion_id_seq" OWNED BY "consultaCatalogos_cat_identificacion".id;
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
       public       postgres    false    5    209            �	           0    0 &   consultaCatalogos_cat_localidad_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "consultaCatalogos_cat_localidad_id_seq" OWNED BY "consultaCatalogos_cat_localidad".id;
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
       public       postgres    false    213    5            �	           0    0 &   consultaCatalogos_cat_municipio_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "consultaCatalogos_cat_municipio_id_seq" OWNED BY "consultaCatalogos_cat_municipio".id;
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
       public       postgres    false    5    215            �	           0    0 '   consultaCatalogos_cat_parentesco_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE "consultaCatalogos_cat_parentesco_id_seq" OWNED BY "consultaCatalogos_cat_parentesco".id;
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
       public       postgres    false    5    217            �	           0    0 %   consultaCatalogos_cat_periodos_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "consultaCatalogos_cat_periodos_id_seq" OWNED BY "consultaCatalogos_cat_periodos".id;
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
       public       postgres    false    219    5            �	           0    0 &   consultaCatalogos_cat_programas_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "consultaCatalogos_cat_programas_id_seq" OWNED BY "consultaCatalogos_cat_programas".id;
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
       public       postgres    false    221    5            �	           0    0 !   consultaCatalogos_cat_sexo_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "consultaCatalogos_cat_sexo_id_seq" OWNED BY "consultaCatalogos_cat_sexo".id;
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
       public       postgres    false    223    5            �	           0    0 )   consultaCatalogos_cat_subprogramas_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE "consultaCatalogos_cat_subprogramas_id_seq" OWNED BY "consultaCatalogos_cat_subprogramas".id;
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
       public       postgres    false    225    5            �	           0    0 &   consultaCatalogos_cat_tipoapoyo_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "consultaCatalogos_cat_tipoapoyo_id_seq" OWNED BY "consultaCatalogos_cat_tipoapoyo".id;
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
       public       postgres    false    5    227            �	           0    0 '   consultaCatalogos_cat_tipopadron_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE "consultaCatalogos_cat_tipopadron_id_seq" OWNED BY "consultaCatalogos_cat_tipopadron".id;
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
       public       postgres    false    229    5            �	           0    0 (   consultaCatalogos_estatustrabajos_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "consultaCatalogos_estatustrabajos_id_seq" OWNED BY "consultaCatalogos_estatustrabajos".id;
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
    "RefDomActor" character varying(60) NOT NULL,
    "NombreVialidadIntegrante" character varying(20) NOT NULL,
    "NumeroExtIntegrante" character varying(5) NOT NULL,
    "NumeroIntIntegrante" character varying(5) NOT NULL,
    "CodigoPostalIntegrante" character varying(5) NOT NULL,
    "RefDomicilioIntegrante" character varying(60) NOT NULL,
    "Beneficio" character varying(35) NOT NULL,
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
       public       postgres    false    5    231            �	           0    0 (   consultaCatalogos_formatopubactor_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "consultaCatalogos_formatopubactor_id_seq" OWNED BY "consultaCatalogos_formatopubactor".id;
            public       postgres    false    230            �            1259    49826 #   consultaCatalogos_formatopubpersona    TABLE        CREATE TABLE "consultaCatalogos_formatopubpersona" (
    id integer NOT NULL,
    "AnioEjercicio_id" integer NOT NULL,
    "MesPeriodoPago_id" integer NOT NULL,
    "PeriodicidadEntregaBeneficio_id" integer NOT NULL,
    "Trimestre_id" integer NOT NULL
);
 9   DROP TABLE public."consultaCatalogos_formatopubpersona";
       public         postgres    false    5            �            1259    49824 *   consultaCatalogos_formatopubpersona_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_formatopubpersona_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."consultaCatalogos_formatopubpersona_id_seq";
       public       postgres    false    233    5            �	           0    0 *   consultaCatalogos_formatopubpersona_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "consultaCatalogos_formatopubpersona_id_seq" OWNED BY "consultaCatalogos_formatopubpersona".id;
            public       postgres    false    232            �            1259    49834 %   consultaCatalogos_formatopubpoblacion    TABLE       CREATE TABLE "consultaCatalogos_formatopubpoblacion" (
    id integer NOT NULL,
    "AnioEjercicio_id" integer NOT NULL,
    "MesPeriodoPago_id" integer NOT NULL,
    "PeriodicidadEntregaBeneficio_id" integer NOT NULL,
    "Trimestre_id" integer NOT NULL
);
 ;   DROP TABLE public."consultaCatalogos_formatopubpoblacion";
       public         postgres    false    5            �            1259    49832 ,   consultaCatalogos_formatopubpoblacion_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_formatopubpoblacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."consultaCatalogos_formatopubpoblacion_id_seq";
       public       postgres    false    235    5            �	           0    0 ,   consultaCatalogos_formatopubpoblacion_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "consultaCatalogos_formatopubpoblacion_id_seq" OWNED BY "consultaCatalogos_formatopubpoblacion".id;
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
       public       postgres    false    5    237            �	           0    0 +   consultaCatalogos_trabajosrealizados_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE "consultaCatalogos_trabajosrealizados_id_seq" OWNED BY "consultaCatalogos_trabajosrealizados".id;
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
       public       postgres    false    240    5            �	           0    0    csvimport_csvimport_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE csvimport_csvimport_id_seq OWNED BY csvimport_csvimport.id;
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
       public       postgres    false    242    5            �	           0    0    csvimport_importmodel_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE csvimport_importmodel_id_seq OWNED BY csvimport_importmodel.id;
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
       public       postgres    false    189    5            �	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
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
       public       postgres    false    175    5            �	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
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
       public       postgres    false    173    5            �	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
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
       public       postgres    false    181    180    181            5           2604    49527    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    177    176    177            8           2604    49557    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    183    182    183            9           2604    49567    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    184    185    185            :           2604    49577    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    187    187            =           2604    49655    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_anioejercicio" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_anioejercicio_id_seq"'::regclass);
 W   ALTER TABLE public."consultaCatalogos_cat_anioejercicio" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    191    190    191            >           2604    49663    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_asentamiento" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_asentamiento_id_seq"'::regclass);
 V   ALTER TABLE public."consultaCatalogos_cat_asentamiento" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    192    193            ?           2604    49671    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_codigopostal" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_codigopostal_id_seq"'::regclass);
 V   ALTER TABLE public."consultaCatalogos_cat_codigopostal" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    195    195            @           2604    49679    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_dependencias" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_dependencias_id_seq"'::regclass);
 V   ALTER TABLE public."consultaCatalogos_cat_dependencias" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            A           2604    49687    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_edocivil" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_edocivil_id_seq"'::regclass);
 R   ALTER TABLE public."consultaCatalogos_cat_edocivil" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            B           2604    49695    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_estados" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_estados_id_seq"'::regclass);
 Q   ALTER TABLE public."consultaCatalogos_cat_estados" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            C           2604    49703    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_frecuencia" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_frecuencia_id_seq"'::regclass);
 T   ALTER TABLE public."consultaCatalogos_cat_frecuencia" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            D           2604    49711    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_fuentes" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_fuentes_id_seq"'::regclass);
 Q   ALTER TABLE public."consultaCatalogos_cat_fuentes" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            E           2604    49719    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_identificacion" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_identificacion_id_seq"'::regclass);
 X   ALTER TABLE public."consultaCatalogos_cat_identificacion" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            F           2604    49727    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_localidad" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_localidad_id_seq"'::regclass);
 S   ALTER TABLE public."consultaCatalogos_cat_localidad" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            G           2604    49735    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_mes" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_mes_id_seq"'::regclass);
 M   ALTER TABLE public."consultaCatalogos_cat_mes" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    211    211            H           2604    49743    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_municipio" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_municipio_id_seq"'::regclass);
 S   ALTER TABLE public."consultaCatalogos_cat_municipio" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            I           2604    49751    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_parentesco" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_parentesco_id_seq"'::regclass);
 T   ALTER TABLE public."consultaCatalogos_cat_parentesco" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            J           2604    49759    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_periodos" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_periodos_id_seq"'::regclass);
 R   ALTER TABLE public."consultaCatalogos_cat_periodos" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    217    217            K           2604    49767    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_programas" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_programas_id_seq"'::regclass);
 S   ALTER TABLE public."consultaCatalogos_cat_programas" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    219    219            L           2604    49778    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_sexo" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_sexo_id_seq"'::regclass);
 N   ALTER TABLE public."consultaCatalogos_cat_sexo" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            M           2604    49786    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_subprogramas" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_subprogramas_id_seq"'::regclass);
 V   ALTER TABLE public."consultaCatalogos_cat_subprogramas" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222    223            N           2604    49797    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_tipoapoyo" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_tipoapoyo_id_seq"'::regclass);
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
       public       postgres    false    237    236    237            U           2604    50075    id    DEFAULT     r   ALTER TABLE ONLY csvimport_csvimport ALTER COLUMN id SET DEFAULT nextval('csvimport_csvimport_id_seq'::regclass);
 E   ALTER TABLE public.csvimport_csvimport ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    240    240            V           2604    50086    id    DEFAULT     v   ALTER TABLE ONLY csvimport_importmodel ALTER COLUMN id SET DEFAULT nextval('csvimport_importmodel_id_seq'::regclass);
 G   ALTER TABLE public.csvimport_importmodel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    241    242            ;           2604    49631    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    189    189            4           2604    49517    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    174    175    175            3           2604    49509    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    172    173    173            |	          0    49534 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    179   �      �	           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    178            ~	          0    49544    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    181   #�      �	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    180            z	          0    49524    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    177   @�      �	           0    0    auth_permission_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_permission_id_seq', 102, true);
            public       postgres    false    176            �	          0    49554 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    183   v�      �	          0    49564    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    185   ��      �	           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    184            �	           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 2, true);
            public       postgres    false    182            �	          0    49574    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    187   ��      �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 57, true);
            public       postgres    false    186            �	          0    49652 #   consultaCatalogos_cat_anioejercicio 
   TABLE DATA               M   COPY "consultaCatalogos_cat_anioejercicio" (id, "AnioEjercicio") FROM stdin;
    public       postgres    false    191   x�      �	           0    0 *   consultaCatalogos_cat_anioejercicio_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_anioejercicio_id_seq"', 4, true);
            public       postgres    false    190            �	          0    49660 "   consultaCatalogos_cat_asentamiento 
   TABLE DATA               f   COPY "consultaCatalogos_cat_asentamiento" (id, "identAsentamiento", "nombreAsentamiento") FROM stdin;
    public       postgres    false    193   ��      �	           0    0 )   consultaCatalogos_cat_asentamiento_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_asentamiento_id_seq"', 42, true);
            public       postgres    false    192            �	          0    49668 "   consultaCatalogos_cat_codigopostal 
   TABLE DATA               X   COPY "consultaCatalogos_cat_codigopostal" (id, "claveCP", "idLocalidad_id") FROM stdin;
    public       postgres    false    195   L�      �	           0    0 )   consultaCatalogos_cat_codigopostal_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_codigopostal_id_seq"', 1, false);
            public       postgres    false    194            �	          0    49676 "   consultaCatalogos_cat_dependencias 
   TABLE DATA               d   COPY "consultaCatalogos_cat_dependencias" (id, "identDependencia", "nombreDependencia") FROM stdin;
    public       postgres    false    197   i�      �	           0    0 )   consultaCatalogos_cat_dependencias_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_dependencias_id_seq"', 73, true);
            public       postgres    false    196            �	          0    49684    consultaCatalogos_cat_edocivil 
   TABLE DATA               Z   COPY "consultaCatalogos_cat_edocivil" (id, "identEdoCivil", "nombreEdoCivil") FROM stdin;
    public       postgres    false    199   ��      �	           0    0 %   consultaCatalogos_cat_edocivil_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"consultaCatalogos_cat_edocivil_id_seq"', 7, true);
            public       postgres    false    198            �	          0    49692    consultaCatalogos_cat_estados 
   TABLE DATA               U   COPY "consultaCatalogos_cat_estados" (id, "identEstado", "nombreEstado") FROM stdin;
    public       postgres    false    201          �	           0    0 $   consultaCatalogos_cat_estados_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"consultaCatalogos_cat_estados_id_seq"', 32, true);
            public       postgres    false    200            �	          0    49700     consultaCatalogos_cat_frecuencia 
   TABLE DATA               u   COPY "consultaCatalogos_cat_frecuencia" (id, "identFrecuencia", "nombreFrecuencia", "descripFrecuencia") FROM stdin;
    public       postgres    false    203   q      �	           0    0 '   consultaCatalogos_cat_frecuencia_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"consultaCatalogos_cat_frecuencia_id_seq"', 9, true);
            public       postgres    false    202            �	          0    49708    consultaCatalogos_cat_fuentes 
   TABLE DATA               \   COPY "consultaCatalogos_cat_fuentes" (id, "identFuentes", "descripcionFuentes") FROM stdin;
    public       postgres    false    205   �      �	           0    0 $   consultaCatalogos_cat_fuentes_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"consultaCatalogos_cat_fuentes_id_seq"', 16, true);
            public       postgres    false    204            �	          0    49716 $   consultaCatalogos_cat_identificacion 
   TABLE DATA               l   COPY "consultaCatalogos_cat_identificacion" (id, "identIdentificacion", "nombreIdentificacion") FROM stdin;
    public       postgres    false    207   �      �	           0    0 +   consultaCatalogos_cat_identificacion_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('"consultaCatalogos_cat_identificacion_id_seq"', 10, true);
            public       postgres    false    206            �	          0    49724    consultaCatalogos_cat_localidad 
   TABLE DATA               o   COPY "consultaCatalogos_cat_localidad" (id, "identLocalidad", "nombreLocalidad", "idMunicipio_id") FROM stdin;
    public       postgres    false    209   �      �	           0    0 &   consultaCatalogos_cat_localidad_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('"consultaCatalogos_cat_localidad_id_seq"', 167, true);
            public       postgres    false    208            �	          0    49732    consultaCatalogos_cat_mes 
   TABLE DATA               ?   COPY "consultaCatalogos_cat_mes" (id, "nombreMes") FROM stdin;
    public       postgres    false    211   �      �	           0    0     consultaCatalogos_cat_mes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"consultaCatalogos_cat_mes_id_seq"', 12, true);
            public       postgres    false    210            �	          0    49740    consultaCatalogos_cat_municipio 
   TABLE DATA               l   COPY "consultaCatalogos_cat_municipio" (id, "identMunicipio", "nombreMunicipio", "idEstado_id") FROM stdin;
    public       postgres    false    213         �	           0    0 &   consultaCatalogos_cat_municipio_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"consultaCatalogos_cat_municipio_id_seq"', 17, true);
            public       postgres    false    212            �	          0    49748     consultaCatalogos_cat_parentesco 
   TABLE DATA               `   COPY "consultaCatalogos_cat_parentesco" (id, "identParentesco", "nombreParentesco") FROM stdin;
    public       postgres    false    215         �	           0    0 '   consultaCatalogos_cat_parentesco_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('"consultaCatalogos_cat_parentesco_id_seq"', 13, true);
            public       postgres    false    214            �	          0    49756    consultaCatalogos_cat_periodos 
   TABLE DATA               X   COPY "consultaCatalogos_cat_periodos" (id, "identPeriodo", "nombrePeriodo") FROM stdin;
    public       postgres    false    217   �      �	           0    0 %   consultaCatalogos_cat_periodos_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"consultaCatalogos_cat_periodos_id_seq"', 4, true);
            public       postgres    false    216            �	          0    49764    consultaCatalogos_cat_programas 
   TABLE DATA               n   COPY "consultaCatalogos_cat_programas" (id, "identPrograma", "nombrePrograma", "descripPrograma") FROM stdin;
    public       postgres    false    219   ,      �	           0    0 &   consultaCatalogos_cat_programas_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"consultaCatalogos_cat_programas_id_seq"', 1, false);
            public       postgres    false    218            �	          0    49775    consultaCatalogos_cat_sexo 
   TABLE DATA               N   COPY "consultaCatalogos_cat_sexo" (id, "identSexo", "nombreSexo") FROM stdin;
    public       postgres    false    221   I      �	           0    0 !   consultaCatalogos_cat_sexo_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"consultaCatalogos_cat_sexo_id_seq"', 2, true);
            public       postgres    false    220            �	          0    49783 "   consultaCatalogos_cat_subprogramas 
   TABLE DATA               �   COPY "consultaCatalogos_cat_subprogramas" (id, "identSubprograma", "nombreSubPrograma", "descripSubprograma", "idPrograma_id") FROM stdin;
    public       postgres    false    223   ~      �	           0    0 )   consultaCatalogos_cat_subprogramas_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_subprogramas_id_seq"', 1, false);
            public       postgres    false    222            �	          0    49794    consultaCatalogos_cat_tipoapoyo 
   TABLE DATA               ]   COPY "consultaCatalogos_cat_tipoapoyo" (id, "identTipoApoyo", "nombreTipoApoyo") FROM stdin;
    public       postgres    false    225   �      �	           0    0 &   consultaCatalogos_cat_tipoapoyo_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"consultaCatalogos_cat_tipoapoyo_id_seq"', 3, true);
            public       postgres    false    224            �	          0    49802     consultaCatalogos_cat_tipopadron 
   TABLE DATA               I   COPY "consultaCatalogos_cat_tipopadron" (id, "nombrePadron") FROM stdin;
    public       postgres    false    227   �      �	           0    0 '   consultaCatalogos_cat_tipopadron_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"consultaCatalogos_cat_tipopadron_id_seq"', 3, true);
            public       postgres    false    226            �	          0    49810 !   consultaCatalogos_estatustrabajos 
   TABLE DATA               K   COPY "consultaCatalogos_estatustrabajos" (id, "nombreEstatus") FROM stdin;
    public       postgres    false    229          
           0    0 (   consultaCatalogos_estatustrabajos_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('"consultaCatalogos_estatustrabajos_id_seq"', 3, true);
            public       postgres    false    228            �	          0    49818 !   consultaCatalogos_formatopubactor 
   TABLE DATA               �  COPY "consultaCatalogos_formatopubactor" (id, "RazonSocial", "RFC", "PrimerApellido", "SegundoApellido", "Nombre", "CURP", "Titular", "NombreVialidadActor", "NumeroExtActor", "NumeroIntActor", "CodigoPostalActor", "RefDomActor", "NombreVialidadIntegrante", "NumeroExtIntegrante", "NumeroIntIntegrante", "CodigoPostalIntegrante", "RefDomicilioIntegrante", "Beneficio", "AnioEjercicio_id", "ClavePrograma_id", "ClaveSubprograma_id", "Dependencia_id", "EdoNacimiento_id", "FuentesRecurso_id", "LocDondeSePagaBeneficio_id", "LocResidActorSocial_id", "LocResidDelIntegrante_id", "MesPeriodoPago_id", "MunDondeSePagaBeneficio_id", "OtroDocId_id", "PeriodicidadEntregaBeneficio_id", "Sexo_id", "TipoApoyo_id", "Trimestre_id") FROM stdin;
    public       postgres    false    231   d      
           0    0 (   consultaCatalogos_formatopubactor_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('"consultaCatalogos_formatopubactor_id_seq"', 1, false);
            public       postgres    false    230            �	          0    49826 #   consultaCatalogos_formatopubpersona 
   TABLE DATA               �   COPY "consultaCatalogos_formatopubpersona" (id, "AnioEjercicio_id", "MesPeriodoPago_id", "PeriodicidadEntregaBeneficio_id", "Trimestre_id") FROM stdin;
    public       postgres    false    233   �      
           0    0 *   consultaCatalogos_formatopubpersona_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"consultaCatalogos_formatopubpersona_id_seq"', 1, false);
            public       postgres    false    232            �	          0    49834 %   consultaCatalogos_formatopubpoblacion 
   TABLE DATA               �   COPY "consultaCatalogos_formatopubpoblacion" (id, "AnioEjercicio_id", "MesPeriodoPago_id", "PeriodicidadEntregaBeneficio_id", "Trimestre_id") FROM stdin;
    public       postgres    false    235   �      
           0    0 ,   consultaCatalogos_formatopubpoblacion_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"consultaCatalogos_formatopubpoblacion_id_seq"', 1, false);
            public       postgres    false    234            �	          0    49842 $   consultaCatalogos_trabajosrealizados 
   TABLE DATA               �   COPY "consultaCatalogos_trabajosrealizados" (id, "archivoRelacionado", "FechaInicio", "UltimaActualizacion", "CantidadRegistros", "JsonTrabajo", "AnioEjercicio_id", "Estatus_id", "TipoPadron_id", "Trimestre_id", "Usuario_id") FROM stdin;
    public       postgres    false    237   �      
           0    0 +   consultaCatalogos_trabajosrealizados_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('"consultaCatalogos_trabajosrealizados_id_seq"', 1, false);
            public       postgres    false    236            �	          0    50072    csvimport_csvimport 
   TABLE DATA               �   COPY csvimport_csvimport (id, model_name, field_list, upload_file, file_name, encoding, upload_method, error_log, import_date, import_user) FROM stdin;
    public       postgres    false    240   �      
           0    0    csvimport_csvimport_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('csvimport_csvimport_id_seq', 2, true);
            public       postgres    false    239            �	          0    50083    csvimport_importmodel 
   TABLE DATA               S   COPY csvimport_importmodel (id, csvimport_id, numeric_id, natural_key) FROM stdin;
    public       postgres    false    242   �      
           0    0    csvimport_importmodel_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('csvimport_importmodel_id_seq', 1, false);
            public       postgres    false    241            �	          0    49628    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    189   �      
           0    0    django_admin_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_admin_log_id_seq', 430, true);
            public       postgres    false    188            x	          0    49514    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    175   94      
           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 34, true);
            public       postgres    false    174            v	          0    49506    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    173   �5      	
           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 18, true);
            public       postgres    false    172            �	          0    50049    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    238   C7      e           2606    49541    auth_group_name_key 
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
       public         postgres    false    231            �           1259    49980 ,   consultaCatalogos_formatopubpersona_3591aea9    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_3591aea9" ON "consultaCatalogos_formatopubpersona" USING btree ("MesPeriodoPago_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_3591aea9";
       public         postgres    false    233            �           1259    49979 ,   consultaCatalogos_formatopubpersona_5b9247da    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_5b9247da" ON "consultaCatalogos_formatopubpersona" USING btree ("AnioEjercicio_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_5b9247da";
       public         postgres    false    233            �           1259    49981 ,   consultaCatalogos_formatopubpersona_cd68ec25    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_cd68ec25" ON "consultaCatalogos_formatopubpersona" USING btree ("PeriodicidadEntregaBeneficio_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_cd68ec25";
       public         postgres    false    233            �           1259    49982 ,   consultaCatalogos_formatopubpersona_f0115ab9    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_f0115ab9" ON "consultaCatalogos_formatopubpersona" USING btree ("Trimestre_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_f0115ab9";
       public         postgres    false    233            �           1259    50004 .   consultaCatalogos_formatopubpoblacion_3591aea9    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_3591aea9" ON "consultaCatalogos_formatopubpoblacion" USING btree ("MesPeriodoPago_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_3591aea9";
       public         postgres    false    235            �           1259    50003 .   consultaCatalogos_formatopubpoblacion_5b9247da    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_5b9247da" ON "consultaCatalogos_formatopubpoblacion" USING btree ("AnioEjercicio_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_5b9247da";
       public         postgres    false    235            �           1259    50005 .   consultaCatalogos_formatopubpoblacion_cd68ec25    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_cd68ec25" ON "consultaCatalogos_formatopubpoblacion" USING btree ("PeriodicidadEntregaBeneficio_id");
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_cd68ec25";
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
       public         postgres    false    238            �           2606    49878     D119b6828811740556612097f0937438    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D119b6828811740556612097f0937438" FOREIGN KEY ("Dependencia_id") REFERENCES "consultaCatalogos_cat_dependencias"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D119b6828811740556612097f0937438";
       public       postgres    false    2187    231    197            �           2606    49969     D19226b2354ae51d1bab7e105d5b6ce7    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "D19226b2354ae51d1bab7e105d5b6ce7" FOREIGN KEY ("PeriodicidadEntregaBeneficio_id") REFERENCES "consultaCatalogos_cat_frecuencia"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "D19226b2354ae51d1bab7e105d5b6ce7";
       public       postgres    false    2193    233    203            �           2606    49873     D333580be3dab15a6961bff80d743269    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D333580be3dab15a6961bff80d743269" FOREIGN KEY ("ClaveSubprograma_id") REFERENCES "consultaCatalogos_cat_subprogramas"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D333580be3dab15a6961bff80d743269";
       public       postgres    false    2216    223    231            �           2606    49898     D43a643115767c9733566b073f7f2bb9    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D43a643115767c9733566b073f7f2bb9" FOREIGN KEY ("LocResidActorSocial_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D43a643115767c9733566b073f7f2bb9";
       public       postgres    false    231    209    2200            �           2606    49983     D54dfc426c9f7031d61f315f11606382    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D54dfc426c9f7031d61f315f11606382" FOREIGN KEY ("AnioEjercicio_id") REFERENCES "consultaCatalogos_cat_anioejercicio"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D54dfc426c9f7031d61f315f11606382";
       public       postgres    false    235    191    2180            �           2606    49913     D59e4a2489534f6f586590ff584310fd    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D59e4a2489534f6f586590ff584310fd" FOREIGN KEY ("MunDondeSePagaBeneficio_id") REFERENCES "consultaCatalogos_cat_municipio"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D59e4a2489534f6f586590ff584310fd";
       public       postgres    false    231    2205    213            	           2606    50007     D5ad631e11a94c060436d3ad03ee4ca9    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "D5ad631e11a94c060436d3ad03ee4ca9" FOREIGN KEY ("AnioEjercicio_id") REFERENCES "consultaCatalogos_cat_anioejercicio"(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "D5ad631e11a94c060436d3ad03ee4ca9";
       public       postgres    false    237    2180    191            �           2606    49918     D6c0016e9a5b9c4286f37c445dc6292d    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D6c0016e9a5b9c4286f37c445dc6292d" FOREIGN KEY ("OtroDocId_id") REFERENCES "consultaCatalogos_cat_identificacion"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D6c0016e9a5b9c4286f37c445dc6292d";
       public       postgres    false    2197    231    207            �           2606    49923     D745f08753c4b4cf980ee7724a9b94b9    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D745f08753c4b4cf980ee7724a9b94b9" FOREIGN KEY ("PeriodicidadEntregaBeneficio_id") REFERENCES "consultaCatalogos_cat_frecuencia"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D745f08753c4b4cf980ee7724a9b94b9";
       public       postgres    false    2193    231    203            �           2606    49888 >   FuentesRecurso_id_12eb10a9_fk_consultaCatalogos_cat_fuentes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "FuentesRecurso_id_12eb10a9_fk_consultaCatalogos_cat_fuentes_id" FOREIGN KEY ("FuentesRecurso_id") REFERENCES "consultaCatalogos_cat_fuentes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "FuentesRecurso_id_12eb10a9_fk_consultaCatalogos_cat_fuentes_id";
       public       postgres    false    205    2195    231            �           2606    49594 ?   auth_group_permiss_permission_id_23962d04_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id;
       public       postgres    false    181    177    2146            �           2606    49589 9   auth_group_permissions_group_id_58c48ba9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id;
       public       postgres    false    181    179    2151            �           2606    49582 ?   auth_permiss_content_type_id_51277a81_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id;
       public       postgres    false    175    177    2141            �           2606    49607 3   auth_user_groups_group_id_30a071c9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id;
       public       postgres    false    185    2151    179            �           2606    49602 1   auth_user_groups_user_id_24702650_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id;
       public       postgres    false    183    185    2159            �           2606    49619 ?   auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id;
       public       postgres    false    177    2146    187            �           2606    49614 ;   auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id;
       public       postgres    false    183    187    2159             	           2606    49993     b2a04d445b0cc6c9a0cbb47b995af568    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT b2a04d445b0cc6c9a0cbb47b995af568 FOREIGN KEY ("PeriodicidadEntregaBeneficio_id") REFERENCES "consultaCatalogos_cat_frecuencia"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT b2a04d445b0cc6c9a0cbb47b995af568;
       public       postgres    false    203    2193    235            �           2606    49959     c57744d9d213f6e8faab6d8ee8cb3f58    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT c57744d9d213f6e8faab6d8ee8cb3f58 FOREIGN KEY ("AnioEjercicio_id") REFERENCES "consultaCatalogos_cat_anioejercicio"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT c57744d9d213f6e8faab6d8ee8cb3f58;
       public       postgres    false    191    2180    233            �           2606    49883 ?   c_EdoNacimiento_id_68602f4a_fk_consultaCatalogos_cat_estados_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "c_EdoNacimiento_id_68602f4a_fk_consultaCatalogos_cat_estados_id" FOREIGN KEY ("EdoNacimiento_id") REFERENCES "consultaCatalogos_cat_estados"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "c_EdoNacimiento_id_68602f4a_fk_consultaCatalogos_cat_estados_id";
       public       postgres    false    231    201    2191            	           2606    50017 ?   c_TipoPadron_id_1b853eed_fk_consultaCatalogos_cat_tipopadron_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "c_TipoPadron_id_1b853eed_fk_consultaCatalogos_cat_tipopadron_id" FOREIGN KEY ("TipoPadron_id") REFERENCES "consultaCatalogos_cat_tipopadron"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "c_TipoPadron_id_1b853eed_fk_consultaCatalogos_cat_tipopadron_id";
       public       postgres    false    2220    227    237            �           2606    50044 ?   c_idLocalidad_id_236bcae9_fk_consultaCatalogos_cat_localidad_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_codigopostal"
    ADD CONSTRAINT "c_idLocalidad_id_236bcae9_fk_consultaCatalogos_cat_localidad_id" FOREIGN KEY ("idLocalidad_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_codigopostal" DROP CONSTRAINT "c_idLocalidad_id_236bcae9_fk_consultaCatalogos_cat_localidad_id";
       public       postgres    false    195    2200    209            �           2606    50038 ?   c_idMunicipio_id_69ee7479_fk_consultaCatalogos_cat_municipio_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_localidad"
    ADD CONSTRAINT "c_idMunicipio_id_69ee7479_fk_consultaCatalogos_cat_municipio_id" FOREIGN KEY ("idMunicipio_id") REFERENCES "consultaCatalogos_cat_municipio"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_localidad" DROP CONSTRAINT "c_idMunicipio_id_69ee7479_fk_consultaCatalogos_cat_municipio_id";
       public       postgres    false    213    2205    209            �           2606    49863     cbb47b349960e4f969ce332ee746e835    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT cbb47b349960e4f969ce332ee746e835 FOREIGN KEY ("AnioEjercicio_id") REFERENCES "consultaCatalogos_cat_anioejercicio"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT cbb47b349960e4f969ce332ee746e835;
       public       postgres    false    191    231    2180            �           2606    49857 ?   co_idPrograma_id_5e55c862_fk_consultaCatalogos_cat_programas_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_subprogramas"
    ADD CONSTRAINT "co_idPrograma_id_5e55c862_fk_consultaCatalogos_cat_programas_id" FOREIGN KEY ("idPrograma_id") REFERENCES "consultaCatalogos_cat_programas"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_subprogramas" DROP CONSTRAINT "co_idPrograma_id_5e55c862_fk_consultaCatalogos_cat_programas_id";
       public       postgres    false    219    223    2211            	           2606    50012 ?   con_Estatus_id_3d1491d1_fk_consultaCatalogos_estatustrabajos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "con_Estatus_id_3d1491d1_fk_consultaCatalogos_estatustrabajos_id" FOREIGN KEY ("Estatus_id") REFERENCES "consultaCatalogos_estatustrabajos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "con_Estatus_id_3d1491d1_fk_consultaCatalogos_estatustrabajos_id";
       public       postgres    false    229    237    2222            �           2606    49964 ?   cons_MesPeriodoPago_id_25f9e34d_fk_consultaCatalogos_cat_mes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "cons_MesPeriodoPago_id_25f9e34d_fk_consultaCatalogos_cat_mes_id" FOREIGN KEY ("MesPeriodoPago_id") REFERENCES "consultaCatalogos_cat_mes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "cons_MesPeriodoPago_id_25f9e34d_fk_consultaCatalogos_cat_mes_id";
       public       postgres    false    2202    233    211            �           2606    49988 ?   cons_MesPeriodoPago_id_2da16420_fk_consultaCatalogos_cat_mes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "cons_MesPeriodoPago_id_2da16420_fk_consultaCatalogos_cat_mes_id" FOREIGN KEY ("MesPeriodoPago_id") REFERENCES "consultaCatalogos_cat_mes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "cons_MesPeriodoPago_id_2da16420_fk_consultaCatalogos_cat_mes_id";
       public       postgres    false    211    2202    235            �           2606    49908 ?   cons_MesPeriodoPago_id_5873ad3e_fk_consultaCatalogos_cat_mes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "cons_MesPeriodoPago_id_5873ad3e_fk_consultaCatalogos_cat_mes_id" FOREIGN KEY ("MesPeriodoPago_id") REFERENCES "consultaCatalogos_cat_mes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "cons_MesPeriodoPago_id_5873ad3e_fk_consultaCatalogos_cat_mes_id";
       public       postgres    false    211    231    2202            �           2606    49933 ?   cons_TipoApoyo_id_474dcc1_fk_consultaCatalogos_cat_tipoapoyo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "cons_TipoApoyo_id_474dcc1_fk_consultaCatalogos_cat_tipoapoyo_id" FOREIGN KEY ("TipoApoyo_id") REFERENCES "consultaCatalogos_cat_tipoapoyo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "cons_TipoApoyo_id_474dcc1_fk_consultaCatalogos_cat_tipoapoyo_id";
       public       postgres    false    231    2218    225            	           2606    49998 ?   cons_Trimestre_id_1c2c0616_fk_consultaCatalogos_cat_periodos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "cons_Trimestre_id_1c2c0616_fk_consultaCatalogos_cat_periodos_id" FOREIGN KEY ("Trimestre_id") REFERENCES "consultaCatalogos_cat_periodos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "cons_Trimestre_id_1c2c0616_fk_consultaCatalogos_cat_periodos_id";
       public       postgres    false    2209    235    217            	           2606    50022 ?   cons_Trimestre_id_617a18c9_fk_consultaCatalogos_cat_periodos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "cons_Trimestre_id_617a18c9_fk_consultaCatalogos_cat_periodos_id" FOREIGN KEY ("Trimestre_id") REFERENCES "consultaCatalogos_cat_periodos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "cons_Trimestre_id_617a18c9_fk_consultaCatalogos_cat_periodos_id";
       public       postgres    false    2209    237    217            �           2606    49938 ?   cons_Trimestre_id_6b923488_fk_consultaCatalogos_cat_periodos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "cons_Trimestre_id_6b923488_fk_consultaCatalogos_cat_periodos_id" FOREIGN KEY ("Trimestre_id") REFERENCES "consultaCatalogos_cat_periodos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "cons_Trimestre_id_6b923488_fk_consultaCatalogos_cat_periodos_id";
       public       postgres    false    231    217    2209            �           2606    49974 ?   consu_Trimestre_id_671b849_fk_consultaCatalogos_cat_periodos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "consu_Trimestre_id_671b849_fk_consultaCatalogos_cat_periodos_id" FOREIGN KEY ("Trimestre_id") REFERENCES "consultaCatalogos_cat_periodos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "consu_Trimestre_id_671b849_fk_consultaCatalogos_cat_periodos_id";
       public       postgres    false    233    217    2209            �           2606    49851 ?   consul_idEstado_id_74f8039f_fk_consultaCatalogos_cat_estados_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_municipio"
    ADD CONSTRAINT "consul_idEstado_id_74f8039f_fk_consultaCatalogos_cat_estados_id" FOREIGN KEY ("idEstado_id") REFERENCES "consultaCatalogos_cat_estados"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_municipio" DROP CONSTRAINT "consul_idEstado_id_74f8039f_fk_consultaCatalogos_cat_estados_id";
       public       postgres    false    2191    201    213            �           2606    49928 ?   consultaCatal_Sexo_id_3ae100a7_fk_consultaCatalogos_cat_sexo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "consultaCatal_Sexo_id_3ae100a7_fk_consultaCatalogos_cat_sexo_id" FOREIGN KEY ("Sexo_id") REFERENCES "consultaCatalogos_cat_sexo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "consultaCatal_Sexo_id_3ae100a7_fk_consultaCatalogos_cat_sexo_id";
       public       postgres    false    221    2213    231            	           2606    50027 ?   consultaCatalogos_trabajosr_Usuario_id_51f8a702_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "consultaCatalogos_trabajosr_Usuario_id_51f8a702_fk_auth_user_id" FOREIGN KEY ("Usuario_id") REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "consultaCatalogos_trabajosr_Usuario_id_51f8a702_fk_auth_user_id";
       public       postgres    false    2159    183    237            	           2606    50090 ?   csvimport_impor_csvimport_id_300566f3_fk_csvimport_csvimport_id    FK CONSTRAINT     �   ALTER TABLE ONLY csvimport_importmodel
    ADD CONSTRAINT csvimport_impor_csvimport_id_300566f3_fk_csvimport_csvimport_id FOREIGN KEY (csvimport_id) REFERENCES csvimport_csvimport(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.csvimport_importmodel DROP CONSTRAINT csvimport_impor_csvimport_id_300566f3_fk_csvimport_csvimport_id;
       public       postgres    false    242    2265    240            �           2606    49638 ?   django_admin_content_type_id_5151027a_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id;
       public       postgres    false    175    189    2141            �           2606    49643 0   django_admin_log_user_id_1c5f563_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id;
       public       postgres    false    189    2159    183            �           2606    49893     e20cd183f2c8ada04c93a0dfd6b864c5    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT e20cd183f2c8ada04c93a0dfd6b864c5 FOREIGN KEY ("LocDondeSePagaBeneficio_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT e20cd183f2c8ada04c93a0dfd6b864c5;
       public       postgres    false    209    2200    231            �           2606    49868     ee84033d702a7be6c59ef1aa7a8657fd    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT ee84033d702a7be6c59ef1aa7a8657fd FOREIGN KEY ("ClavePrograma_id") REFERENCES "consultaCatalogos_cat_programas"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT ee84033d702a7be6c59ef1aa7a8657fd;
       public       postgres    false    231    219    2211            �           2606    49903     fed0c41393ad7fb0cadccb061f0a02a6    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT fed0c41393ad7fb0cadccb061f0a02a6 FOREIGN KEY ("LocResidDelIntegrante_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT fed0c41393ad7fb0cadccb061f0a02a6;
       public       postgres    false    2200    231    209            |	      x������ � �      ~	      x������ � �      z	   &  x�u�]r�8���)8�F��s��p� �0э��=�
$�,��0�����J9K~�)�Ð>�=UӶ�$Yb�?��q)�C����]�-aq�P�R��鬖縮�����
�¾D�����D�z�����~�Iq4>~-�<�];��өpM�"���U-Iy��Ud�߭��[A��www+(��{=mf?��gVIu4q��"�{Ebד�+l�����U�ݮ�Jd���Z�d���u���G*�Q��Z��u�ؿ߬��.�مK��gdK.�sg8�Së�W'���_��`�<Yeɬ8%�ʊ���Y�r�?:�|��x�D^3� # 5���@-5��2��Z󽜶\I�3j�tō �x �fԠ��{|$Y�ݜ5Q����O@
fp��Z��rx�u���T���b�(���5��9�jo���5���?ج��(Zf��`5�;f��`9��[���Mڼexζ$ʌ?�Ƨ|9��g|5�|MfV�f�d��㋢,�!B�%�*f�@`��{�^>�AIV{c�(ʆ#�e�� ��~����Y�5_R�v��Eŧ>�#e��g,X�l4��j�E��O��a�c]T<b��<b�QLjV��t�Q��7$�E��"��*Eyd�(X�h��|(�ዢ��A���y�gb��Y_� � ���y���?Ay��(���ZF�����D},����E� ���(P�&��"�R�<:�
G�.�!�8���kQ��xϒ<$B����e�4����( �S�,�e�_�"�7[ψ�Np'�c"�C�Ʌ����Sny}������6,܂�eѐ��ĜIF�̸$�MFv�>�۷��<�&r�D{{�P����;�@3Ǟί=�χ=��m��\m��7��y�C��;ށ�w���x�ךn����!`#��ϲhI�\Q�1I�\��(C���tQ���qp+l��KaE�$Wް��ޑ�y�;�W8��;��^��p�{�����M�� b:������8�k[I�ڈ�l[;J�#c;V; �;�~�#��ܧuo      �	     x�}�KO�@����+�`gJf��$&R�FCk��11Ý��:H��q��xv_r��A���a�?۔a���'{yx��w��'���������)�=�������Zk/�� t���8�"}����BH��+� Q��Gu0�	gY�%�<�4C��F�Z�		���ϗx�Da����j���[�IE�s�3�}���n�*�w�v��u���L�-��DST�&m�܏Q�b�2^"j������o�L�E���}b�      �	      x������ � �      �	   �   x�ѷq�@��X(F�g��E��!"B�s&~�'^�K�m�1Ś��1�k.q�C�}	�:�R!UIhUbՄZ!WK��%��!��K���A�u�z]�^7��C���z})�~(�~)��՛��&)�)Jo�қ��f)����<�޼��Zo���m�z[��6��C���z{�}�}�{����^�w�ѻ��������>�      �	   "   x�3�4204�2Q&\� ʔ�D�q��qqq U�      �	   �  x�U�Mn�0���)|��$��e*�i-��膑X��4t)(z��z�\��������9��q�S<->�Q�N�1�>��ea�Υ�*P�u2�p�mX7�
���	2,�s
nT5j�q��j��[�8a�vyy\d��'�f֊�CzjcJ~��:�֠6�ڀ�ť�sÂ�a�N��Ť}�28�K�����kt��Yq�_9c�ON�<Ҁ>�e؁>��竛-蓓�N�2Թ�^v�����_��XP�c:S���;sX[lJP��Ǒ*P����O>����tpw���eP[��?��K�+[���Tֶ���^X�������a9�4���%苄<d[�.��gfk��0�<Ҁ�1������t]5�؂��)�L�T�A琸���}��"Q}�QJ����      �	      x������ � �      �	     x��W�n�H>O�qF�b0vr$;x�28�H{iC��hOCG����	�8�Vs�+/�Ս��q��|����������K�hY��5��j^��7,����a���s������Y�Z�Ϋ���ZJ�<g,�a��C�*m�W5�[c��)����tņ������Y%I�177+X�*4j}".jI#fP�t��sq��O��n%�cRRR0L��t�8�[�Ͻ$��M���S�\H�Ȳ�ʹʣ��
��y��f�8�CԲ���c�P��д�9�6�_�:�l��x�KDꅲ�cj��y�U6m��ܶOb����7?Q�9�<�1�w�=PQ��dX�̉йӻ�dI�#��/�3&$�%rBu��^�/��ɴk�෴b\�2i~�e��S�����xg�0�-6����s�t��Y��;5�nr����^1M��h�����%A�j�,��1oAYլ�50Y�X�)��c���<G��)/���J��`U����l����|GS�s��S�껤.`vu��9�a�$N��˕,H�#i��,�iJb���E�������v�ӂ���4�]o>�f�;����$�Pՙ�q����u��ib?�m���A�4U���k~�0,|oP�=�P���ώ�} �a9��p�e������+ W���.��~#����YӴM�-6jzU�S��=Fu��BiR[�
u�GJDH�u�獯�ž�2xC��+�kX��װ��ʃ��JնH���a� p�G��Y�f8|�mA����Ze�rG��b?~$O�>6��I�>z�c��L�Bs�""jM�6@�IT4R�v XsB�/��@f�	�iPm
彺-{
A�OW��6�hp7MUU�:%(o�ɰ�!X� ߫�ʞj�}A<� �[T%�{<�9>� y;�6BAPp�L=�y�\a�m��#�9q3<��= óA��,}X�z@ʉ��$il�2�I��Zо<������M��i".e�zNP�-�ө�!� �mUW
uc#evdK�������5s@�9����w�~>��~u�\�#i����L�A���x
�wt���K�>I_�x�9D�.�(WM�N�QN�'�z�P�P�H&�uO����DK�xF>�Գ�pF�o�"�I��Iq�ǂU��"��n,z������ˎfC��q����˓�|������Vj�)��8{��z��p��p&��zwN;D�3��p�3�(��^�O�^��I|�o����i���(�"G�oO�L� �_ّ\f�d��ɔ#���j"�k�Ć��#��߂�+1oԈ���p��J|� cH��$��NQj�@�����tV�3�{2�$���ڪ�E,>�~�)$��2�5��t���o�$A��~�s�u���ü���V%���SU��u0��ڔ���[2>=��rൔ�߂>���1L^�x:�u<0�U�l]Iu-a����=�����?�}���I���Z�*���mIO���m��������a�32,F      �	   i   x�3�����)I-��2�tv�tN,NL��2����,2M8]<9]2��3AR���>��y��7�)�d&�r�q�s�&��*@�J�2��@������ R%!B      �	   \  x�]�Mn1���S�	��=�K�HA�	D3B��8Nڑ��m4p�Y��}1^o�����n�*�}n::����G��x�/�ͭ�\RP������Vd�%�z�x7xYa�}֡���ƚEg�6�A/:���<4^S�a��0�j���/�,@7�hz�b�iҗ���m�_X����Q�|{	����c���k��5�ܐ�M���萋�y���Oe1;�]�?r��7�]�>�U��5���?pTˍY�3��Z��l�o!U��Jfk	:j�>�0v�\�8��CҘ��5�S.,6��>�<�݂Nz�üH���^�$|���J�%�}mN�<ioAߘ�zǏ���㪒�      �	   X   x�3�t��t�+M���2�v�N�M-.)�M9C�8C�2�f�Ρ�Υ�%Hb�N��N���+�oj^1�HKN�N�'W� ���      �	   �   x�e���0E��o!��|��E^Y*�P	QԖ�'�$AɖX�^�B �}��U`����pp��x_��@��<-��x�cM���t�.!.S�	��p���E7�X�|����)����.��k��K�Z��$�#�zC-C���l�2Y]�D���vz      �	   �   x��OKN1];��	"ʟu:���T�lL�J�2�����k�Ћ�$`�$��z����x�Bc�9���6�����`��u�j7)a,c���w6?�.bS��D�rz1�sQ��]B���^��ڤYB?9��������U�&G��]ú�u��`�b���I�����5Μ�.����%� �%X�����@�$g���{֣a�����-�˾����S%so�����5ͦ���~1Wg�{�]S���ϻ'�{��T      �	   �  x��Y�v�<���`�49⯤R�&v|lGk{S��&����H"}��Gq�"U�m�b{���u�I�0�w��^8��t:�����s_yA�.���[~oT!������4��hLS{�LEUKr�6�,�\���E�U���'�O�u#u]�+��?Y	�ճ(�ZJ��D��f�ͽ����Nf��S��u��]xWb�**�Z|�)�L~�c,:�`z��==�;����E��}V��?�3Jm���	�3�J*2�@ȃȻ����և� 
������[��WL�y��ޕz��E~zkᎳ!GA�j3<�	���h�%X��w��ۗD�S��j��l���$�����A��ލʪ���ϴxtqLj�����,���B��Ԛ܉�_�'Y�����X�ZjUW{+"���k������Z4�VL�ùw���ʿ�tY�WBo��:\x���甆r�UH����`G&(�����hp$��&?�3�T)�f7��#;���-q!���#BGD<Jz����O��96V�n��(�w!Ѭ��'�ܫB��-�R4�[%�V리���d0Z��&@�9�ĥ@D��㨞�e��Y���4�8�%�r+j��w&�7�L���8�e�?���Й),�����= ����
J�p�yL��ӥ��Z ��[>&������5Ɉ��$�I�?�obkA��^��f�E�����a��9*ИjU���df Cz5�ٻj��z_���`�,�(�[��M��.��L�6m�NVH�R	�(�/ͳ�$E���)�/w$ғ��ߋ�{�|�Jm����i/H�%S~I��M�¿�*�P)U�D��4��Mz���&�Q��Jj�4 �����{k�b�]H���ܨ"���4�r�Z�[u��	���C��M�����w!�\�hϨ���ͩ���6�D��v�ٿO�`lR���=n38CJ���ߞ+��1��߶��h@˿DC��ڠM�;���(�Px�?��R�l�n�ָ|{����Q3(� {��5j�n��^�R�"�1��R��n��̵)ͽh��ZW��Te�ElJ�����C��1�{_{3���ݎ�p�،xf�8Sbo��f4��q�4�*���C{�iF~�e[e�n�Ue�
���CM�����$��( F�$��x[%�>`����u�S�rc��b����O���:9����ݢp+���w�=���~m�[�̢��ik��d6��N�ڿ�Be�s2�s�,Om�[5���2���Q�Q���E��0k�k���^l��Ί����#��ҍ�hNVg���8�[U�Й��Y��y�l��-�ԩ�iD�Ix�M����$#�>6Z���'VN"/C��$.��$�Hk\��2r�V�Ȁhn�ӂ�����a�]� mf�U���'�l/���� V�*��Ë�N�qp����0��"��3�]!�@����� ^�Š���]S^p��2p�0pXk�ҍN�M�X߉�hS���~㤫�{���3&��%H`�l����s�.E&pv���	�S;�]�bg��׈�\�7�FBLefp��ӈ�a{�c��<���;%�'F{N����+�F{A����n_3���;3W����cj�5�Y��b$!%+��L�֌:�}J�E�	e``�rsY9q@D�׫�HL���Ylxp����ꄩ��Õߏ�Ά�ë�g�46� >�Z�3'Y;$���z������X�����������V�,�j9	
mH7�w��g������{oa2�Zf�Ⱥ�I��NEd�N�h���<4f�'�&89�훠iY_���J	:ց��2�҉"�%n�?q��:"�X�S:]���9�#�m:���}�i-�?v4�~�~� ,j��@pREm�Z��w�B�6��bN��l4R"٢Y7�\�AA���]��i!k}$���h�a����V�E��2�aL�AO{dmb�]����|��c�}Yn��VƄ�c+7O��Z+d�
i��̛���6�#GA�`9�9��/�x��GQؗV#%Y��˦�L�4"҃_���;�2mى�~qW�4!1���ݕ�	�~ݚ�b�DR��I;���h}�O��6M0n�=���Um�A	a�4k뎩�NDDq~m�	�Í�F`hE�%&���2�B�?!��}:�X����v��vC�Й�W�-��p�������ƾ�:�S\a[�r�3�R��Bd�������y��H�2����eO�R���J�$�W��g�Wh��A�*��Y����R���/�2o+KJ�q��J�{�2R�)�ܥ����ûw��_݌|      �	   f   x�5�A
�0D�3�)ƪ��h��|�Q�x�s�]���@�e�N�p�����m�Y��*+�w�W����u�����ɔ�4���^������_�'�;      �	   �   x�5�=j�0�z|
� X��1���!���f�E�"��jr�-S��XF�,��FH��MUz��b׻�Qkj���;�9�����8���L1�r�6�~�#�Hm�>�������g������F'zM~`�J>\t���ˎ8i�L�J#��+����C���K���lPM��6�#˦��Ɩo�n�z��<��7c���۸�7�h�ٹ�^h��9���N.��SQ���^�      �	   �   x�U��n�PE�w��/���]ZB�0H��n�0�:�S>��~�?ֱ�ܜ�9����xld'��A���=J�7�/�zч�����*-ѕ�$�Օ��g��Q��L/�9���f6�+�Od��u��V���y�w���a<���)~B[����3�c��u?�Qݿ�%h*4ڇ�ζ��jQ]��ׂ�� ��I+      �	   D   x�3�1���uRQ�!A�\F�!F����~.�H�Ɯ!@�䌢؄3Ą�9�1(Ym� PL�      �	      x������ � �      �	   %   x�3�t�tK�M�����2����M,N.��b���� ���      �	      x������ � �      �	   0   x�3�t��t��K-��2��w��O*J�2�t�t-.HM�L����� �	�      �	   .   x�3�tt�r�2�p
��s�2��w�qt�������� ���      �	   ;   x�3���Sq���s�2�t��tt�WpT�q�u�2�t���q������ B^�      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	      x������ � �      �	   �   x����j�0Ek�+�رƐ>R���T�E~$=E���(K���=w;)#>�i�LVn��W�����ǋ�Ǵ)/��I���*�~�t������U|Ģ�BV�	>W�s����~��eԴYp�Z�R�Jʠyaa�9�6ÓcD�#���H%�ׄ�V�]SV�O[��~P���͵k���e�      �	      x������ � �      �	      x��}Ks�ȶ��Whȉ�[H�ЃYa���v�;nD�\%�8eɭ*9f�7�_�CN�lO���H�R+���A44�Z���{e��T�f?��ω�R�L��t�2��$���C���Y��
?5*γ?���S��S���)�Ў���Sk�4�O���V|j�g���x��'�Ǘ�5�vu}y�dJ]��UZ�į�_�r��|a�2.�����h�x�$K��&V��%�2���7\)��$�3��t6?�>�<���a�~J�=��8/�������l��!A��y�yA���ΏN�ώw$�Б� H�쬋>T�]�l�7�j�Em��n��F��G��=3y\�Jp���U�vw7}}Q-���L��Rϒ4.Ҝw���,�:=9�_�rJ$�!�-7��������������$�$�Yb`7��w'�}4��N���wtyHg2 �~��y��������1,B�$)�d����3�Y{��XgN櫛��tw�ϨY�L޿���	�"وS���bX��o�u׬�M׮�OѪZo~[u�M����/�Rq�,��Q�n�j-�h~�����Y����[W��������Y%�r��u��i�E����^�m=2^-2~3�ۯ�fѭw<��	�Icc�D�:X��gvG]�hV��S4�oX��::�~A���u�Yt���H?S�A�a2_�5m�>����7C�7Ut�n�[�����\�3��V������L��j�ꮁ���e!?@�eaʀߪ�mh�ϫ�8����{g�KNe������u��-Oh��nj��n�E���4�"�h�8�0�v]��5�y]/���Z�V���$e� ���O��t�E6�&�P������t#n����A�Q�����/��YA'� <�9�a�C���`5[�t�K�<���YVK ����z��*:� _��wR�)����6���$���} �C��[Z [�3�h�R���x9,F�����	�q���hY��uv:�����
vy�Pѣr����0���U�Y�Y^�+����_l�}��/v�C�W��Nٕ �tU/�zS�=ob��v}b^{L�+�)��uҮ7�f�t}4�6C�` z
qiY��rf/�u���
��xѵۿ�p�a�C߬�]�D�iRvf�o����}�@�����0�E��}�{o�@�%MJ���*m��T�����pW���7R�T�,U��1�]�������W}��J��%(N� q��������Q
$�����l��o����SU��O7ͽ'�F�(�`TY��4��=������	E�S�@SyL�w��vb-��h���,yX=��,�R ��n'�G���F�q�"l���E����H��������H	S
�C�<�,�lZ��>-�~{sV���H�a�6���y~w���?')�J�tK�=q!���C��0[�kڡja��F�H��`�����n ���s��tS}��z5R&a��S�`8_���D�@������:F���G�P�v(�Iۀɛ�ͳ����b�w�l <Z\��`�v|}S]��6]�ty�Z�/�k �a��?�)����M���9���ƪ����PZ{�]�tQ���G� �j�g���'������{3< 2��^fR�4hX�r�n��� ?>���$%8��(,��/24	0���)�DR�s=i��>���Rj`X���L_jP7����-	�RBt�v;-x��t7��[0��9W���3)I���`������V�X�~X�xF/�_������ۖL
�V��P��!p�Pv˽�ʤ�'GGU`��@<VM\����Τ4iL�,�#2~`���oxj��Ƶ��G}ꐀ�<{�ͰFq��	A����}R.5D�%8Ƽ*3;�p�=�0t���n�O)u�O�5ﱝm�o��Dۼl֠k���*������I!�Q;d��@��}Z�}�����f�`�zV`�!ƪ�8�Oӥ���n ��3��6�]ɋ��c������?�@�r4O�⹕30�`���@=okD�#�<52:�*���nY�@�D�����)Pg[��VF`����Ҫ����w�	k�!�'kb��X�e�(���a���y T%�%��V�]��@(��,��^/L�70� �j�Fmh�hHII����ZQD����H�0	d�Z�2��Ĭ�w�$�e�LA�ow�T����#��$����b��˔K���6�<R �:�8��;b)
��N�M)|c.�Ly�%��$ɪZ���V6N8A��?�e��Xy�2,1S��@��<��vn�)(� �"�I�L���(=���wh\ �l ��o�q���
S��2�#�V�a}�+�B�pU $���+_n�z�V������>�~�kE��O �^ P�C)֌�6�+�`u��ш�a���7נ7(���WȐ�W\��|�P��V����n�����	ˢ4�	�-'l�XpV�{�]��Eϱ�6�#��a�g_��������}����H�5��"�<y~Y�8�w���]��iS�����Ò@�2f�9�H[E�x�:f4���`(:�E������*z��_N�k��]�D�D��Y�tvխ6c�)���*q�)�`s���t��Rj,W�Գw~y_K)���2� ��^���̈́�2Ph���s���+o����I���L6;��=�jZy�H�&�@f�ز^�gY�I�Y*�c\y�v��w�3uA�!:�(��x�t����dŵ�;c:	��9�ZF���%,V�y���Vw���C�QH@ h��kX]�>���'`�b�J��~���>@�'N�fG!��@aѮ�c�C�a�I�C��讥쮕�<�������K�w�i 
�%�>?��H^{�y@S�qn�Bī��ǡ��DH#��<���@���c� ��Kk\e�5��df��c=��o 5��b����rŚ}1��o"�"8|��i\���Y|����֣	 ���NN�OO��^u� 9ʎ)�,�Y�	\эG  ��c�VR�Ά��U=z�D��J�K�&���j�-����B�I��%��(��%�����_���69(���YR�3^��h��*�;�,8��o�1"f�+P�C���M��~�H ���9¤3�.��_W��sX\��s�v��}��Ռ����oC�"� ���۹(�a�LTGP�"�ms��,������7��8	$��D�.��S���#	PP"l4K��b�i"A�H8阑�p���bDm�� v���3oVe�?7�sK�u�;W�]My>�Ć$��r��FH�I��Sʕ7P������!��m��M>{����$%ꍔ�Q��n��(CP�6�l�7I�Z��rJ��f������H� �%j%0�lҝW�(A��(gsw�Ӣ��3@c�\��(�sy暂�2u�ۭ�g7��G�Y2�H�Tm�G�#��k�p�)���u�}$ܷV		 �Hw����T%,���y,�,X�G*�Yfv��#m7�J� �|�#���W+1�)BN]s��'�g�6@��I��9#�Ó@�p�{�l�e�<�4�E��n{0� b�z�<��g1�:�����GG=���0&H��&ܰ,V��8{{qƂ�.�/W��8l9,�>��(�H�]�ev�֛�5�j*�XoU�`�g�3{��M����2ſ�
���cڊF�4XI������R������, A��,����q��[T���f١{�G�z1�X=����ݢq����.3�"B� 9�����1�E�1{{ڬ��"��B����bvq]@�L%N�,�n )\(rtm�,����3Ą\3�J�_G$*����RL0���:a1��_r�(.e?�q�\s����S	{C�9�6����\?�k\���˓���s�L���ۺ!���c�Kxa�Q�6w�|o~9;�?� ��3�w���o'_�㇯�8%��B�ί����s�R)w�W��'ǧ�]�4�ȣƜdf%�����)Ep��ّ9[������g���    �I�LЋ���&8�*a���~Ѵ.X-����)�P�u�b����"8d�
i�4����^4�����K<���?�O)h�@PAp�%`���S4 p�)�a۔4��7���)k���m�6E�<uK�9%t	�uw�V�>�j���{  ��������{���?�H���ާ�go��Υ��YSo����÷}���k��ſ�t���'���[-����GXJD !����{Ji=�H��@W(�A���_	�Q7k�C$�������Xac� ����F:�߀���o>]��6��bz�������O��P�.{����:3��bd���%�!�m2�HT`�ql��:��O*��=� �o��匶[>`�[��j9~�� 9u�fLCN���&@ ��q�?F��U���$�@�W|,c��z�.����6�G��tD��`%��1U���"R��������L��Px2��7���7����f!)V#y7 �o�v��(	0�(G�N+sLSH�6T�#6���>��I�0��ao���]IY"���Q�X�Zt��n�I%H��_3��⺞�������S�%%��[7��G�MJ�"sww�`��BB4ј�+�2����[�DAJ�T������y��=���!����� ��Sr��ҕ]����^;|���a����!$X�hw�9���R��C��>Gݪ�D������5y������ %hLg��@���D��f�|}�\b!�VU�~�Q�C@Qɾ� e|Lu>T �p(�t�� qJ�s�@-�F�����f�`�`�%U0��vaA}mU *(�l;{�W�R��*G��id��k�8L`�n�= �W}�~���L�@�Th�`E:�ל�O�݊��D:@�E�� �Sl�j�1���t��>V*�2��o��;�,�@�셙��aQ�%@ ���<T�-�@���@"� |�R�� �>
�v� *r�; !�[Kc���Љ:8����u/`�<��c�� 5ƻE�D�(&@ &�!����z9<� 9nX��(֍ˋxT
�
��c5�i �ј ��\9ખ�f��� ~콾ڥ�����Tj9��D�l���6���n�����$?�&8��0�	`� P�&�B������HmH��m���~�5. ��R�e� %*����#��;`�����ww�G��P�
Ŋ�Idm�0+@EI7Y. �g�`�ħ)U�Pv;:�b�~xJ7"6�o��os��oH������K�j�`U)^IAa�����n;o���U���#X�.�*�_g�ө���
I����ݮ ��w��5f󖣓τ� TT8+��߿�|��)��6�i���7��9E�/��{*x�h�Tb����t��J+��;^E�kt6u�䴹�����a��,�Û��Rj�1��3�Q��Tѓ#tl?W+����Uե+L�<�LRj1c*�C�����"z22��;�\,_���}[���+���}G��
Ɂ��Kh�>��ϡ��
��;�7/�z�E'1���DB�yR+�^.��R(�=l�}3F�L����� W�M��~��9ֵp�m��+Ov�v4��e=<Fvz���+�`.&J���`q>7	S��
"C�Gn67����k������Jh5`XR�����*$V���r/B`{�bS�C(�%N�ʢ��:�x���FH�*�ӏ��rv�,����u����=��T$��o;hzj�;4�B�Vd3�B��O�y��To��߽B��:�cW��ݦ���k�I��<Βї����6�����`B�8��h�wE���6��o��m��z[U`�Զ��%���8������ށ��L� �P���2P'����;��A��R��yc�e��S f(k�^��hB
n�O _`�Tw^K����2�YL]�|�w9����ئW+��M�����l�x����� �x�v*u��`c6��]7��� �B��� i��N�]�%4�фi�b�-�S�N�h��%i�.@0�k	�v�d���?� ��U�}��ka���b��g@���(Q�P�e�v2��=U�����~YG��~��u�^M�8�xA70��7<�q5�a�&+	P��m�1�u���E�����N���[���H΁~�ӵ����]�ܹvmP.�_ڏ�]�H 넚�3;?*��\�/�OF�P��x����cpp7c�i$L�~m�2i�e��%�;�[�;l<���c���d�$<5�`�����wG�K⟸�f䙑��g��D)61�1�
A� ���*�����,���jj���0֌w
w)s�^�Q��fp�4D�\<��^vޤS	@MͶ��[����۠S	D�iG^j?���� �������Tٛꡩ������Ŧ�ևJ����#��{,��m}۬ �z���	�vZ��ӯ� ���θ������8 4U�5_i����o*u ��]�� �G���~�|���3v(��[|�_�J@��nM��#��ۿ����e�)�)7	w����^��v`��D�1�֣�"d�w©sTR��V���}/F;4թ@��-� ��\0堕��Z��r��z��c ����T�2�*�W��U �9{�N<��lʃ�!��bc.���W�����n��4�������C��B�i���;s�7���[���c(��3���xMD����M����>�"d�oMp|��C[TJ>X���/8��"���^�tO�%3�Nr�[�u���l���L�J�%fj�����p�^.:�ߪ�n&{�9 ����O���� �t������
݂���,���<$��m�bT���E��4$�1Y�F;�o?<r�s���r�2��f	k����dho��P݃���LK�S�9f2�g�~A7��MS�L)���9нΚ�KH�.���uW�����V��÷�os��1ؘ� ��v��{�Cd��W����H`+�>'x�T�O�y��@�Mf�gj�`&gM�PO�!a��#�cM��{4b⢺Y�-w7�`�_�i*S���	L>���7��&��psIa���������f$��/N8I������3R,�';�Ȋ�]d��(�i��O^J���\�������]q���h*�\-/���������^A��������h�I���IV�\��T.K��P��xT��dEg�2�U��r��k+a4���U�2P��.+�k(�Z�]%����{ѓ�`���ܭv����?��]�{��P���%�g�#���{��kk�F�
& ���e�������
D�ǘ�3��b�[�!X�Ӑ�J����NYP�`�oz�I����&N�|���N$�dZ�2|��Į�2	\�l��ʽUd
-n�{1	o�?�F�(�aFﾹ�<�}j�.o��i?���Hħ��K-x����1hQO޳ |Y�đ����L�Е���e�6~�RgK~H��8��?M�Y���{K/�O%됨fe6��x��s���%�,UH�kAJJ���KZ�l��Œ�s��O�"�þel��HST��
��%�,��UtRE4]����%����T���{$N�f��3�X���~���z�r�*KF7K\���X�L��<��%డx��0|���o�/I��{�$;�J�i�i�[�@�nV�7���Q0�<Q��a���HX���H�������E���W۱?����8�,��҅��p��'\��Jg'�\3����
̸OoBz0�{FZ��GdC"cߞV��0��$��ndw�:(�-��7}�BZ/���M���3�j�v����D2��v4�)41��F�t��-&?T֢�V�}lS�����N��]S��RA��cd��]����ħ�|"�4�4�1hn-��=z1�TK	��޷̵�mO�۶�\8��[)��R�م8�"��/,�R)��%��6/8��/��l���!!��/����xt��\J���{�C���b*%*Ձ\�_"�m��,��$�i �{�G c  g������Hb�"�͈�������0�D#�������bv�}���k�1��J��(+N]z��׽&�pT��h��$3~l,����!?m�{&�|�GBPQ���m�o0�5�40*K�Ó�o�wͭ��0����Q��4����-&��0uV��ēGo��&!��&.
�U&t�mV�RC���[[Ɔ�mW X���%��{�^�CN ��Z��P�ƛ�]x��I��?����p�^7�ۿ0��Z)���N��S��pr��m2���Y�E�awW?�K���"���4��(��pO.��^�O�_�b-Q��w��D��4�YN7��n1g�ѽ�Dх��F��"�1i ����B6;�w�w��z�����W���Y:]k)	tܮ�Ǧt&PD7ޕ�2a��Y�/�i�K@o?��5�!�SI�"��*��)��E�N�LQ�t���R��K�H�G ��&:�MwGCŒq���*	2|���0�S��,(	3|�E��i�L�Xrבֿ��f�v���
�9����S�n��c�����}�5ޢ�W/Q�S��>+0�I'��j��J��/#�]�W�����?����7�ud      x	   \  x�u��n�0@���L#����ߘ4�$0WG�T�~T��������]���x�sIw0���D��L<C����k��6��'87��"��=������~=�x[�\���XP���3���d�ûBe���l�������UR��V�cK7��5
1�wX	�)9Ah �v��=i�rAǒ�YB��G#�EA&�8�C��ֲ��#K4)Ls�Y��@�p�d磟�<K��h�c�1aX�t���Rm�D�(2�� �i4�C�ɂ�/m�%y(s$y��p�=��	̑�'$g�%ޑ����u�9R�tF��$��*�wG���K���ԉ�|�9���n���;?�� ��wW      v	   �  x����n� ��)z��0��ר�Ȇ�H�l�ڷ����!�^|�����1.�-9�=�4PJ���go��(��ʿj�4D)�����+��"�r>ا�/���Z���bfus|u����o�bg�w��)�1��!�՜�:��|\Z�����R�z��:rw�����p���.�y%Ɲ�K�>� �S�E�W{���6e�/��B?T&�0�,a������b65�/���u-i���ٖ�ƻ7F5��ɵ���g�zX��e�[��v���	���R�Ph�3��Z��d�Ј���w�����BS �ۭ�w�y��ls���cz�B��9%��_
d����ݿ,FKȚ��y��o��i{��A�Q�}�gR}G�$p�rJʓ@T��'9o�QC{      �	   �  x���͎�@�>E�'m�
�d�4�*�)�[���:�6z�~p�^t&���O�9�ܲ���w��k����bf�8 -��ZhN9{u@�[�8ˆqY�p�;��&�6��'7h�U������J÷��0[�@s����W��d�An(_�[a8�܅������V�ԫE�iB2oJs��SV��۝����xW�&W`�k�#<A���_���W�P~r���3�\�"���s��n��|0B�ϔ>S���g�B���7B�y=��n���iz��i��`�K�vQ@���_�@���I��ҕ�2'ʏQ�!T�����mlq�8 �m�d�D~�F�L��M�q�!��0��vn�Z��w�
7y��αG�p?G���7,b�p     