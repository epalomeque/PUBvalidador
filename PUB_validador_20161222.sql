PGDMP                          t            PUB_validador    9.4.9    9.4.4 �   �	           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                       false             
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            
           1262    33087    PUB_validador    DATABASE     r   CREATE DATABASE "PUB_validador" WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE "PUB_validador";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            
           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5            �            3079    11861    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    245            �            1259    49534 
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
       public       postgres    false    5    179            
           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
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
       public       postgres    false    5    181            
           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
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
       public       postgres    false    177    5            
           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
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
       public       postgres    false    5    185            
           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    184            �            1259    49552    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    183    5            	
           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
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
       public       postgres    false    5    187            

           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
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
       public       postgres    false    5    191            
           0    0 *   consultaCatalogos_cat_anioejercicio_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE "consultaCatalogos_cat_anioejercicio_id_seq" OWNED BY "consultaCatalogos_cat_anioejercicio".id;
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
       public       postgres    false    193    5            
           0    0 )   consultaCatalogos_cat_asentamiento_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE "consultaCatalogos_cat_asentamiento_id_seq" OWNED BY "consultaCatalogos_cat_asentamiento".id;
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
       public       postgres    false    5    195            
           0    0 )   consultaCatalogos_cat_codigopostal_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE "consultaCatalogos_cat_codigopostal_id_seq" OWNED BY "consultaCatalogos_cat_codigopostal".id;
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
       public       postgres    false    5    197            
           0    0 )   consultaCatalogos_cat_dependencias_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE "consultaCatalogos_cat_dependencias_id_seq" OWNED BY "consultaCatalogos_cat_dependencias".id;
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
       public       postgres    false    199    5            
           0    0 %   consultaCatalogos_cat_edocivil_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "consultaCatalogos_cat_edocivil_id_seq" OWNED BY "consultaCatalogos_cat_edocivil".id;
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
       public       postgres    false    5    201            
           0    0 $   consultaCatalogos_cat_estados_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "consultaCatalogos_cat_estados_id_seq" OWNED BY "consultaCatalogos_cat_estados".id;
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
       public       postgres    false    203    5            
           0    0 '   consultaCatalogos_cat_frecuencia_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE "consultaCatalogos_cat_frecuencia_id_seq" OWNED BY "consultaCatalogos_cat_frecuencia".id;
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
       public       postgres    false    5    205            
           0    0 $   consultaCatalogos_cat_fuentes_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE "consultaCatalogos_cat_fuentes_id_seq" OWNED BY "consultaCatalogos_cat_fuentes".id;
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
       public       postgres    false    5    207            
           0    0 +   consultaCatalogos_cat_identificacion_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE "consultaCatalogos_cat_identificacion_id_seq" OWNED BY "consultaCatalogos_cat_identificacion".id;
            public       postgres    false    206            �            1259    49724    consultaCatalogos_cat_localidad    TABLE     �   CREATE TABLE "consultaCatalogos_cat_localidad" (
    id integer NOT NULL,
    "identLocalidad" integer NOT NULL,
    "nombreLocalidad" character varying(250) NOT NULL,
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
       public       postgres    false    209    5            
           0    0 &   consultaCatalogos_cat_localidad_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "consultaCatalogos_cat_localidad_id_seq" OWNED BY "consultaCatalogos_cat_localidad".id;
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
       public       postgres    false    5    211            
           0    0     consultaCatalogos_cat_mes_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE "consultaCatalogos_cat_mes_id_seq" OWNED BY "consultaCatalogos_cat_mes".id;
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
       public       postgres    false    5    213            
           0    0 &   consultaCatalogos_cat_municipio_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "consultaCatalogos_cat_municipio_id_seq" OWNED BY "consultaCatalogos_cat_municipio".id;
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
       public       postgres    false    215    5            
           0    0 '   consultaCatalogos_cat_parentesco_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE "consultaCatalogos_cat_parentesco_id_seq" OWNED BY "consultaCatalogos_cat_parentesco".id;
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
       public       postgres    false    5    217            
           0    0 %   consultaCatalogos_cat_periodos_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE "consultaCatalogos_cat_periodos_id_seq" OWNED BY "consultaCatalogos_cat_periodos".id;
            public       postgres    false    216            �            1259    57986 "   consultaCatalogos_cat_periodos_mes    TABLE     �   CREATE TABLE "consultaCatalogos_cat_periodos_mes" (
    id integer NOT NULL,
    cat_periodos_id integer NOT NULL,
    cat_mes_id integer NOT NULL
);
 8   DROP TABLE public."consultaCatalogos_cat_periodos_mes";
       public         postgres    false    5            �            1259    57984 )   consultaCatalogos_cat_periodos_mes_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_periodos_mes_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public."consultaCatalogos_cat_periodos_mes_id_seq";
       public       postgres    false    5    244            
           0    0 )   consultaCatalogos_cat_periodos_mes_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE "consultaCatalogos_cat_periodos_mes_id_seq" OWNED BY "consultaCatalogos_cat_periodos_mes".id;
            public       postgres    false    243            �            1259    49764    consultaCatalogos_cat_programas    TABLE       CREATE TABLE "consultaCatalogos_cat_programas" (
    id integer NOT NULL,
    "identPrograma" character varying(10) NOT NULL,
    "nombrePrograma" character varying(80) NOT NULL,
    "descripPrograma" text NOT NULL,
    "idDependencia_id" integer NOT NULL
);
 5   DROP TABLE public."consultaCatalogos_cat_programas";
       public         postgres    false    5            �            1259    49762 &   consultaCatalogos_cat_programas_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_cat_programas_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."consultaCatalogos_cat_programas_id_seq";
       public       postgres    false    219    5            
           0    0 &   consultaCatalogos_cat_programas_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE "consultaCatalogos_cat_programas_id_seq" OWNED BY "consultaCatalogos_cat_programas".id;
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
       public       postgres    false    5    221            
           0    0 !   consultaCatalogos_cat_sexo_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "consultaCatalogos_cat_sexo_id_seq" OWNED BY "consultaCatalogos_cat_sexo".id;
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
       public       postgres    false    223    5            
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
       public       postgres    false    5    225            
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
       public       postgres    false    227    5            
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
       public       postgres    false    229    5            
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
    "Trimestre_id" integer NOT NULL,
    id_trabajo_id integer NOT NULL
);
 7   DROP TABLE public."consultaCatalogos_formatopubactor";
       public         postgres    false    5            �            1259    49816 (   consultaCatalogos_formatopubactor_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_formatopubactor_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."consultaCatalogos_formatopubactor_id_seq";
       public       postgres    false    231    5             
           0    0 (   consultaCatalogos_formatopubactor_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE "consultaCatalogos_formatopubactor_id_seq" OWNED BY "consultaCatalogos_formatopubactor".id;
            public       postgres    false    230            �            1259    49826 #   consultaCatalogos_formatopubpersona    TABLE     �  CREATE TABLE "consultaCatalogos_formatopubpersona" (
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
    "Titular" character varying(1) NOT NULL,
    "Parentesco_id" integer NOT NULL,
    id_trabajo_id integer NOT NULL
);
 9   DROP TABLE public."consultaCatalogos_formatopubpersona";
       public         postgres    false    5            �            1259    49824 *   consultaCatalogos_formatopubpersona_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_formatopubpersona_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public."consultaCatalogos_formatopubpersona_id_seq";
       public       postgres    false    5    233            !
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
    "TipoApoyo_id" integer NOT NULL,
    id_trabajo_id integer NOT NULL
);
 ;   DROP TABLE public."consultaCatalogos_formatopubpoblacion";
       public         postgres    false    5            �            1259    49832 ,   consultaCatalogos_formatopubpoblacion_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_formatopubpoblacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."consultaCatalogos_formatopubpoblacion_id_seq";
       public       postgres    false    235    5            "
           0    0 ,   consultaCatalogos_formatopubpoblacion_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "consultaCatalogos_formatopubpoblacion_id_seq" OWNED BY "consultaCatalogos_formatopubpoblacion".id;
            public       postgres    false    234            �            1259    49842 $   consultaCatalogos_trabajosrealizados    TABLE     �  CREATE TABLE "consultaCatalogos_trabajosrealizados" (
    id integer NOT NULL,
    "archivoRelacionado" character varying(100) NOT NULL,
    "FechaInicio" timestamp with time zone NOT NULL,
    "UltimaActualizacion" date NOT NULL,
    "CantidadRegistros" integer NOT NULL,
    "AnioEjercicio_id" integer NOT NULL,
    "Estatus_id" integer NOT NULL,
    "TipoPadron_id" integer NOT NULL,
    "Trimestre_id" integer NOT NULL,
    "Usuario_id" integer NOT NULL,
    jsondata text NOT NULL,
    "modeloConvertido" boolean NOT NULL,
    anio_valido boolean NOT NULL,
    trimestre_valido boolean NOT NULL,
    estructura_valida boolean NOT NULL
);
 :   DROP TABLE public."consultaCatalogos_trabajosrealizados";
       public         postgres    false    5            �            1259    49840 +   consultaCatalogos_trabajosrealizados_id_seq    SEQUENCE     �   CREATE SEQUENCE "consultaCatalogos_trabajosrealizados_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."consultaCatalogos_trabajosrealizados_id_seq";
       public       postgres    false    237    5            #
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
       public       postgres    false    240    5            $
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
       public       postgres    false    242    5            %
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
       public       postgres    false    5    189            &
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
       public       postgres    false    175    5            '
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
       public       postgres    false    5    173            (
           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    172            �            1259    50049    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    5            <           2604    49537    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    179    178    179            =           2604    49547    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    180    181    181            ;           2604    49527    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    176    177    177            >           2604    49557    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    182    183    183            ?           2604    49567    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    184    185    185            @           2604    49577    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    187    186    187            C           2604    49655    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_anioejercicio" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_anioejercicio_id_seq"'::regclass);
 W   ALTER TABLE public."consultaCatalogos_cat_anioejercicio" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    191    190    191            D           2604    49663    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_asentamiento" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_asentamiento_id_seq"'::regclass);
 V   ALTER TABLE public."consultaCatalogos_cat_asentamiento" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    193    192    193            E           2604    49671    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_codigopostal" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_codigopostal_id_seq"'::regclass);
 V   ALTER TABLE public."consultaCatalogos_cat_codigopostal" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    195    195            F           2604    49679    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_dependencias" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_dependencias_id_seq"'::regclass);
 V   ALTER TABLE public."consultaCatalogos_cat_dependencias" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            G           2604    49687    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_edocivil" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_edocivil_id_seq"'::regclass);
 R   ALTER TABLE public."consultaCatalogos_cat_edocivil" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            H           2604    49695    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_estados" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_estados_id_seq"'::regclass);
 Q   ALTER TABLE public."consultaCatalogos_cat_estados" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            I           2604    49703    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_frecuencia" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_frecuencia_id_seq"'::regclass);
 T   ALTER TABLE public."consultaCatalogos_cat_frecuencia" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            J           2604    49711    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_fuentes" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_fuentes_id_seq"'::regclass);
 Q   ALTER TABLE public."consultaCatalogos_cat_fuentes" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            K           2604    49719    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_identificacion" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_identificacion_id_seq"'::regclass);
 X   ALTER TABLE public."consultaCatalogos_cat_identificacion" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            L           2604    49727    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_localidad" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_localidad_id_seq"'::regclass);
 S   ALTER TABLE public."consultaCatalogos_cat_localidad" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            M           2604    49735    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_mes" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_mes_id_seq"'::regclass);
 M   ALTER TABLE public."consultaCatalogos_cat_mes" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            N           2604    49743    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_municipio" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_municipio_id_seq"'::regclass);
 S   ALTER TABLE public."consultaCatalogos_cat_municipio" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            O           2604    49751    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_parentesco" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_parentesco_id_seq"'::regclass);
 T   ALTER TABLE public."consultaCatalogos_cat_parentesco" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214    215            P           2604    49759    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_periodos" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_periodos_id_seq"'::regclass);
 R   ALTER TABLE public."consultaCatalogos_cat_periodos" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    216    217    217            ^           2604    57989    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_periodos_mes" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_periodos_mes_id_seq"'::regclass);
 V   ALTER TABLE public."consultaCatalogos_cat_periodos_mes" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    243    244            Q           2604    49767    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_programas" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_programas_id_seq"'::regclass);
 S   ALTER TABLE public."consultaCatalogos_cat_programas" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219            R           2604    49778    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_sexo" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_sexo_id_seq"'::regclass);
 N   ALTER TABLE public."consultaCatalogos_cat_sexo" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            S           2604    49786    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_subprogramas" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_subprogramas_id_seq"'::regclass);
 V   ALTER TABLE public."consultaCatalogos_cat_subprogramas" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222    223            T           2604    49797    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_tipoapoyo" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_tipoapoyo_id_seq"'::regclass);
 S   ALTER TABLE public."consultaCatalogos_cat_tipoapoyo" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225            U           2604    49805    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_cat_tipopadron" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_cat_tipopadron_id_seq"'::regclass);
 T   ALTER TABLE public."consultaCatalogos_cat_tipopadron" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    227    227            V           2604    49813    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_estatustrabajos" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_estatustrabajos_id_seq"'::regclass);
 U   ALTER TABLE public."consultaCatalogos_estatustrabajos" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    229    229            W           2604    49821    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_formatopubactor_id_seq"'::regclass);
 U   ALTER TABLE public."consultaCatalogos_formatopubactor" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    231    231            X           2604    49829    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_formatopubpersona_id_seq"'::regclass);
 W   ALTER TABLE public."consultaCatalogos_formatopubpersona" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232    233            Y           2604    49837    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_formatopubpoblacion_id_seq"'::regclass);
 Y   ALTER TABLE public."consultaCatalogos_formatopubpoblacion" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    234    235            Z           2604    49845    id    DEFAULT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados" ALTER COLUMN id SET DEFAULT nextval('"consultaCatalogos_trabajosrealizados_id_seq"'::regclass);
 X   ALTER TABLE public."consultaCatalogos_trabajosrealizados" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    237    237            [           2604    50075    id    DEFAULT     r   ALTER TABLE ONLY csvimport_csvimport ALTER COLUMN id SET DEFAULT nextval('csvimport_csvimport_id_seq'::regclass);
 E   ALTER TABLE public.csvimport_csvimport ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    240    240            \           2604    50086    id    DEFAULT     v   ALTER TABLE ONLY csvimport_importmodel ALTER COLUMN id SET DEFAULT nextval('csvimport_importmodel_id_seq'::regclass);
 G   ALTER TABLE public.csvimport_importmodel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    242    242            A           2604    49631    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    189    188    189            :           2604    49517    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    174    175    175            9           2604    49509    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    172    173    173            �	          0    49534 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    179   te      )
           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    178            �	          0    49544    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    181   �e      *
           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    180            �	          0    49524    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    177   �e      +
           0    0    auth_permission_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_permission_id_seq', 102, true);
            public       postgres    false    176            �	          0    49554 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    183   �i      �	          0    49564    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    185   �j      ,
           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    184            -
           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 2, true);
            public       postgres    false    182            �	          0    49574    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    187   k      .
           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 57, true);
            public       postgres    false    186            �	          0    49652 #   consultaCatalogos_cat_anioejercicio 
   TABLE DATA               M   COPY "consultaCatalogos_cat_anioejercicio" (id, "AnioEjercicio") FROM stdin;
    public       postgres    false    191   �k      /
           0    0 *   consultaCatalogos_cat_anioejercicio_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_anioejercicio_id_seq"', 4, true);
            public       postgres    false    190            �	          0    49660 "   consultaCatalogos_cat_asentamiento 
   TABLE DATA               f   COPY "consultaCatalogos_cat_asentamiento" (id, "identAsentamiento", "nombreAsentamiento") FROM stdin;
    public       postgres    false    193   l      0
           0    0 )   consultaCatalogos_cat_asentamiento_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_asentamiento_id_seq"', 42, true);
            public       postgres    false    192            �	          0    49668 "   consultaCatalogos_cat_codigopostal 
   TABLE DATA               X   COPY "consultaCatalogos_cat_codigopostal" (id, "claveCP", "idLocalidad_id") FROM stdin;
    public       postgres    false    195   �m      1
           0    0 )   consultaCatalogos_cat_codigopostal_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_codigopostal_id_seq"', 1, false);
            public       postgres    false    194            �	          0    49676 "   consultaCatalogos_cat_dependencias 
   TABLE DATA               d   COPY "consultaCatalogos_cat_dependencias" (id, "identDependencia", "nombreDependencia") FROM stdin;
    public       postgres    false    197   �m      2
           0    0 )   consultaCatalogos_cat_dependencias_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_dependencias_id_seq"', 73, true);
            public       postgres    false    196            �	          0    49684    consultaCatalogos_cat_edocivil 
   TABLE DATA               Z   COPY "consultaCatalogos_cat_edocivil" (id, "identEdoCivil", "nombreEdoCivil") FROM stdin;
    public       postgres    false    199    t      3
           0    0 %   consultaCatalogos_cat_edocivil_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"consultaCatalogos_cat_edocivil_id_seq"', 7, true);
            public       postgres    false    198            �	          0    49692    consultaCatalogos_cat_estados 
   TABLE DATA               U   COPY "consultaCatalogos_cat_estados" (id, "identEstado", "nombreEstado") FROM stdin;
    public       postgres    false    201   yt      4
           0    0 $   consultaCatalogos_cat_estados_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"consultaCatalogos_cat_estados_id_seq"', 32, true);
            public       postgres    false    200            �	          0    49700     consultaCatalogos_cat_frecuencia 
   TABLE DATA               u   COPY "consultaCatalogos_cat_frecuencia" (id, "identFrecuencia", "nombreFrecuencia", "descripFrecuencia") FROM stdin;
    public       postgres    false    203   �u      5
           0    0 '   consultaCatalogos_cat_frecuencia_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"consultaCatalogos_cat_frecuencia_id_seq"', 9, true);
            public       postgres    false    202            �	          0    49708    consultaCatalogos_cat_fuentes 
   TABLE DATA               \   COPY "consultaCatalogos_cat_fuentes" (id, "identFuentes", "descripcionFuentes") FROM stdin;
    public       postgres    false    205   Mv      6
           0    0 $   consultaCatalogos_cat_fuentes_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"consultaCatalogos_cat_fuentes_id_seq"', 16, true);
            public       postgres    false    204            �	          0    49716 $   consultaCatalogos_cat_identificacion 
   TABLE DATA               l   COPY "consultaCatalogos_cat_identificacion" (id, "identIdentificacion", "nombreIdentificacion") FROM stdin;
    public       postgres    false    207   �v      7
           0    0 +   consultaCatalogos_cat_identificacion_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('"consultaCatalogos_cat_identificacion_id_seq"', 10, true);
            public       postgres    false    206            �	          0    49724    consultaCatalogos_cat_localidad 
   TABLE DATA               o   COPY "consultaCatalogos_cat_localidad" (id, "identLocalidad", "nombreLocalidad", "idMunicipio_id") FROM stdin;
    public       postgres    false    209   x      8
           0    0 &   consultaCatalogos_cat_localidad_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('"consultaCatalogos_cat_localidad_id_seq"', 2499, true);
            public       postgres    false    208            �	          0    49732    consultaCatalogos_cat_mes 
   TABLE DATA               ?   COPY "consultaCatalogos_cat_mes" (id, "nombreMes") FROM stdin;
    public       postgres    false    211   )�      9
           0    0     consultaCatalogos_cat_mes_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"consultaCatalogos_cat_mes_id_seq"', 12, true);
            public       postgres    false    210            �	          0    49740    consultaCatalogos_cat_municipio 
   TABLE DATA               l   COPY "consultaCatalogos_cat_municipio" (id, "identMunicipio", "nombreMunicipio", "idEstado_id") FROM stdin;
    public       postgres    false    213   ��      :
           0    0 &   consultaCatalogos_cat_municipio_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"consultaCatalogos_cat_municipio_id_seq"', 17, true);
            public       postgres    false    212            �	          0    49748     consultaCatalogos_cat_parentesco 
   TABLE DATA               `   COPY "consultaCatalogos_cat_parentesco" (id, "identParentesco", "nombreParentesco") FROM stdin;
    public       postgres    false    215   ��      ;
           0    0 '   consultaCatalogos_cat_parentesco_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('"consultaCatalogos_cat_parentesco_id_seq"', 13, true);
            public       postgres    false    214            �	          0    49756    consultaCatalogos_cat_periodos 
   TABLE DATA               X   COPY "consultaCatalogos_cat_periodos" (id, "identPeriodo", "nombrePeriodo") FROM stdin;
    public       postgres    false    217   V�      <
           0    0 %   consultaCatalogos_cat_periodos_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('"consultaCatalogos_cat_periodos_id_seq"', 4, true);
            public       postgres    false    216            �	          0    57986 "   consultaCatalogos_cat_periodos_mes 
   TABLE DATA               X   COPY "consultaCatalogos_cat_periodos_mes" (id, cat_periodos_id, cat_mes_id) FROM stdin;
    public       postgres    false    244   ��      =
           0    0 )   consultaCatalogos_cat_periodos_mes_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_periodos_mes_id_seq"', 12, true);
            public       postgres    false    243            �	          0    49764    consultaCatalogos_cat_programas 
   TABLE DATA               �   COPY "consultaCatalogos_cat_programas" (id, "identPrograma", "nombrePrograma", "descripPrograma", "idDependencia_id") FROM stdin;
    public       postgres    false    219   ��      >
           0    0 &   consultaCatalogos_cat_programas_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"consultaCatalogos_cat_programas_id_seq"', 4, true);
            public       postgres    false    218            �	          0    49775    consultaCatalogos_cat_sexo 
   TABLE DATA               N   COPY "consultaCatalogos_cat_sexo" (id, "identSexo", "nombreSexo") FROM stdin;
    public       postgres    false    221   }�      ?
           0    0 !   consultaCatalogos_cat_sexo_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('"consultaCatalogos_cat_sexo_id_seq"', 2, true);
            public       postgres    false    220            �	          0    49783 "   consultaCatalogos_cat_subprogramas 
   TABLE DATA               �   COPY "consultaCatalogos_cat_subprogramas" (id, "identSubprograma", "nombreSubPrograma", "descripSubprograma", "idPrograma_id") FROM stdin;
    public       postgres    false    223   ��      @
           0    0 )   consultaCatalogos_cat_subprogramas_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('"consultaCatalogos_cat_subprogramas_id_seq"', 1, false);
            public       postgres    false    222            �	          0    49794    consultaCatalogos_cat_tipoapoyo 
   TABLE DATA               ]   COPY "consultaCatalogos_cat_tipoapoyo" (id, "identTipoApoyo", "nombreTipoApoyo") FROM stdin;
    public       postgres    false    225   ��      A
           0    0 &   consultaCatalogos_cat_tipoapoyo_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('"consultaCatalogos_cat_tipoapoyo_id_seq"', 3, true);
            public       postgres    false    224            �	          0    49802     consultaCatalogos_cat_tipopadron 
   TABLE DATA               I   COPY "consultaCatalogos_cat_tipopadron" (id, "nombrePadron") FROM stdin;
    public       postgres    false    227   �      B
           0    0 '   consultaCatalogos_cat_tipopadron_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('"consultaCatalogos_cat_tipopadron_id_seq"', 3, true);
            public       postgres    false    226            �	          0    49810 !   consultaCatalogos_estatustrabajos 
   TABLE DATA               K   COPY "consultaCatalogos_estatustrabajos" (id, "nombreEstatus") FROM stdin;
    public       postgres    false    229   M�      C
           0    0 (   consultaCatalogos_estatustrabajos_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('"consultaCatalogos_estatustrabajos_id_seq"', 5, true);
            public       postgres    false    228            �	          0    49818 !   consultaCatalogos_formatopubactor 
   TABLE DATA               �  COPY "consultaCatalogos_formatopubactor" (id, "RazonSocial", "RFC", "PrimerApellido", "SegundoApellido", "Nombre", "CURP", "Titular", "NombreVialidadActor", "NumeroExtActor", "NumeroIntActor", "CodigoPostalActor", "RefDomActor", "NombreVialidadIntegrante", "NumeroExtIntegrante", "NumeroIntIntegrante", "CodigoPostalIntegrante", "RefDomicilioIntegrante", "Beneficio", "AnioEjercicio_id", "ClavePrograma_id", "ClaveSubprograma_id", "Dependencia_id", "EdoNacimiento_id", "FuentesRecurso_id", "LocDondeSePagaBeneficio_id", "LocResidActorSocial_id", "LocResidDelIntegrante_id", "MesPeriodoPago_id", "MunDondeSePagaBeneficio_id", "OtroDocId_id", "PeriodicidadEntregaBeneficio_id", "Sexo_id", "TipoApoyo_id", "Trimestre_id", id_trabajo_id) FROM stdin;
    public       postgres    false    231   ��      D
           0    0 (   consultaCatalogos_formatopubactor_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('"consultaCatalogos_formatopubactor_id_seq"', 1, false);
            public       postgres    false    230            �	          0    49826 #   consultaCatalogos_formatopubpersona 
   TABLE DATA               v  COPY "consultaCatalogos_formatopubpersona" (id, "AnioEjercicio_id", "MesPeriodoPago_id", "PeriodicidadEntregaBeneficio_id", "Trimestre_id", "AsentamientoHumano_id", "Beneficio", "CURP", "ClavePrograma_id", "ClaveSubprograma_id", "CodigoPostal", "Dependencia_id", "EstadoCivil_id", "FuentesRecurso_id", "IdHogar", "IdPersona", "LocalidadPagoBeneficio_id", "LocalidadResidencia_id", "MunicipioBeneficiado_id", "Nombre", "NombreVialidad", "NumeroExterior", "NumeroInterior", "OtroDocId_id", "PrimerApellido", "ReferenciaDomicilio", "SegundoApellido", "Sexo_id", "TipoApoyo_id", "Titular", "Parentesco_id", id_trabajo_id) FROM stdin;
    public       postgres    false    233   ��      E
           0    0 *   consultaCatalogos_formatopubpersona_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('"consultaCatalogos_formatopubpersona_id_seq"', 1, false);
            public       postgres    false    232            �	          0    49834 %   consultaCatalogos_formatopubpoblacion 
   TABLE DATA               �  COPY "consultaCatalogos_formatopubpoblacion" (id, "AnioEjercicio_id", "PeriodicidadEntregaBeneficio_id", "Trimestre_id", "AsentamientoHumano_id", "ClavePrograma_id", "ClaveSubprograma_id", "CodigoPostal", "Dependencia_id", "FuentesRecurso_id", "IdObra", "LocalidadBeneficiada_id", "Multilocalidad", "MunicipioBeneficiado_id", "NombreVialidad", "NumeroExterior", "NumeroInterior", "RFC", "ReferenciaDomicilio", "TipoApoyo_id", id_trabajo_id) FROM stdin;
    public       postgres    false    235   ��      F
           0    0 ,   consultaCatalogos_formatopubpoblacion_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('"consultaCatalogos_formatopubpoblacion_id_seq"', 1, false);
            public       postgres    false    234            �	          0    49842 $   consultaCatalogos_trabajosrealizados 
   TABLE DATA               /  COPY "consultaCatalogos_trabajosrealizados" (id, "archivoRelacionado", "FechaInicio", "UltimaActualizacion", "CantidadRegistros", "AnioEjercicio_id", "Estatus_id", "TipoPadron_id", "Trimestre_id", "Usuario_id", jsondata, "modeloConvertido", anio_valido, trimestre_valido, estructura_valida) FROM stdin;
    public       postgres    false    237   ��      G
           0    0 +   consultaCatalogos_trabajosrealizados_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('"consultaCatalogos_trabajosrealizados_id_seq"', 34, true);
            public       postgres    false    236            �	          0    50072    csvimport_csvimport 
   TABLE DATA               �   COPY csvimport_csvimport (id, model_name, field_list, upload_file, file_name, encoding, upload_method, error_log, import_date, import_user) FROM stdin;
    public       postgres    false    240   g�      H
           0    0    csvimport_csvimport_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('csvimport_csvimport_id_seq', 2, true);
            public       postgres    false    239            �	          0    50083    csvimport_importmodel 
   TABLE DATA               S   COPY csvimport_importmodel (id, csvimport_id, numeric_id, natural_key) FROM stdin;
    public       postgres    false    242   .�      I
           0    0    csvimport_importmodel_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('csvimport_importmodel_id_seq', 1, false);
            public       postgres    false    241            �	          0    49628    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    189   K�      J
           0    0    django_admin_log_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('django_admin_log_id_seq', 2857, true);
            public       postgres    false    188            �	          0    49514    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    175   ��      K
           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 34, true);
            public       postgres    false    174            �	          0    49506    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    173   �      L
           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 35, true);
            public       postgres    false    172            �	          0    50049    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    238   1�      l           2606    49541    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    179    179            r           2606    49551 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         postgres    false    181    181    181            t           2606    49549    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    181    181            n           2606    49539    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    179    179            g           2606    49531 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         postgres    false    177    177    177            i           2606    49529    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    177    177            }           2606    49569    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    185    185                       2606    49571 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         postgres    false    185    185    185            v           2606    49559    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    183    183            �           2606    49579    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    187    187            �           2606    49581 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         postgres    false    187    187    187            y           2606    49561    auth_user_username_key 
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
       public         postgres    false    215    215            �           2606    57993 ?   consultaCatalogos_cat_periodos_m_cat_periodos_id_cat_mes_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_periodos_mes"
    ADD CONSTRAINT "consultaCatalogos_cat_periodos_m_cat_periodos_id_cat_mes_id_key" UNIQUE (cat_periodos_id, cat_mes_id);
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_periodos_mes" DROP CONSTRAINT "consultaCatalogos_cat_periodos_m_cat_periodos_id_cat_mes_id_key";
       public         postgres    false    244    244    244            	           2606    57991 '   consultaCatalogos_cat_periodos_mes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_periodos_mes"
    ADD CONSTRAINT "consultaCatalogos_cat_periodos_mes_pkey" PRIMARY KEY (id);
 x   ALTER TABLE ONLY public."consultaCatalogos_cat_periodos_mes" DROP CONSTRAINT "consultaCatalogos_cat_periodos_mes_pkey";
       public         postgres    false    244    244            �           2606    49761 #   consultaCatalogos_cat_periodos_pkey 
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
       public         postgres    false    189    189            b           2606    49521 +   django_content_type_app_label_3ec8c61c_uniq 
   CONSTRAINT        ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_3ec8c61c_uniq UNIQUE (app_label, model);
 i   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_3ec8c61c_uniq;
       public         postgres    false    175    175    175            d           2606    49519    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    175    175            `           2606    49511    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    173    173            �           2606    50056    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    238    238            j           1259    49588    auth_group_name_331666e8_like    INDEX     a   CREATE INDEX auth_group_name_331666e8_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_331666e8_like;
       public         postgres    false    179            o           1259    49599    auth_group_permissions_0e939a4f    INDEX     _   CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_0e939a4f;
       public         postgres    false    181            p           1259    49600    auth_group_permissions_8373b171    INDEX     d   CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);
 3   DROP INDEX public.auth_group_permissions_8373b171;
       public         postgres    false    181            e           1259    49587    auth_permission_417f1b1c    INDEX     X   CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);
 ,   DROP INDEX public.auth_permission_417f1b1c;
       public         postgres    false    177            z           1259    49613    auth_user_groups_0e939a4f    INDEX     S   CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_0e939a4f;
       public         postgres    false    185            {           1259    49612    auth_user_groups_e8701ad4    INDEX     R   CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);
 -   DROP INDEX public.auth_user_groups_e8701ad4;
       public         postgres    false    185            �           1259    49625 #   auth_user_user_permissions_8373b171    INDEX     l   CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);
 7   DROP INDEX public.auth_user_user_permissions_8373b171;
       public         postgres    false    187            �           1259    49624 #   auth_user_user_permissions_e8701ad4    INDEX     f   CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);
 7   DROP INDEX public.auth_user_user_permissions_e8701ad4;
       public         postgres    false    187            w           1259    49601    auth_user_username_94b8aae_like    INDEX     f   CREATE INDEX auth_user_username_94b8aae_like ON auth_user USING btree (username varchar_pattern_ops);
 3   DROP INDEX public.auth_user_username_94b8aae_like;
       public         postgres    false    183            �           1259    50043 +   consultaCatalogos_cat_codigopostal_9fd1c095    INDEX     �   CREATE INDEX "consultaCatalogos_cat_codigopostal_9fd1c095" ON "consultaCatalogos_cat_codigopostal" USING btree ("idLocalidad_id");
 A   DROP INDEX public."consultaCatalogos_cat_codigopostal_9fd1c095";
       public         postgres    false    195            �           1259    50037 (   consultaCatalogos_cat_localidad_127b817c    INDEX     }   CREATE INDEX "consultaCatalogos_cat_localidad_127b817c" ON "consultaCatalogos_cat_localidad" USING btree ("idMunicipio_id");
 >   DROP INDEX public."consultaCatalogos_cat_localidad_127b817c";
       public         postgres    false    209            �           1259    49856 (   consultaCatalogos_cat_municipio_e4961637    INDEX     z   CREATE INDEX "consultaCatalogos_cat_municipio_e4961637" ON "consultaCatalogos_cat_municipio" USING btree ("idEstado_id");
 >   DROP INDEX public."consultaCatalogos_cat_municipio_e4961637";
       public         postgres    false    213            �           1259    58005 +   consultaCatalogos_cat_periodos_mes_8ec78dd7    INDEX     }   CREATE INDEX "consultaCatalogos_cat_periodos_mes_8ec78dd7" ON "consultaCatalogos_cat_periodos_mes" USING btree (cat_mes_id);
 A   DROP INDEX public."consultaCatalogos_cat_periodos_mes_8ec78dd7";
       public         postgres    false    244            �           1259    58004 +   consultaCatalogos_cat_periodos_mes_d56a3e64    INDEX     �   CREATE INDEX "consultaCatalogos_cat_periodos_mes_d56a3e64" ON "consultaCatalogos_cat_periodos_mes" USING btree (cat_periodos_id);
 A   DROP INDEX public."consultaCatalogos_cat_periodos_mes_d56a3e64";
       public         postgres    false    244            �           1259    66212 (   consultaCatalogos_cat_programas_7da7719d    INDEX        CREATE INDEX "consultaCatalogos_cat_programas_7da7719d" ON "consultaCatalogos_cat_programas" USING btree ("idDependencia_id");
 >   DROP INDEX public."consultaCatalogos_cat_programas_7da7719d";
       public         postgres    false    219            �           1259    49862 +   consultaCatalogos_cat_subprogramas_0fa2623c    INDEX     �   CREATE INDEX "consultaCatalogos_cat_subprogramas_0fa2623c" ON "consultaCatalogos_cat_subprogramas" USING btree ("idPrograma_id");
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
       public         postgres    false    231            �           1259    58015 *   consultaCatalogos_formatopubactor_5e934b27    INDEX     ~   CREATE INDEX "consultaCatalogos_formatopubactor_5e934b27" ON "consultaCatalogos_formatopubactor" USING btree (id_trabajo_id);
 @   DROP INDEX public."consultaCatalogos_formatopubactor_5e934b27";
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
       public         postgres    false    233            �           1259    58021 ,   consultaCatalogos_formatopubpersona_5e934b27    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_5e934b27" ON "consultaCatalogos_formatopubpersona" USING btree (id_trabajo_id);
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_5e934b27";
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
       public         postgres    false    233            �           1259    57974 ,   consultaCatalogos_formatopubpersona_e765c1a7    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpersona_e765c1a7" ON "consultaCatalogos_formatopubpersona" USING btree ("Parentesco_id");
 B   DROP INDEX public."consultaCatalogos_formatopubpersona_e765c1a7";
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
       public         postgres    false    235            �           1259    58027 .   consultaCatalogos_formatopubpoblacion_5e934b27    INDEX     �   CREATE INDEX "consultaCatalogos_formatopubpoblacion_5e934b27" ON "consultaCatalogos_formatopubpoblacion" USING btree (id_trabajo_id);
 D   DROP INDEX public."consultaCatalogos_formatopubpoblacion_5e934b27";
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
       public         postgres    false    242            �           1259    49648    django_admin_log_417f1b1c    INDEX     Z   CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);
 -   DROP INDEX public.django_admin_log_417f1b1c;
       public         postgres    false    189            �           1259    49649    django_admin_log_e8701ad4    INDEX     R   CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);
 -   DROP INDEX public.django_admin_log_e8701ad4;
       public         postgres    false    189            �           1259    50057    django_session_de54fa62    INDEX     R   CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);
 +   DROP INDEX public.django_session_de54fa62;
       public         postgres    false    238            �           1259    50058 (   django_session_session_key_630ca218_like    INDEX     w   CREATE INDEX django_session_session_key_630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_630ca218_like;
       public         postgres    false    238            "	           2606    58022     D05bf7a56814ad23a330ea751600adae    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "D05bf7a56814ad23a330ea751600adae" FOREIGN KEY (id_trabajo_id) REFERENCES "consultaCatalogos_trabajosrealizados"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "D05bf7a56814ad23a330ea751600adae";
       public       postgres    false    2290    233    237            5	           2606    57740     D0c1b4bb49202f0ff700f84504f889ce    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D0c1b4bb49202f0ff700f84504f889ce" FOREIGN KEY ("ClaveSubprograma_id") REFERENCES "consultaCatalogos_cat_subprogramas"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D0c1b4bb49202f0ff700f84504f889ce";
       public       postgres    false    223    2224    235            	           2606    49878     D119b6828811740556612097f0937438    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D119b6828811740556612097f0937438" FOREIGN KEY ("Dependencia_id") REFERENCES "consultaCatalogos_cat_dependencias"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D119b6828811740556612097f0937438";
       public       postgres    false    2194    197    231            %	           2606    49969     D19226b2354ae51d1bab7e105d5b6ce7    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "D19226b2354ae51d1bab7e105d5b6ce7" FOREIGN KEY ("PeriodicidadEntregaBeneficio_id") REFERENCES "consultaCatalogos_cat_frecuencia"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "D19226b2354ae51d1bab7e105d5b6ce7";
       public       postgres    false    203    2200    233            8	           2606    57758     D1d057f0d036e0d53e56f4cb3679ae2b    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D1d057f0d036e0d53e56f4cb3679ae2b" FOREIGN KEY ("LocalidadBeneficiada_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D1d057f0d036e0d53e56f4cb3679ae2b";
       public       postgres    false    209    2207    235            3	           2606    57728     D1d3ac1f755f5e915e8833bf4bc2fcb0    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D1d3ac1f755f5e915e8833bf4bc2fcb0" FOREIGN KEY ("AsentamientoHumano_id") REFERENCES "consultaCatalogos_cat_asentamiento"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D1d3ac1f755f5e915e8833bf4bc2fcb0";
       public       postgres    false    235    193    2189            4	           2606    57734     D23b5da05874cf61145022c50c12f546    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D23b5da05874cf61145022c50c12f546" FOREIGN KEY ("ClavePrograma_id") REFERENCES "consultaCatalogos_cat_programas"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D23b5da05874cf61145022c50c12f546";
       public       postgres    false    219    2219    235            	           2606    49873     D333580be3dab15a6961bff80d743269    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D333580be3dab15a6961bff80d743269" FOREIGN KEY ("ClaveSubprograma_id") REFERENCES "consultaCatalogos_cat_subprogramas"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D333580be3dab15a6961bff80d743269";
       public       postgres    false    231    2224    223            0	           2606    57953     D344183b7b0c8568d34a80e3763ad2e5    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "D344183b7b0c8568d34a80e3763ad2e5" FOREIGN KEY ("OtroDocId_id") REFERENCES "consultaCatalogos_cat_identificacion"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "D344183b7b0c8568d34a80e3763ad2e5";
       public       postgres    false    207    2204    233            6	           2606    57746     D3cd3ee93f0c174ce7c7048505bb88fa    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D3cd3ee93f0c174ce7c7048505bb88fa" FOREIGN KEY ("Dependencia_id") REFERENCES "consultaCatalogos_cat_dependencias"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D3cd3ee93f0c174ce7c7048505bb88fa";
       public       postgres    false    2194    197    235            	           2606    49898     D43a643115767c9733566b073f7f2bb9    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D43a643115767c9733566b073f7f2bb9" FOREIGN KEY ("LocResidActorSocial_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D43a643115767c9733566b073f7f2bb9";
       public       postgres    false    209    2207    231            (	           2606    57905     D4ccd88b4b0740aec274422119dc09d9    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "D4ccd88b4b0740aec274422119dc09d9" FOREIGN KEY ("ClavePrograma_id") REFERENCES "consultaCatalogos_cat_programas"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "D4ccd88b4b0740aec274422119dc09d9";
       public       postgres    false    233    219    2219            <	           2606    49983     D54dfc426c9f7031d61f315f11606382    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D54dfc426c9f7031d61f315f11606382" FOREIGN KEY ("AnioEjercicio_id") REFERENCES "consultaCatalogos_cat_anioejercicio"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D54dfc426c9f7031d61f315f11606382";
       public       postgres    false    2187    235    191            	           2606    49913     D59e4a2489534f6f586590ff584310fd    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D59e4a2489534f6f586590ff584310fd" FOREIGN KEY ("MunDondeSePagaBeneficio_id") REFERENCES "consultaCatalogos_cat_municipio"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D59e4a2489534f6f586590ff584310fd";
       public       postgres    false    213    2212    231            @	           2606    50007     D5ad631e11a94c060436d3ad03ee4ca9    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "D5ad631e11a94c060436d3ad03ee4ca9" FOREIGN KEY ("AnioEjercicio_id") REFERENCES "consultaCatalogos_cat_anioejercicio"(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "D5ad631e11a94c060436d3ad03ee4ca9";
       public       postgres    false    2187    237    191            	           2606    49918     D6c0016e9a5b9c4286f37c445dc6292d    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D6c0016e9a5b9c4286f37c445dc6292d" FOREIGN KEY ("OtroDocId_id") REFERENCES "consultaCatalogos_cat_identificacion"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D6c0016e9a5b9c4286f37c445dc6292d";
       public       postgres    false    207    2204    231            	           2606    49923     D745f08753c4b4cf980ee7724a9b94b9    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "D745f08753c4b4cf980ee7724a9b94b9" FOREIGN KEY ("PeriodicidadEntregaBeneficio_id") REFERENCES "consultaCatalogos_cat_frecuencia"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "D745f08753c4b4cf980ee7724a9b94b9";
       public       postgres    false    203    231    2200            9	           2606    57764     D87affc170c6a89255c777c2d058bd1a    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "D87affc170c6a89255c777c2d058bd1a" FOREIGN KEY ("MunicipioBeneficiado_id") REFERENCES "consultaCatalogos_cat_municipio"(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "D87affc170c6a89255c777c2d058bd1a";
       public       postgres    false    213    235    2212            )	           2606    57911     D94d4550272c69b5a3a885c8612e4619    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "D94d4550272c69b5a3a885c8612e4619" FOREIGN KEY ("ClaveSubprograma_id") REFERENCES "consultaCatalogos_cat_subprogramas"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "D94d4550272c69b5a3a885c8612e4619";
       public       postgres    false    2224    233    223            	           2606    49888 >   FuentesRecurso_id_12eb10a9_fk_consultaCatalogos_cat_fuentes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "FuentesRecurso_id_12eb10a9_fk_consultaCatalogos_cat_fuentes_id" FOREIGN KEY ("FuentesRecurso_id") REFERENCES "consultaCatalogos_cat_fuentes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "FuentesRecurso_id_12eb10a9_fk_consultaCatalogos_cat_fuentes_id";
       public       postgres    false    2202    231    205            ,	           2606    57929 >   FuentesRecurso_id_31f41906_fk_consultaCatalogos_cat_fuentes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "FuentesRecurso_id_31f41906_fk_consultaCatalogos_cat_fuentes_id" FOREIGN KEY ("FuentesRecurso_id") REFERENCES "consultaCatalogos_cat_fuentes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "FuentesRecurso_id_31f41906_fk_consultaCatalogos_cat_fuentes_id";
       public       postgres    false    205    233    2202            7	           2606    57752 >   FuentesRecurso_id_63473acd_fk_consultaCatalogos_cat_fuentes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "FuentesRecurso_id_63473acd_fk_consultaCatalogos_cat_fuentes_id" FOREIGN KEY ("FuentesRecurso_id") REFERENCES "consultaCatalogos_cat_fuentes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "FuentesRecurso_id_63473acd_fk_consultaCatalogos_cat_fuentes_id";
       public       postgres    false    2202    235    205            	           2606    49594 ?   auth_group_permiss_permission_id_23962d04_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permiss_permission_id_23962d04_fk_auth_permission_id;
       public       postgres    false    2153    177    181            	           2606    49589 9   auth_group_permissions_group_id_58c48ba9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_58c48ba9_fk_auth_group_id;
       public       postgres    false    179    2158    181            	           2606    49582 ?   auth_permiss_content_type_id_51277a81_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permiss_content_type_id_51277a81_fk_django_content_type_id;
       public       postgres    false    2148    175    177            	           2606    49607 3   auth_user_groups_group_id_30a071c9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_30a071c9_fk_auth_group_id;
       public       postgres    false    2158    185    179            	           2606    49602 1   auth_user_groups_user_id_24702650_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_24702650_fk_auth_user_id;
       public       postgres    false    185    2166    183            	           2606    49619 ?   auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_per_permission_id_3d7071f0_fk_auth_permission_id;
       public       postgres    false    177    2153    187            	           2606    49614 ;   auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id;
       public       postgres    false    2166    183    187            =	           2606    49993     b2a04d445b0cc6c9a0cbb47b995af568    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT b2a04d445b0cc6c9a0cbb47b995af568 FOREIGN KEY ("PeriodicidadEntregaBeneficio_id") REFERENCES "consultaCatalogos_cat_frecuencia"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT b2a04d445b0cc6c9a0cbb47b995af568;
       public       postgres    false    235    203    2200            	           2606    66213     b6dbec4e4c205b14c6313a4faae7dbf7    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_programas"
    ADD CONSTRAINT b6dbec4e4c205b14c6313a4faae7dbf7 FOREIGN KEY ("idDependencia_id") REFERENCES "consultaCatalogos_cat_dependencias"(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public."consultaCatalogos_cat_programas" DROP CONSTRAINT b6dbec4e4c205b14c6313a4faae7dbf7;
       public       postgres    false    197    219    2194            #	           2606    49959     c57744d9d213f6e8faab6d8ee8cb3f58    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT c57744d9d213f6e8faab6d8ee8cb3f58 FOREIGN KEY ("AnioEjercicio_id") REFERENCES "consultaCatalogos_cat_anioejercicio"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT c57744d9d213f6e8faab6d8ee8cb3f58;
       public       postgres    false    233    191    2187            	           2606    49883 ?   c_EdoNacimiento_id_68602f4a_fk_consultaCatalogos_cat_estados_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "c_EdoNacimiento_id_68602f4a_fk_consultaCatalogos_cat_estados_id" FOREIGN KEY ("EdoNacimiento_id") REFERENCES "consultaCatalogos_cat_estados"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "c_EdoNacimiento_id_68602f4a_fk_consultaCatalogos_cat_estados_id";
       public       postgres    false    231    2198    201            !	           2606    57975 ?   c_Parentesco_id_2a5380b9_fk_consultaCatalogos_cat_parentesco_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "c_Parentesco_id_2a5380b9_fk_consultaCatalogos_cat_parentesco_id" FOREIGN KEY ("Parentesco_id") REFERENCES "consultaCatalogos_cat_parentesco"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "c_Parentesco_id_2a5380b9_fk_consultaCatalogos_cat_parentesco_id";
       public       postgres    false    233    215    2214            A	           2606    50017 ?   c_TipoPadron_id_1b853eed_fk_consultaCatalogos_cat_tipopadron_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "c_TipoPadron_id_1b853eed_fk_consultaCatalogos_cat_tipopadron_id" FOREIGN KEY ("TipoPadron_id") REFERENCES "consultaCatalogos_cat_tipopadron"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "c_TipoPadron_id_1b853eed_fk_consultaCatalogos_cat_tipopadron_id";
       public       postgres    false    2228    227    237            E	           2606    57994 ?   c_cat_periodos_id_59b8373b_fk_consultaCatalogos_cat_periodos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_periodos_mes"
    ADD CONSTRAINT "c_cat_periodos_id_59b8373b_fk_consultaCatalogos_cat_periodos_id" FOREIGN KEY (cat_periodos_id) REFERENCES "consultaCatalogos_cat_periodos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_periodos_mes" DROP CONSTRAINT "c_cat_periodos_id_59b8373b_fk_consultaCatalogos_cat_periodos_id";
       public       postgres    false    217    2216    244            	           2606    50044 ?   c_idLocalidad_id_236bcae9_fk_consultaCatalogos_cat_localidad_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_codigopostal"
    ADD CONSTRAINT "c_idLocalidad_id_236bcae9_fk_consultaCatalogos_cat_localidad_id" FOREIGN KEY ("idLocalidad_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_codigopostal" DROP CONSTRAINT "c_idLocalidad_id_236bcae9_fk_consultaCatalogos_cat_localidad_id";
       public       postgres    false    195    2207    209            	           2606    50038 ?   c_idMunicipio_id_69ee7479_fk_consultaCatalogos_cat_municipio_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_localidad"
    ADD CONSTRAINT "c_idMunicipio_id_69ee7479_fk_consultaCatalogos_cat_municipio_id" FOREIGN KEY ("idMunicipio_id") REFERENCES "consultaCatalogos_cat_municipio"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_localidad" DROP CONSTRAINT "c_idMunicipio_id_69ee7479_fk_consultaCatalogos_cat_municipio_id";
       public       postgres    false    209    2212    213            	           2606    49863     cbb47b349960e4f969ce332ee746e835    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT cbb47b349960e4f969ce332ee746e835 FOREIGN KEY ("AnioEjercicio_id") REFERENCES "consultaCatalogos_cat_anioejercicio"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT cbb47b349960e4f969ce332ee746e835;
       public       postgres    false    191    231    2187            +	           2606    57923 ?   co_EstadoCivil_id_7b800263_fk_consultaCatalogos_cat_edocivil_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "co_EstadoCivil_id_7b800263_fk_consultaCatalogos_cat_edocivil_id" FOREIGN KEY ("EstadoCivil_id") REFERENCES "consultaCatalogos_cat_edocivil"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "co_EstadoCivil_id_7b800263_fk_consultaCatalogos_cat_edocivil_id";
       public       postgres    false    199    233    2196            	           2606    49857 ?   co_idPrograma_id_5e55c862_fk_consultaCatalogos_cat_programas_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_subprogramas"
    ADD CONSTRAINT "co_idPrograma_id_5e55c862_fk_consultaCatalogos_cat_programas_id" FOREIGN KEY ("idPrograma_id") REFERENCES "consultaCatalogos_cat_programas"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_subprogramas" DROP CONSTRAINT "co_idPrograma_id_5e55c862_fk_consultaCatalogos_cat_programas_id";
       public       postgres    false    219    223    2219            ?	           2606    50236 ?   con_Estatus_id_3d1491d1_fk_consultaCatalogos_estatustrabajos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "con_Estatus_id_3d1491d1_fk_consultaCatalogos_estatustrabajos_id" FOREIGN KEY ("Estatus_id") REFERENCES "consultaCatalogos_estatustrabajos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "con_Estatus_id_3d1491d1_fk_consultaCatalogos_estatustrabajos_id";
       public       postgres    false    2230    229    237            2	           2606    57965 ?   con_TipoApoyo_id_3897031e_fk_consultaCatalogos_cat_tipoapoyo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "con_TipoApoyo_id_3897031e_fk_consultaCatalogos_cat_tipoapoyo_id" FOREIGN KEY ("TipoApoyo_id") REFERENCES "consultaCatalogos_cat_tipoapoyo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "con_TipoApoyo_id_3897031e_fk_consultaCatalogos_cat_tipoapoyo_id";
       public       postgres    false    233    225    2226            :	           2606    57770 ?   con_TipoApoyo_id_6ca564eb_fk_consultaCatalogos_cat_tipoapoyo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "con_TipoApoyo_id_6ca564eb_fk_consultaCatalogos_cat_tipoapoyo_id" FOREIGN KEY ("TipoApoyo_id") REFERENCES "consultaCatalogos_cat_tipoapoyo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "con_TipoApoyo_id_6ca564eb_fk_consultaCatalogos_cat_tipoapoyo_id";
       public       postgres    false    2226    225    235            $	           2606    49964 ?   cons_MesPeriodoPago_id_25f9e34d_fk_consultaCatalogos_cat_mes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "cons_MesPeriodoPago_id_25f9e34d_fk_consultaCatalogos_cat_mes_id" FOREIGN KEY ("MesPeriodoPago_id") REFERENCES "consultaCatalogos_cat_mes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "cons_MesPeriodoPago_id_25f9e34d_fk_consultaCatalogos_cat_mes_id";
       public       postgres    false    2209    211    233            	           2606    49908 ?   cons_MesPeriodoPago_id_5873ad3e_fk_consultaCatalogos_cat_mes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "cons_MesPeriodoPago_id_5873ad3e_fk_consultaCatalogos_cat_mes_id" FOREIGN KEY ("MesPeriodoPago_id") REFERENCES "consultaCatalogos_cat_mes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "cons_MesPeriodoPago_id_5873ad3e_fk_consultaCatalogos_cat_mes_id";
       public       postgres    false    2209    211    231            	           2606    49933 ?   cons_TipoApoyo_id_474dcc1_fk_consultaCatalogos_cat_tipoapoyo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "cons_TipoApoyo_id_474dcc1_fk_consultaCatalogos_cat_tipoapoyo_id" FOREIGN KEY ("TipoApoyo_id") REFERENCES "consultaCatalogos_cat_tipoapoyo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "cons_TipoApoyo_id_474dcc1_fk_consultaCatalogos_cat_tipoapoyo_id";
       public       postgres    false    225    2226    231            >	           2606    49998 ?   cons_Trimestre_id_1c2c0616_fk_consultaCatalogos_cat_periodos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT "cons_Trimestre_id_1c2c0616_fk_consultaCatalogos_cat_periodos_id" FOREIGN KEY ("Trimestre_id") REFERENCES "consultaCatalogos_cat_periodos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT "cons_Trimestre_id_1c2c0616_fk_consultaCatalogos_cat_periodos_id";
       public       postgres    false    2216    235    217            B	           2606    50022 ?   cons_Trimestre_id_617a18c9_fk_consultaCatalogos_cat_periodos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "cons_Trimestre_id_617a18c9_fk_consultaCatalogos_cat_periodos_id" FOREIGN KEY ("Trimestre_id") REFERENCES "consultaCatalogos_cat_periodos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "cons_Trimestre_id_617a18c9_fk_consultaCatalogos_cat_periodos_id";
       public       postgres    false    237    2216    217            	           2606    49938 ?   cons_Trimestre_id_6b923488_fk_consultaCatalogos_cat_periodos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "cons_Trimestre_id_6b923488_fk_consultaCatalogos_cat_periodos_id" FOREIGN KEY ("Trimestre_id") REFERENCES "consultaCatalogos_cat_periodos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "cons_Trimestre_id_6b923488_fk_consultaCatalogos_cat_periodos_id";
       public       postgres    false    231    217    2216            &	           2606    49974 ?   consu_Trimestre_id_671b849_fk_consultaCatalogos_cat_periodos_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "consu_Trimestre_id_671b849_fk_consultaCatalogos_cat_periodos_id" FOREIGN KEY ("Trimestre_id") REFERENCES "consultaCatalogos_cat_periodos"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "consu_Trimestre_id_671b849_fk_consultaCatalogos_cat_periodos_id";
       public       postgres    false    217    233    2216            	           2606    49851 ?   consul_idEstado_id_74f8039f_fk_consultaCatalogos_cat_estados_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_municipio"
    ADD CONSTRAINT "consul_idEstado_id_74f8039f_fk_consultaCatalogos_cat_estados_id" FOREIGN KEY ("idEstado_id") REFERENCES "consultaCatalogos_cat_estados"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_municipio" DROP CONSTRAINT "consul_idEstado_id_74f8039f_fk_consultaCatalogos_cat_estados_id";
       public       postgres    false    201    213    2198            F	           2606    57999 ?   consultaCat_cat_mes_id_4a3213a2_fk_consultaCatalogos_cat_mes_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_cat_periodos_mes"
    ADD CONSTRAINT "consultaCat_cat_mes_id_4a3213a2_fk_consultaCatalogos_cat_mes_id" FOREIGN KEY (cat_mes_id) REFERENCES "consultaCatalogos_cat_mes"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_cat_periodos_mes" DROP CONSTRAINT "consultaCat_cat_mes_id_4a3213a2_fk_consultaCatalogos_cat_mes_id";
       public       postgres    false    2209    244    211            	           2606    49928 ?   consultaCatal_Sexo_id_3ae100a7_fk_consultaCatalogos_cat_sexo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT "consultaCatal_Sexo_id_3ae100a7_fk_consultaCatalogos_cat_sexo_id" FOREIGN KEY ("Sexo_id") REFERENCES "consultaCatalogos_cat_sexo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT "consultaCatal_Sexo_id_3ae100a7_fk_consultaCatalogos_cat_sexo_id";
       public       postgres    false    2221    221    231            1	           2606    57959 ?   consultaCatal_Sexo_id_6ac787f8_fk_consultaCatalogos_cat_sexo_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT "consultaCatal_Sexo_id_6ac787f8_fk_consultaCatalogos_cat_sexo_id" FOREIGN KEY ("Sexo_id") REFERENCES "consultaCatalogos_cat_sexo"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT "consultaCatal_Sexo_id_6ac787f8_fk_consultaCatalogos_cat_sexo_id";
       public       postgres    false    233    221    2221            C	           2606    50027 ?   consultaCatalogos_trabajosr_Usuario_id_51f8a702_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_trabajosrealizados"
    ADD CONSTRAINT "consultaCatalogos_trabajosr_Usuario_id_51f8a702_fk_auth_user_id" FOREIGN KEY ("Usuario_id") REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."consultaCatalogos_trabajosrealizados" DROP CONSTRAINT "consultaCatalogos_trabajosr_Usuario_id_51f8a702_fk_auth_user_id";
       public       postgres    false    183    237    2166            D	           2606    50090 ?   csvimport_impor_csvimport_id_300566f3_fk_csvimport_csvimport_id    FK CONSTRAINT     �   ALTER TABLE ONLY csvimport_importmodel
    ADD CONSTRAINT csvimport_impor_csvimport_id_300566f3_fk_csvimport_csvimport_id FOREIGN KEY (csvimport_id) REFERENCES csvimport_csvimport(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.csvimport_importmodel DROP CONSTRAINT csvimport_impor_csvimport_id_300566f3_fk_csvimport_csvimport_id;
       public       postgres    false    240    2296    242            .	           2606    57941     d2e6561e94129903fca2ecf7cd99697c    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT d2e6561e94129903fca2ecf7cd99697c FOREIGN KEY ("LocalidadResidencia_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT d2e6561e94129903fca2ecf7cd99697c;
       public       postgres    false    2207    233    209            /	           2606    57947     de9825810b480c8e4b2647e6356e32f6    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT de9825810b480c8e4b2647e6356e32f6 FOREIGN KEY ("MunicipioBeneficiado_id") REFERENCES "consultaCatalogos_cat_municipio"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT de9825810b480c8e4b2647e6356e32f6;
       public       postgres    false    213    233    2212            -	           2606    57935     dfee052f1d18917c4c35dd7137b68f3a    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT dfee052f1d18917c4c35dd7137b68f3a FOREIGN KEY ("LocalidadPagoBeneficio_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT dfee052f1d18917c4c35dd7137b68f3a;
       public       postgres    false    233    2207    209            		           2606    49638 ?   django_admin_content_type_id_5151027a_fk_django_content_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_content_type_id_5151027a_fk_django_content_type_id;
       public       postgres    false    2148    189    175            
	           2606    49643 0   django_admin_log_user_id_1c5f563_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_1c5f563_fk_auth_user_id;
       public       postgres    false    2166    189    183            	           2606    58016     e1009d89d4216a1ad2464666307bd2e5    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT e1009d89d4216a1ad2464666307bd2e5 FOREIGN KEY (id_trabajo_id) REFERENCES "consultaCatalogos_trabajosrealizados"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT e1009d89d4216a1ad2464666307bd2e5;
       public       postgres    false    231    2290    237             	           2606    57893     e20cd183f2c8ada04c93a0dfd6b864c5    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT e20cd183f2c8ada04c93a0dfd6b864c5 FOREIGN KEY ("LocDondeSePagaBeneficio_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT e20cd183f2c8ada04c93a0dfd6b864c5;
       public       postgres    false    231    2207    209            ;	           2606    58028     ed80f214f37cef85d4f797ac8095f589    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpoblacion"
    ADD CONSTRAINT ed80f214f37cef85d4f797ac8095f589 FOREIGN KEY (id_trabajo_id) REFERENCES "consultaCatalogos_trabajosrealizados"(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public."consultaCatalogos_formatopubpoblacion" DROP CONSTRAINT ed80f214f37cef85d4f797ac8095f589;
       public       postgres    false    2290    237    235            	           2606    49868     ee84033d702a7be6c59ef1aa7a8657fd    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT ee84033d702a7be6c59ef1aa7a8657fd FOREIGN KEY ("ClavePrograma_id") REFERENCES "consultaCatalogos_cat_programas"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT ee84033d702a7be6c59ef1aa7a8657fd;
       public       postgres    false    231    2219    219            '	           2606    57899     f6ba8b4574e3497fb2dd1ef2a9fec011    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT f6ba8b4574e3497fb2dd1ef2a9fec011 FOREIGN KEY ("AsentamientoHumano_id") REFERENCES "consultaCatalogos_cat_asentamiento"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT f6ba8b4574e3497fb2dd1ef2a9fec011;
       public       postgres    false    193    2189    233            *	           2606    57917     fe2ad57d7b4fde987eb0f4d1ad1a470e    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubpersona"
    ADD CONSTRAINT fe2ad57d7b4fde987eb0f4d1ad1a470e FOREIGN KEY ("Dependencia_id") REFERENCES "consultaCatalogos_cat_dependencias"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."consultaCatalogos_formatopubpersona" DROP CONSTRAINT fe2ad57d7b4fde987eb0f4d1ad1a470e;
       public       postgres    false    197    233    2194            	           2606    49903     fed0c41393ad7fb0cadccb061f0a02a6    FK CONSTRAINT     �   ALTER TABLE ONLY "consultaCatalogos_formatopubactor"
    ADD CONSTRAINT fed0c41393ad7fb0cadccb061f0a02a6 FOREIGN KEY ("LocResidDelIntegrante_id") REFERENCES "consultaCatalogos_cat_localidad"(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public."consultaCatalogos_formatopubactor" DROP CONSTRAINT fed0c41393ad7fb0cadccb061f0a02a6;
       public       postgres    false    2207    231    209            �	      x������ � �      �	      x������ � �      �	   &  x�u�]r�8���)8�F��s��p� �0э��=�
$�,��0�����J9K~�)�Ð>�=UӶ�$Yb�?��q)�C����]�-aq�P�R��鬖縮�����
�¾D�����D�z�����~�Iq4>~-�<�];��өpM�"���U-Iy��Ud�߭��[A��www+(��{=mf?��gVIu4q��"�{Ebד�+l�����U�ݮ�Jd���Z�d���u���G*�Q��Z��u�ؿ߬��.�مK��gdK.�sg8�Së�W'���_��`�<Yeɬ8%�ʊ���Y�r�?:�|��x�D^3� # 5���@-5��2��Z󽜶\I�3j�tō �x �fԠ��{|$Y�ݜ5Q����O@
fp��Z��rx�u���T���b�(���5��9�jo���5���?ج��(Zf��`5�;f��`9��[���Mڼexζ$ʌ?�Ƨ|9��g|5�|MfV�f�d��㋢,�!B�%�*f�@`��{�^>�AIV{c�(ʆ#�e�� ��~����Y�5_R�v��Eŧ>�#e��g,X�l4��j�E��O��a�c]T<b��<b�QLjV��t�Q��7$�E��"��*Eyd�(X�h��|(�ዢ��A���y�gb��Y_� � ���y���?Ay��(���ZF�����D},����E� ���(P�&��"�R�<:�
G�.�!�8���kQ��xϒ<$B����e�4����( �S�,�e�_�"�7[ψ�Np'�c"�C�Ʌ����Sny}������6,܂�eѐ��ĜIF�̸$�MFv�>�۷��<�&r�D{{�P����;�@3Ǟί=�χ=��m��\m��7��y�C��;ށ�w���x�ךn����!`#��ϲhI�\Q�1I�\��(C���tQ���qp+l��KaE�$Wް��ޑ�y�;�W8��;��^��p�{�����M�� b:������8�k[I�ڈ�l[;J�#c;V; �;�~�#��ܧuo      �	     x�}�KO�@����)z�f �ó$&�j�jm�4��Y޴,�c�⧗�4^�3s��??@Up��h3
�)GfO��k�(_�H&�߰�5[��Xn�`3�U��3Ӎ4
�����n��_#��TQ@���`�P�W�͊ ng%B�2^��i� ��M�h^�!gH�{�`mBǰ�����n�����z�+1?��>o�a~ؔ��>����ڟ�k�=��N��>h��b��J�S�e���-8��.���?R��lG�U��һ*I�7�4b�      �	      x������ � �      �	   �   x�ѷq�@��X(F�g��E��!"B�s&~�'^�K�m�1Ś��1�k.q�C�}	�:�R!UIhUbՄZ!WK��%��!��K���A�u�z]�^7��C���z})�~(�~)��՛��&)�)Jo�қ��f)����<�޼��Zo���m�z[��6��C���z{�}�}�{����^�w�ѻ��������>�      �	   "   x�3�4204�2Q&\� ʔ�D�q��qqq U�      �	   �  x�U�Mn�0���)|��$��e*�i-��膑X��4t)(z��z�\��������9��q�S<->�Q�N�1�>��ea�Υ�*P�u2�p�mX7�
���	2,�s
nT5j�q��j��[�8a�vyy\d��'�f֊�CzjcJ~��:�֠6�ڀ�ť�sÂ�a�N��Ť}�28�K�����kt��Yq�_9c�ON�<Ҁ>�e؁>��竛-蓓�N�2Թ�^v�����_��XP�c:S���;sX[lJP��Ǒ*P����O>����tpw���eP[��?��K�+[���Tֶ���^X�������a9�4���%苄<d[�.��gfk��0�<Ҁ�1������t]5�؂��)�L�T�A琸���}��"Q}�QJ����      �	      x������ � �      �	     x��W�n�H>O�qF�b0vr$;x�28�H{iC��hOCG����	�8�Vs�+/�Ս��q��|����������K�hY��5��j^��7,����a���s������Y�Z�Ϋ���ZJ�<g,�a��C�*m�W5�[c��)����tņ������Y%I�177+X�*4j}".jI#fP�t��sq��O��n%�cRRR0L��t�8�[�Ͻ$��M���S�\H�Ȳ�ʹʣ��
��y��f�8�CԲ���c�P��д�9�6�_�:�l��x�KDꅲ�cj��y�U6m��ܶOb����7?Q�9�<�1�w�=PQ��dX�̉йӻ�dI�#��/�3&$�%rBu��^�/��ɴk�෴b\�2i~�e��S�����xg�0�-6����s�t��Y��;5�nr����^1M��h�����%A�j�,��1oAYլ�50Y�X�)��c���<G��)/���J��`U����l����|GS�s��S�껤.`vu��9�a�$N��˕,H�#i��,�iJb���E�������v�ӂ���4�]o>�f�;����$�Pՙ�q����u��ib?�m���A�4U���k~�0,|oP�=�P���ώ�} �a9��p�e������+ W���.��~#����YӴM�-6jzU�S��=Fu��BiR[�
u�GJDH�u�獯�ž�2xC��+�kX��װ��ʃ��JնH���a� p�G��Y�f8|�mA����Ze�rG��b?~$O�>6��I�>z�c��L�Bs�""jM�6@�IT4R�v XsB�/��@f�	�iPm
彺-{
A�OW��6�hp7MUU�:%(o�ɰ�!X� ߫�ʞj�}A<� �[T%�{<�9>� y;�6BAPp�L=�y�\a�m��#�9q3<��= óA��,}X�z@ʉ��$il�2�I��Zо<������M��i".e�zNP�-�ө�!� �mUW
uc#evdK�������5s@�9����w�~>��~u�\�#i����L�A���x
�wt���K�>I_�x�9D�.�(WM�N�QN�'�z�P�P�H&�uO����DK�xF>�Գ�pF�o�"�I��Iq�ǂU��"��n,z������ˎfC��q����˓�|������Vj�)��8{��z��p��p&��zwN;D�3��p�3�(��^�O�^��I|�o����i���(�"G�oO�L� �_ّ\f�d��ɔ#���j"�k�Ć��#��߂�+1oԈ���p��J|� cH��$��NQj�@�����tV�3�{2�$���ڪ�E,>�~�)$��2�5��t���o�$A��~�s�u���ü���V%���SU��u0��ڔ���[2>=��rൔ�߂>���1L^�x:�u<0�U�l]Iu-a����=�����?�}���I���Z�*���mIO���m��������a�32,F      �	   i   x�3�����)I-��2�tv�tN,NL��2����,2M8]<9]2��3AR���>��y��7�)�d&�r�q�s�&��*@�J�2��@������ R%!B      �	   \  x�]�Mn1���S�	��=�K�HA�	D3B��8Nڑ��m4p�Y��}1^o�����n�*�}n::����G��x�/�ͭ�\RP������Vd�%�z�x7xYa�}֡���ƚEg�6�A/:���<4^S�a��0�j���/�,@7�hz�b�iҗ���m�_X����Q�|{	����c���k��5�ܐ�M���萋�y���Oe1;�]�?r��7�]�>�U��5���?pTˍY�3��Z��l�o!U��Jfk	:j�>�0v�\�8��CҘ��5�S.,6��>�<�݂Nz�üH���^�$|���J�%�}mN�<ioAߘ�zǏ���㪒�      �	   X   x�3�t��t�+M���2�v�N�M-.)�M9C�8C�2�f�Ρ�Υ�%Hb�N��N���+�oj^1�HKN�N�'W� ���      �	   �   x�e���0E��o!��|��E^Y*�P	QԖ�'�$AɖX�^�B �}��U`����pp��x_��@��<-��x�cM���t�.!.S�	��p���E7�X�|����)����.��k��K�Z��$�#�zC-C���l�2Y]�D���vz      �	   �   x��OKN1];��	"ʟu:���T�lL�J�2�����k�Ћ�$`�$��z����x�Bc�9���6�����`��u�j7)a,c���w6?�.bS��D�rz1�sQ��]B���^��ڤYB?9��������U�&G��]ú�u��`�b���I�����5Μ�.����%� �%X�����@�$g���{֣a�����-�˾����S%so�����5ͦ���~1Wg�{�]S���ϻ'�{��T      �	      x����v�H�-:fE���xC�R*SW�����DRPGX��$g���,�9�A��պ3�صm��#��AW+i�`o����Ggq����r�]�}���;��������o�v�������-�	�ɜ8�8={�^\6�u�o�oۻC�^�6�u�x[�����Ϩ��]�~�-����^�_�}�>�kU˩��� +(+Ϯ���}s߬�^��E�SR�:{S�?��^> ���W�V��?�3*�-�z��DO�^1:�����v��?����
�H�N|v)_U�O��v�2B%g����Һ�S��_]w�����&?�8?b����(={���'׷���6��7ykC����&�4R�'?��D՜����~�D�˳��j�<6u�}D��h�� I��w��[?��[\��7�Ǥ&N���m��~�XLr�Z����~h����=&E�t�n�7}��v*"qq��v��s����ã��v\��;4ߺŧ��v�7ug/J�����A~r�[w�['Cl�ށ`'蔋�n��$�$���/w�^���~��&ɰg'a�izG\L��t@H��	O�	!c�������Z !	I>m�
�H��r��ʧv]߻� KI9m��[]��ZE�)L*�|t��[�'6��{���h}�=���р�� ����V�5!�i<h��L�������c�xU�+L, ����} �M�����O�OIqZq�L�����O�ze�O�n�<{/Z��AF�L��f����ۯ�FAN�^�G�O]����iJ�2��,L�v�+DJ�����:��~�62�~�n���ź�����MV��thv�m,+B����m[/#���ã�$E��l� |�'��<��S����f���u���H�>��˖�kL����m���u�Q)�U�N��$f�t�ɤ�I��M��:���6��� �����?h��-ʳ��~�l��v}�I]7���x�����P�gl^�7�1�Md���n[��N�^7��fF��vh���Ԏ�$�&��|{�7O��o�`@��d��=�&�����Z��]�;���Ϸ��A��ײ�	��F;mN�e�~[oa^���g�I2�ZVY/n�=��Q
�d�{�3z7�?�����o���T�l������<�m����a�Z��csr,K��y���X���v�#
�+��3��_�ͼ����bm��+H�,�Ɠ���U'�)������4��ܒ���UV���Jg�W2�G���a�J�e�t��G��d~�y�u �����Ã,1�f{���K}�ʿ��ɴ�	������^w��'���{��\����?6ͣ=�����l[h�d6��/��ͺ]yfK2+�x�<�Q�j$Qf�^����[�Je����^�7b~�77xGkEJ�4���H��?D%Y-���X��޺NI��t:�M��Fz���i�I���?�2�,��o��*ޓ*'��_B�`����I����Z��	[W�z%����T��rꟄ�mEVi��<eq~)�\����������LVWݪ�>��'�����M+��NEU���⍐��?k�pE��`�5]��劀(W�s+b-�x���a+}��^C#Z�*��K�P�� f�֘,�"LD��f(��^�}�ܣȄ|��Η��k�K��^��{���J��m��[�FF��`��54QN��bj�������	��h��Φړ����v<�E3�]�]�����bK5�d���$1%�J����<3�r��$aB� �����GDT~�8�'l���Zly�W}s'�f7b*"��*�7A�ї��W�N�!�N���f�}y3�M���s�VdF��g�l�����e�qZdIކZ&"A�v��;��5�pUo�a߻��y۬�z��vL�`\�Ed����w�hFz�i4��"֘ ���m��I	�<G��C��%�Y��U��9�+��j�K�k���['Z~Ʒ
�+�q-���"���O��$@
x<&%�I⦩���'�gzy�)�9�t}��':i���� ����݃X+���9)�AJ��a��+�kE������L�g�M��WL{'U�������b�ީa�&]~��	X�}+#�J�񍌼s�#��Hg�ߙ� C�2П��%�߉��^k�R��j�~}خ�rBDz�_x����`Y619�A�gC�f$&��ٻL&$�#D���vq�卮�����?�`��'���s{��f�fu��,k""*��q��x��j1Ze�bIw�e�ս��3b�k���v'��{
Q̽����W��[|&�8vz�3�-Yt�42t|�����`�sFf)��Bd�����x��28r�,�������_N��)\9������%���P�,��"z&2v���C����޺�%'��B�)�b[�h���K&P��}`?���B{�N:U!�r�����A`�
�3�d���9�*�Y�t�טpG����20�ѻ���2����&eunďпg��b�y�U���ϊ,����������8h@�"�V_��H}����(	U���շvuX��8����&�;����Gqb�*"P���u�G�2�#C2�"��鯔���[YhB�dY>�D��ŷvw�Q_4#�����2gb�""'k�m�x+	����Q��/ھ�AX����jo�*�(��Hd�k��`�T�RVJ1�տ�D�����iB�خ��|'D�k{b�{�����IY�˻X {�����&j�K�"�z�f7���2�v���%�U���ӿ�L��bYʠ5���ahC���֎��yu֔�d:ž��N�LEC�k�X�b��Ve�����R��!/	���+���:��X�8����7bẗ$2Bt��[�Eģ��`�:�""]�M��EDD*o�]6��oUJH�p����l�M"R�6�l�D�*������W�h��~��kS��͖�_:�N/�&/)��^7��ʸ�W�Bj��NE�ԍ,7�!�����T?�����V���q�сgx(�(��0�^�g����(}��^�C��[����M�O�k�K�)��Q!A�sQ��~�lE�m�d�uk= &6�/����Y�'F��c�ם���O�w�o7��ү��ҙ�$Ҧ��Q�#�E*�s�?�SC��}?hӌM�T���
���م�������W������eP(��#~��P���Ы�W��0GC�ʁ^2}���gv��U{����
�Sz\��}����(��_�+j��A�%?%�2/v������p�vk@�e�X�rʯ�U�uh@fʘK@���!�{>�Xn�2"c��13⏍��?��BxVޱ?l���Dh��|�e* �2�w>z�p����3,��=H�i����V֫^�ͧ��A��8�����z�'gD4�C��E�l\�޳4�	x\�`2ѯˉ}�V���n�퓙ԡ7kU�	���S�!ئ������Z�)��>?��ڋo���>����ކ�3ڑA�����zYc�A�4��gA�k�˥��Ͻ�4 �2%^�ݝ����r�'��*�;i�9l:��MT�,%���d(1�Z>Y`UDjd"�%� �Ƌ^�V�J�v:�h&A+񅐿�P��F�GA��K2�"�&ԖO�f�"/s�Q/	z�U}��ޗ�X�c�w� )2��ۡg|Ʀ�%i@����ɯ�,���\��Vd(c	�$K2jN���9��s�]����Qz"�_͂԰�� ���?�,"�K��]i*�\��ܒTI'��퐓�O�������'�^En����)ȿi7�i)�a� ��̔˹�4��"%���,���v�Y�Z$��,�<� �Ŋ������JIBy�y!r�J�|�p�aU�E�H*J�5���'n�-1Co���O�.сF�����t��Q�F�jn{���d���L(�T,���)3*V~o	#|�Չ�uKhωO{OE����^Zr	D�1���W���w��		%v���"�i�����&"���i7Ol�������rMB�Ĳ�IL�%����D��1�ޯWnCBH@Įz�[+������X��|�2CD    8,ڳ�(��x���ZK��!�P������Z!�1!�s%_��Q$5���o���1a2��u/&3v?���0`M��,�q�4�H>տ��01C>5�n}��~;�K4����$���a���K�8V��v�j�
$(Q��coN��3Bܧ�('DK�����4�����y�p&��[l�_'D�MZB��l8T��3!P.l�r}�X'L���l��M���<%�iy��H	h���1���Յ��M�HJ�bٟ����T�ݷ�����`f���pf��E$`�fD3Gpc'��T�AŎ�a#�� �����>��f��x���]�O����/�-�cv�M���g�Q����T����:�l��IZ��Emo�z�C���x��|7")��Rk,�.\o��ލŌ����'&�v�D��F���{͊1%B[Ls9T�C�+�dn�&Â3�1I�H1���Js�4'�b�\���֮n�9S"�e<�������qq/.���DP,$�xhs"V�Ǎ������@���	y����.#2���zչE4QD��-.�E]9aL�wR�L=�z�I�j��#l�)u������������t2���u�_�O`����$@)�R1�˚�͂��x�B�%���p��r��4*��GVM=|�a�珈���[�B#�Kr���4ng߱$b�x�	�P#3b�h��x���$-bɌtg�KZİ�&�sI�X:#ݱ��dIL��n�&1r��~��;\0��Xw��L8�1m��Zפ"�F7>�S�jq��C�|�[�(�1d��[���QV��L?P!b�h��zdE��b`}BBtc�oy�>����]_�����tP&��r�<O����uЊu3w�f�x��6	;QE"��	���[��M����d�DŠC�K�#���Δ.IRr�O:����B�'��_�dJ׶��^�G2�6z�=�[wK�dRl����d�D�M�k�/�qh6��
)�SH��z�m;�[$A����,U��H��M#Y"���ݒ��S�wۯ�}fD��|�4�3��XJ�`FH#���C��I�A������D^�*�|��DZ�&�GW��`g�����ݯ��l��A2#����7i�)��L���\�Y~!��W�S�����ļW���d.@�&��HDV\�pЦ1�Ȫ����˕�){ɘ4��%�n���!����T������S�Y�Ū�;));����jH읃".F��ᖢ*w1�x��DY����(�������Z� �4����p��Ԉp�rd��&$4c���숦��bQ�2�j��o�ʽ���s�����4!�%�tq���9�dDT���1�s�>�=�X˒����"-��Y�t�
�4%Υue��jB�,��ڝ/eY�޶�������m�/���Ô�Vf*c�A��*�>hvn�H��,PӰ�*x���������b[%�TP)r=�g����8yfF֍���Mi�F�Id6;֝
�6ْm2�h}�#
���Fh�`�?�)*�)�&Zx�C�-�4��"�}܁&�;�~�2z���E�� �s�ź���Pۢ�]WɈ�,��;!^`qC7#��O���!�`����:lo����[�6�r� �zFI��8�)}���T�(���?טF�p��P73EF���ۃR
�OaFa���铲��l�������7Y�YP�i�W~h�^�c{#{���'�`Z�U}���íq@�Vjx5N+x����G9��>AD��6����9�����U�k%���{l'2�X�DZ�
�@hpYY�-��Bk�	mI�h<s�BJ�*�On��aq��I�{PB�LL�1����n���R5�+�WS!��c���#��v�� ˊ<�.ȠF��-��$�	������Fܗ�[�f�]l��~sX}���d�jXXaU'D�I��"��s�ϋs�!��ҵj�u�m�Lp��n�t���A�������M0��
~���rY�]�7�5*�*���\��L�a?������+����̤�C��ˢ;�?�<��hV_��_eK2������M0[����M*[�K�?�ْ�d�@o�B�����U�y=� «�oGFd��S�YQ�Ɂ�kY(@�3Z9���V��|���u{��E�<�$4l��c"�/���k-�
D�:�ΆgMUH|e%u'�Q�ED6O\njݫ�X���_�^����Y��.�Wk�R�\Y+G��"B-���PU�/��H5�S!ϫ��J�ZݑkՂ�b2"�艴1���"�p��=���2����f��m��bR&��M巶�g1��9��`�<Y^�C=�h����j�O�:�#�ts���F�d]�q3P�6Y ��&̖�^�ΐ�bXƣ���x����,Y-O�F��A��l:�$�̜'�󮾱!��Y��^3�6KHKe�S�Z���C��W�V��b� ���_ە)��jP�jb�O�f$$�r�o���`N<ȏv�b�����$F[��:.�x���՗J�f|���BHg�����4���ƶo����Y_PB5cj6�`#����A��T�S����l���L���sJ�0&��
-�6���L�NH�d4χ��쵈,��P��!�2�O������Fj1�'`���Hue�T���\g&���N�!��<a��1/�TZ+�muQ�a�e�Y��/�~{1���YO��̦����n���>�ܾ�6��ԙ��D}��MP�(}���;x��%'q�"�2(�Czd�Ĺ &%� ������Vu�gˏ(��*D_f�y�T�p�l5�ANԓd0��.}���.�G�q�c�.��R0 �Gb�=.��eNtF/x_��LmO������߷�n A���|5zؽ i�g$�QE/�|O�Vd���������6Ş_� ����#��a����i�B�FL,�s;�n5ݓ�K�*��6�_�-��(�s�!s�99�+M�8�V��]�߀vۥ��0��)��9�q�NE���$��8?�6�Mgl�C'�Ny6<��-x�}�� #Z�lU�[�/�xU��G�Ố�!�u��)U�YS�2��D>��3��eW)iA�e(!,I��&k���!#%���j�TYm頲���"��ڝ�;)���o��o0T !��ҡ #��;cҮ|3�'d�o�h<��� �2Ys-��+Oˆ?@���<U�N�eIԧ=2_�Y"��~b�$'�RP"=�цyuطbš:���B�d%Q`���:	L�P}�����J3�6�y4���f�>���
�R��4�
9iJ�ӡ��w _��n�OD�d�9�n�Έy�n�:o�iՕ�N�UdAB.ә���7Dd'j��/�]���%�ba����􉝭[.ӹ�N��[{�I�Z�`�<�V�df�r$Q,�^�<�&&�|-\ъI��'�{�+�YT�mL�P�iM����}��W�=�,����Lj�N��"_o����	;�I�Znw����Xa�t��>Q���6ԃ�BG�,k�V��x$x��$fe��MB�t�]kt��d�pҨ����t���G�%	�Dd��O�� ob�C#�q2'F>4B��X���P�}�uG,wڴɡ��ОZ8yB���wپ�AF�Ĳ���;�yJVĶ�_��t)���k��$A�wg�N>��Z7u��_�w�$�}'���+ې�"vh@ZJJ�9�f�oM6pBhd�]>%�qA�=OI��Ṃ�GI���Gc�S��.ҫC��kD5#C�7,��e䧨�N���)��Ȍ:�)g���,$W�W)�H����T�;�ތԉ�\:�$ob�s��!ee~T�F��p��I�x݉��/��©'�9٬�k�\�K��<І�	����ӟ�W�)�*K2���'��q_OV�<�F4J�� :ʗ�Ɖ�KF�xb���9u�Q�g1�,�^:o��.�coR���g�8�X��WT�'�<��XR��s���CQv�0�O/bjU�N�ɉ��V� [��A�*/a�
"#
U��� �99�Q�z�i���F�tw	x����u�^�������f�2���������    O����׌$  �	�o;ݧ;�k������a�o�t�L#��њ�� �,\Aܖ����[����@CdϞ�g{׬UB"��HP)�8^�'�b�x$9���?�g�O��iO?B����ϑ���и8�*%�q5x1cR{�%G�D� �|�d#T�E(B˝*�ruZwXh����PU|d>�H]�$�$��c7���δ2j��B~��J��S#��apJsm���ihx�-
��e�0	yEy嫿�"/\�v�Q��Q�c!�(J|�读�FVfdR�
A������ڐ#���W7��X,�zd'!��Vx�諾�״	@��K�:���"�""��3?M2d�>ke�����?XS2���cꖍh����qʤI�/R{�혣�"2$E3�F�+֬��v���&i����3�S\��0��L�,��uT�|���h5;1���Cz�䌅`LD*�0>fD<��J����*��4b".~�x�U1qN��w* ��s�!�#&�V��+֏�I	l��^TN\��>�l���ۮ[[w�	����ڧ�˔���}��1���0�
�Z�b�����o��U11�lo��*I��X�6���ؓ���JD8�{�*"ƖZ��w��8�6o��¾���#�~UNŠt?��ebb���»�u�o=�le;��n�&�;�����k?`R�Y(���J�b�A˰ڵ���J	h��֨J&#�:DJd|��WCF8`��	�� ���f�J	a��CF��x���RBX"�h�1j���N,�ɪ�31m>7�n��	��|�OS&���z�ϙX����h?�ͺ��ri�;	ekި�PV�����|�2�Yu��X#8?�x���T)�i|�יn�l1?&7���-�ˠ��#�ze�e9⼘�j�4����띹'n��{q���<��9��i&�).�Ey6o�V�V��G����9�S*�.�[K��,�����u}S?��(�)-��h!*(�zk�N�A�э\��/�t&�(CM�n�G�DP�8�R��0��;�1֓���2���M8$���E��bA�d6�6�/4�B"�,m���V�BB�#���� 䦅����X ��������v�u^0)Jxf�~����.1r%��ݦ$Ri�t��*ճ'Vy�'�K��ύ�o�JO�%���a�C��̟�uGV $PY>�K%!��+���O9��*�wC6��Kb&���U׻ٷ"X2PQ������9����E�"f2Nfg�&�ˏ��LB�d\�3Ԝ[?�k��B��q;�V���*#Q��گdt�P��TdA	��k6��?�j�bWfn��E�fD�t��rT���Yrd�6?����2�Δ:l�g�t�"�x�����*:��s7���U�H+�Xy�I	e�
X�-�jR���rL�%]'���i��VSV!��Br�x�3�&%�U5�O�{�_�-�~�ӏҎ�R�tJ��t�P�W+���v{Iw�z�LLݒ.j��Al$mꭍߒ�O�݋H��Q;?]�	aNayf7\`8��[� F|}�d%e�љ�{����[i���շ�����/��!$�Q><	a��s��`��[�zb[#����� r�ރ�F8R�m����Ɉb<���������2��Ǫ�p"��m{����E���E"�(KYIW3�XђX��\-ܯ���E�Z֒7��`�����Dx���Bv�8�׳��$f�b���x�h9�0A�Ri,�����O5A��PF=�L?�:>(u��*��`�@D�эv2N�kLe�E?��pOٮh@�o�z��Z���X�,)Q��K���k3��;M�)�F�+���_k-)1�#Vqv_���K��07hR'g�-�S��Ԥ�x��L�����zշ��+�R-�f[.��{"+�{0Mm�
.i�uTB���9P%�(���q�RVT(�a=#�ҝg7���H&\����22�d#�5&b���ǐ�$�VI�bc�J7�2�`��?�nG\�� ]Z}l�0�G�Mx1���D8��\����,�����y{����t4�� �H酺P��jS��ω�t�LUhUT��e;M@H�u,�i4'��]�q��T�$b�d��3��Z,��͉�����[�/�8KO�����a�ٻ �Y6X-0L��[q��$���]b�	K�{]S{�3BA�-�v��11v�0Rﶚ#�=��'�yd��ӽ�Z�7|O�._�}+s�2"�=��T�}�F���DXN\�@�����dI���6Q}�)�pQMF��Vv�!ĥ]��W�j�`
נ!�/������j�oC59�W�[���0�w1��j=�*�\��p5�Ғ8�_F���ߙJ�BL��n77�*B^��ޥ�^e�Td�ʆ#=|���Wn�T������־�{رE��1�w�J)+L&���2�J����˼ׇݑ�ʣ��z[�ga҂҄�|��� ��A������x7z��j��8?���jՊ��v���M��3iLi����Aܮ�YՒ�Ev�«V�N�\�<y��m�S=LՒ�ƶv��ȭ1!tEݏ%W %�v��'��4�%QL�l���CD��Ŗ�RYD���Z����G�"犆��*DD͖ڋ�����n\Ta��v���j�a������A�p�{x�w/w����w,�VhEW�S/�5AD]���Sw�/��E�lbIL@'e� #�Z/�\x��xʢ12y��X�Y���LH�&������[��H��1f�����bBBVE��+DD�"!���om.��E�c�w�JE?N��mc�W�;v�-3(x�pg�0bYJY4��t���ۘ(�(u>��<4���W��y��f7aI�E��Խ���qI������鰹Q/r�D.��T!Q�JËb��,yq��ǭ!��pA.P�3���rJ�1)F�Yc��u��Օf�#���$��u�4�8�-\v�J¼#���t�p�ȸGӓ�-�|��@H�d��� f~1�]4Ȉ�X��O���4G�(�	c�6V�b7e����L�I��m�~j�n���/l�����f����
���זQ��D���BS0�UF_wR �N&�v���~mz�T�pM�n�#wn5]�'��g.���p���.�2���O�.b��!�]g�b���>�@��n���=�@�ز�tvn�M-���oq��=�����2$D�ԫ�V�#&�c����׫�������A�tTt�p)�d&�����a�Մ��!��ѹ���?��1.O���ft�pM�Py�$��|��f�T��`��<��{��1��)�.�1����/�"�(��b�� 3d1e��v�ơ��������4a�t�4[�f͡E�٠E���Rw'���u:�36��弸i�d:�r�5=�9���[�N���m������+�Jj%�wahU�J��ʐ~p�����W�0��{�芄F�@/xъ����%Ȝy�4����*!abz7�g~����g�~�o���%�]�6)�#j��E2P/�Qqq���������F{XEj��>�@FB�a�˅���Q�5"�l>�Q���9��������~�KM;�$��,���g'N9�")�-���q�Ǐ�`MHV�|ɲÙ�kL����U�0TN֒xx8�3��Pu4�,�hx�C#�p��dדnW�a�~E_
���J�n� �Hf��Z�Ӽ/���� ׎t"D<h7>-��$7������ڒ�F�͝}խ���Y����i��Ƨ���"h�m�[�NLퟐ���V=r(.��Ra�zu�N:����|&��Z�K1���3o�?���uw�'K���^������m����/ޯ0*LN���y���ZOxW��ov�N��;�X�2$�ō]�<" ����"���r���K��d�&!*�7�SU �Y�~���(�?�]��KT�|����k���,�/c��67�^%	i�|0�&�3�[K2��|�;�aR�۩�]N��������t�TH4I����b*�\�L�B��u�99!<�x���6#;H=Q)��DBn�?�zi�    d��N�^�jJ���1�c`<��E0�����d�A�?qA@���#��ZmG~��]�S�iA�E����ܡ���H^}�k�x9��S��a��B���]7�F��d�*'�Ff}���,�>Y�u��O&�e<����f5k���2�pdd��:3Ű�g��,�(I�r�	���Թ�����B�~n�}k\���:N5�Rg֌t�=6Y�Ȱ����}U#�bC�+߹Kf`i]�d������a��F�O�O��K�/^�L5b֍�I����/�ſ�v�S�v9������k1L܁���"mB�+�d�����sNN�-�˻���a[� ��g���E
���}��GAۤl�ʹ��:�V�ڵ�تtոŚ�.�{���>q�R�
�%C_(�yIMP�v���E�Uk��~E}�#�5��r��h8��xh���ͫ�������]���W"�*"O���[�THBpA�V0�w΢eA��|�궉� -1#X���uT���v��a�q,aѧ���T����璂����Jb�ܽ����ŉ�:?�0�������#4H��p��s�Z,����oPi]�HQ�1n*�$��ay�Obp&J�˚���ɠ�ڰ޼
IXbC���S����8x�`=cH�q^��L�����lϝ.���pd
��*�A	I��>�*3��}���T���W�Y"\�25J]��^Ƅ }�4w�/MF�e�����v�%6��}<�
�,�+��l�����ΨJ�E�Z�*#�1��l����(�a~s�MJ�e��E#b��Gc!0x"FH��98�mBb��.=��k���qN@�`
2�'��TNJ,�f�4E�`�ta��Ue���/��"5{���^�SUr�kڨ�ߛ���S�q�9.���	2#�ZX��_�#�G���i�/$�
"(�@���Z�*bL��'}�K�%i�x�%.XS"�@"To04\A"�@"l�Ѳ.d�xJ�
�y�X����]ﺭ?O�ڤ�'A1� oE�/E��"CmI����� �De������)��R�ǫ���Ͽ�A�IT�-C=�gl34���gC�ʼ�m��$�����È!��Z����굃�q����w10�v���=��V�&�u�6&&q2��Ʊk�um`s?��n�%3���uGA�n�p����Qeg��ɻ��8#%����pB`yF����Ň�V�7�_\wvE���Ӯ���W���~�Ad:|p'��c��]�o:��*�����F$I�[��t�'5�i��U̝�������s�N�����5,�0�߆���^�!ə����o���У�W����+/���ģͯ�e|�Tp����1��j�/2����a���X#���1�O�����v�֯a�� Qf~�H�S%�Q� yP�����c�	5�>3��m0���[%���#�d�7AB�>b�99'o�p�z��"���Ω�̪h�&���c���g	$	%qp�w|a���TO�UFT�Q������W_Z��E
*�Û`MXRX��3�*U�ඥ10Pw����;R���W�R�5�>��0���q�5!�F�{^�J���Upv���.G�ݡ������&�sI��o�05R�]Z�6��x���?�4�6�mm])'S��'��P(ȍ�BA6�N���o��Qi��*�0���Su��NJ�k��*$Mq~���+���||.i�O���9����SP�����"�!��X9ZQ�D�68VA�dCU wI�f���{�����Yw5U�|�z=� ��|%y��yB�\12�[�uIJ��e��<nU$=8`��n��4|��RTN�q�R�#���UK���o���T�Ȧ߻R[Չ��h�u��Õ�U�pe�3�*B*k� ������j�o�`=��!Ζ#ՠ��z���[��ڐ�g�CH�Ҳ^��2o�{�%��Ӯ,[Uu��;���LD���>���2�I�VCn�k��,C�p
�H�,Z�����xIr��u���Kb/�B����<�$cV8R!a�Y)T��閭���岹�/�w�K�[�㞸�1�-�Q#��7X�&#����:�_+���Jˠ0aw�I�
]yD���lu��+f�!-�����w̈`�h�V�����0e2�W�k��l�{E�eI��~��*#^2�\#��ՕQ!�}.���˩���fG˻������:&�C�*���
���3��i�*���23��1���|2������b�Є��>2&�Uy���J~����G��j|u�J=���e4��o������W�g�7�U5YR�6V�F�"(&�(-�!$a> ������a����xL�:V10YJY�-s�(�IFY~vq@�5/��>����S�rg'����;)a��y�pa�L�1o�ԅ��b���[e����OM��!�t��������	�~��I�^\R-�#S��v��`���^7���4Y�UJ��Ǹe���%��HS�r�&ϔ 
��yz+�o�M�8%��$�iFt݁�a��njӚ�1 �n<�i�
U �����F�2j��?4�p����թ�Dlhf���׃G=:\�R��N���%=C��9]���Ev���C���#���e���s;�L���;Y�.VV���1���Л�x�;T'%��[��@-ʗ����m�e���ˮ����.<������Q�z0`��k9�r�t�";�����3>XL���4�3*c�dQ�ג(!�G��T�e�sFeL/+r����ӑ��p�с��lRFJ���.C]?����'�b����.��0i�m���Y����]��ih;��'&PC��v��s�d�Sͨ�
3�(�H��C�W_�gｱI�	&֧f�x%�YzKZ�E'�F+aޭ�/��*��˜�t�`�X�W�@��5ο���1�'%d>������;0?�?u�Ӆ7g�9�^	���fK{e�������S�v���~�WQ�鶝�DW
��a�Ƴ�b˲��r��d<���I��D�����k��.�Б�-K`8��R0(�?���Gq��N̋�C$�E�ә� L����ɫ�Q)a�9��{B�
�F��;b��w;�H���Td"��s⥿`EB?��Dmwm���fz��$72�b��G-�O=5<�}1X��	g��>,�c�S���Ͷq�΄���F>�(�r��dZ�;�gޔ�˚;���K��Z��+VBW-��w��'t�b���ߥ��@,��m]��� ���]�pt�z��
��,�����u?[ˏ�VV��z����F��b�A.Gw�!ҊZ�D�L����B�n�<��u.\B��m�����'�^B�����O ������;�-����"%2+�BHO����;��?��ٻ�A���\!��aH_3�[d�Эi��Cp��QU/k~�*�ON˜�rN�r�����ø��!���^�:%u�H*G��$�_�':�����ܡI�&�s1w7�q xk0����8�$t�a��ht1D�'}���o�[:�I���n!�w��/���
��p�)�8���@D�;�|P�ixj������΍s:���Wjbu;�Q������^x���[��	y�X�S�6��jF�=���!U'�I�L �Nu+�7�k��w)��J�md��ө��qx�ʗBZx�����P �m5�B�asmR�&ҧ暄�Vg��ZWlͶN�t�j��YsM��q�$b�l�I6�٤�A,�).����6�o�,�m��ͪ��Z)�⣖+9�
�3q�W�f,I3�TzY�?�T�$K7�g '������)�FY��3{'��Z	��P���}�J����)��W�9X'Vė�=�tj��D�;�S��]m@.e�	���U&�aX��~�O�I�LC3�L�5m������Kd1?�d+����v�؛8��&S�7g��Dڈ�g�Qx����5"�Y5h�N�~�2Tn�v%YGj(ۅ�6�O׎�@�� b�ǔ�_��P5�$�y2R�|����>��e�1<l��'s��h+v�<?�j�=�)d<�hv뒽!��4N����T����ʮ����oI    �dB��L�pW}�C*�k{\�z���`1w_MUE��4Q�Ȧt����q��isZT3�ù�"�ҫ��:S��R뮭ē7�*��X:9�+2�E����W��2jNmR/y��a�.I�t���)v��d$�.0i�H;�g"R��l>}H%d�H�wn�i1-�&p���AGI��A��j?���sIL�5g�I��W�Pt{��5aEϝ��ZƊ���x�"����uG���#�N�9!�b*FŠs�QBE�K�n���F)��5�v�4�ӡ��d��jN�l�:=��m)�V�l(�Q����O��\-xi�-*�P�"xJ���3m?�b�m����yi�d�������d�U,g�.&M��H7-&SB�H7d5&YB�H7$6&eB�H7��Ҙ�E�]���p��D�AW���k��F���V����A��Ƶ sB�kY�V_���U�L���V�̛&$.�)3<׀��߽O�����!�j}��)����,�T�<Y��3�҄$���Z��fOH�@�_z������̼79�Ϩ�Æ�&�܏�}6!�8�7hq��g�'Hl��4?#%�W� |��'AE�гs�u�i���8��&)�t<jμ9$橀�����:�o���ho.����b�2�}�V�I$LO�iJ�M�)����X�]2����|hxf��\�����WT��]�zz�M����+�Q̈7�q��\�����iː��,��AUz�읬>O��)����]��U �>�����f؋����@s�UI\�J\� ��u�GC�������@3�u�]"�8��1f��,��h�wY�f���x���:\�yA��Aݍ�7{T���;�A[�ļ<�
��'<Fd��=U��t�4U�)���kT�����{���D�``��ا?�Z�F�$�Ȇ	���Nq���2�}s߬LF�
ݭ�"ښ���wM��X��;�m22P�ca��JF�O"%f��j��z����u.�M������X,��eS$%��a�N�ܕ����T3R�d��1@���ғOx�����r��+��Ujv��6N@~*�����q�RV,"���9��@6���UĚA��L�1�W���*))IB��}V�F�6��4={�:���6�=���cSӛ�cyC�����;311��=����ʌ�s�c�/���:2���a�>a��aF�v�F9ȩe���P���\������LN��>���׼�{��q�������[�n�U-v�l�ƍy�N�ԋ31G\�e�HA�1R���1�'���l�L�4&ɨ{g�q ��[ZA��|�o�GΒ�y6S��߭�mH\R���L���v^Cc&c�#N��HH�|�g��Sed&M.`�D�5Y��u��!u��r����g�z ;c�{0���6"Q�������1)��/TBF��f�����Tn��x\[���S=��y�� ������MZpa���,�w���۾7'�~���m
��l.��|5c�Y"�&�o��E�]�ڏ2:�czju>������&$_��6�0�u'�(�|P`qGV���޼:�c��P�&丘��&��xw�k�PD3Vx����l��3�����2V��UK�q��TJ���̩�E��f�� !��t���t��^����\��ڽ���,A�꿶k��/��'�1:y��j�'��SQ�I�Mm�PF�_�.*�9�a��t�X�S��j���]*gx�N6�k7�1��zwA�JI_�����uI���H���ܳI�նs���T�k?]z����c�v%���E������B���JNM�/:ސ��*{nV��hüs{#'HZ��p�[�DAR�%*�nR�µ%�՜˦}���Y�q���B���{�P�n�<A��1h��ԫú����gT�\:��n��[Gנ΍��ԏ��U}��tt3Q4�ĺ�8Ww�kƀJ�% Ħk-F�1��TR�RP#&H}���jb�)��XAR�2I��ۂ���&I,݇;����7tA���YUA�<��@uqS��v���M;����j���2%�굫��;yIyv&:��=~��E5+jjF]����������ܵ��C�iW��*��Z��Bbr��*�^U�^w7��PY�x=ҹ>6��Vq���6e��L��҉	udG�[OAz,�Q���굖9	o���o�#_,�a�c�.xo�fg�d&N�z���+IJ����.ZU#)�NMm�J���Ԓ���8��6��A��X�N-�Q#bC:�|F���(��3�s�J�zs�J�r�����[y>K��qQ��w&�����8�bB�������o���i�D�G����N��'�B`��������[�j�l4�j^gp�{��0��n�P��DD7�|;�5�{[���Kjx�¤�؎$^�o�&����&�L��T�w�uA��e�!���X��I-��'zȘ��=�D����$x���Q����A�Ű����4|�"�H��D���"YR���M����k:{t���/I��es/�^AU%��p��u�Mi�#Pq�ED����9R=w-�}_�K�ڡȣ��ķ`/@�|;c�$d]����y����G��W۲d3g�g�L�.��=�v�}gJ�� �c#q�`W�
{�W�2=}�\���:�.(#9�j$L�+_4Ů1Z����-ɟ�_�[�t��<��Q=>�1��K�Lo�y��Ja�o"1�k�tb�%S�܉���$m9C��<R����'��2П�8�Y�7�45����j+Ҋ�����]=�!��Y�5<�j8c��ƛ�?77���h���N$Z���'%�,����S�p���\�X�ܺ���}�,F���Yu2]p����@bq�)��{W��7j��$!�b�����Zj��I�_&�ۃ4]�WNf����|������f{fJjJ��C�W�(o7k*�)��|�W�"l�!%b}Y=���V�#9�U�[�ڋӳv�}��ڷ��NBJ$7��ӟ;�[D_L.+�-�1o۔:����_|5�YhS�P����M�O{�g�_��� "����z�&"Ur���H�k��l��e��_�aR�-��u����P���{���~�df����\V-��Н����+����g)��4��9ħ�k��]V0�'][G@V���.��_*���}j���
+
3���b���/��
�́�GT-�,�*6�?i�tb���m�O�6��I�m����B��S����F:��g�q@V�S�D9t��(��S�7 ;ҵɂ���vH�t�0��h�5"ebM�4�� &?��]��"p��܇3��]��g�d@9��t�������G+f��_w��Z��ڒ���H� ���ߣO>*T��ȯX4�ڢNJ&�<ˤ��2�'�9�J�������2*at��e�H̑��|ZҔDA�*� WbP�i��6�*";}h��֛�QX���Ҙ{;r�d�n&#H��-�h����/�M �Q��7��iL�|$�+��/8�SӘ�׵n�j,P���!������O�V��'3~�j�ܭ�i��`�ɔ�r+&'�H����y���7�*r#�3'tb�\���dX+R$&�sV��'mV���sP��,:��\d1g�Co<�3 _��`
�;4o�d���a�>�`��t�BMb��|9������G���Yxrӑ�'iy<�!O�Vy��ڑ�<a�t�&K}�/&YHK�W؝s�����-׊]��� ��F~p�8N�jeߒ����Ꙍ���m?�wcD�/�Ð]��������������N@��������V.��s����݂�����2LJ�Kwq�a�,��aW�w̫��UV:�C6��Y�*��fz�$?�A�eX��/�v������G��!�"ۛ�/1�e�/I̫�E��2��qFb�`97���v�jv��3H��K�P�QK���-�$�bAEK���[O}md�M���k#/O��v�Қ4�t�Kz~}�M��۽=]kM�\��|i��!�6�
9ua�E\���o��tbW�}�����;    ��j3f'�8d%����v�k����ײ�ܷ+�i����u^A��uZ�@&)o$��Q��+~L����"�b��q<��f2���z��3o[��t�c���N�atb�i�	�.�h� I�A�e�c�(�W'?V3j<���v5�>��+v����ӋCU�.7����LNN��?sf0�ێ���@��8%���+sR2�����h�Xz�+f�d"9Ve�����&�C�ӥ��䦃���fd�����D%�������e�����f�2��y���7яF�k}A�{=j+Yu��r���h��/�>�I˹m��Nulƙ��f�k�0>g'8uR%��m�ϙ]t�����7���`6��g2r�G��dt���8�*wdB8͗t�c+@��qzc��	����E����K7���&S�۳_�K'y���LN�m���jQ�r��:2[�d������z�԰f̌�κ�֖��9�I?��X�q|�J޲��)u�g������obi(���th7�N
���4�����z�}y�sZ�ct�O�`�s6O�-�@�fA�t�9&P5Kjf̷�{b�����t7�=
l�K�	�f�\�ݍ�?O�26�+���m"�I�Mf^ʝ5(5yD/_�Ehݡ�M�3�#�T7{�^	ۺ*��
CVedQ��@��}=����a$֮�|��P`k�ɡջ�!39���ۢ.Xm"�^��]T���I���<mK"c�	_nW�å�>Z.ɗ��l�p&#/q>[uO�HJ<�R�˨���`�L�$!�p_܍t\j_?�C��ý���622:�+3J}�:R�;4Zww���{{x�{7-M��H��Q�on�>�J���i�!'b;�]!�=,N�R@��4�	5�$|�����-��G���m=(S��-H]��k1��O���3oOB��:}���O�攅�]�r�R� �mHr귵�J@�B�H.�&��70�M�u�&"���oj@�F���d���Ǚ��ɡX�~�!1�̖���!UW��kNb3�H�|���"2��KM8^�+dl��)���ܑ|���*"5�����/'%Y���,"Iy���M�eL�����tI�s�W#&Hȓ�p�����է�dHl��f�E	��n��VBpL�^���F���E�M�H��tҹ&#8Kl��Zk$F�4D�܌��[��C���-HO^͵��e��o�{k�S,���"KE�mz�jJ�Ę�ݦB�Ģ�n�6kw$0o��Zz��)	t'���lP1ɤ$Ml��#soI�Ju��� �(��2(�=&%�b�o�{`Eӹ��BD.�����+�k�y�&%Qe�N�a�PYFf���Ԡj��h��YCmi�:�v׽�ȴ)i;�5��F��I:�DM7�֌,�7�g��D�gwt� �I5ɔEC?��5*!U5��mJ� TJ��I?���P݊��X7��|I]�eX�"����rQC<�O��������<�~	�Xf���b?����\�x�k��u����$6����Ӧ���=]�����K|3178�Dh�~*���5��(9�Q3�������s��T���-B����0�=|jAV�B�XAkO?o��?4{wnv�N+ւ,�a.�i��ؕ��S��I�,�uQ�N���ǤqB�S�B�ɹ���!S��NNë�� O���!�II�w;��L$����kL�T$�@1���,$��-�TW��&&�Z�ƒT_HW��嶞��$�i5ް31�+�ݡ����(8ĉ�TH��x��NU!��>�W�Yn��rX�A˒k�g�b��#�����֫&�7��)�<�_��gg5h��q�X��u�V� K�U�EMƞ,h�EՆd�H�V]ث���'�¥��Af����B`���;P����W�V�(�JIUQ�J�B�hvX�:t�����֣���Ql�:����z��6 ?ҿ���C�����hSe�H�#'�,UNh����2�K���篬TuR�s�Ө��$��B=�$p{���ߘ�ܔ8�(?>��g`w�̏������k�ٍu�Գ���:q�h�>�V�f��Ѫ����O����1N�Q��z�ճ���\1��A�0��$���\�s�zə^�~��r�tӬ^�����m}| �\�3�T�v�g��f���k�Z�E�c���Ek�� �611���~Z ��2�L��td|��ϯ��6-�ﵚZ��K�<�sSB�����G&ap <��_�	��s�.F�$bq�+P����whmZv);O{�b� ;@��T%�E�ՙ�\��/����g ��95�����'��$�p`�5�}Wt�QX���v��!=~�@�&@��Z�@>�l���Ga��4��2���V�-�rY��'6��{,�kR���B������
�W�|7c-�#�埋LF7=x����d��3}T����W�g�s�끤�=2K4��=8�T�?}����,�����'������*��r�pk<�D�*乩p�Ƚ��!���T2��}��V���3_�l&���`�Ƴ��MI_��W�<��氻o�X����w����@���L�pͦ�XE�a�����<���m[��N����W��;ͦ[[�������[VpS-"�ѾF�ލ��l܀`iW?��B���/d:��%Y�g\��MJ�g^��&���b�.!˄��ѝ��¡��uz:�(C�CT."^|F=#�.}b7 ��n���C����(�K66���/�enڄ���^<�m��w=Z��`�zwe�DP�T�O�w�����������Z@��ܹ"���t�Q�ܭ`�)�҈��X�L%����V�(�]�F�����Q��9�$�D7��@�IrJ��UW�߄�fv�{��J�%��$�����������/�U��(U�lc���<.�o(��c���5mH>��$7Yܟ�(�GF1k�&��åy�6$)�&/8�|,V�Rr]c�hIq����[ڵ!�v���*z˩�F�i�&$�z3�L&���Ԛ�ni1忡����Ϝ�Vu�`�j`��!}����4IT�o��<�e�?���+J��|9rXMJ�s�T��,ve�kfKo��|���*$�yv�d�dmA������?ny&���rQ��F;�8	!/�T�.�8jÿ���ۿ��[���!"g_E'uY���ABPj�D�EY�"8��E��dw|����t���5b2���0W5���w�	�GlK=hs������A�e���B�~+
�^kZS��5f��GӁE�Q3����=�`���8>��I�u#s�{6	@����I�ʗ�E
�7|��<��Ԕ�U��{DNaq21jP��=�`+v���.3n�ol�ѣE1�gfFS���ȃ��-�!"�����Ţ(��]}��2�^uc�f�mw�Kz���t�3JS�4^ҕ�4e{���,����W����Ebp�}-FV��Y��Ф�T��ݺ/鍢n����h��W8�И}�L�y��h"�8�d���2�o�Ĩ$�fVQts�=X'^�9E�4,���/阢(�\L6$��*J���F���xI���e�kr�W���krp�8g�[茢��Ɍ�xI��>!���S�|~ڨ��bR#�+^�E=)��2�|m\����Q��>^Z�*D��N�M�%}SԅB����s� ����'�T`	�/E���í��~$���B3�7i��ƽJ胢ړK���[�{1Q�yz��x�G�"M��QV�{�!���ݺDO4���q@ս[�B^��9�ĄW�>[aH�=⨏40���B��3�/�A�� $fN�����J�p�m�+j&�G����-�x�F��i�1��q�.����(F��,��:Q��A��#�	���L�q���C��A�!+tc�(�n��YT z�H�#��C'��A�~,�] D�M���%�Y�n	�K:�(;4�;����L�/tls�?���j�ȣ��B��m��W0���!��ӳ��󴢱��2���ڤ!�~l��MD���9�~��.��]��[��좦�ߪ��,���eZ�ƭ�tUQjg�e�M�EvN����"n��y}�6�6 0�s    R��Di;r"6�`��&%I�.�>ܹՀ�(�猲2��n)��&Ab�|���w��>��������^Ʉ� �]�\_�q7z�x�lp�b�w�#�+���c���d��WXuv&"b��JAuY��A�<�` 3i�L�,q9�kHjRW���My�#���%UhN��.�����N,
�\&��℘&[�z�J��
�C���kG�f�����b��ذW�S��2�E�Ϩ�ɾ�n��6����N��E=��I�qD��e|���t8܊�Ӵ�X�%�j�T�M�`y��Zob�#�9F�'_�A&����m3�x���6"wvj>t{�ކ|��$hG�/��<�e��#=WQDQ,����a�g�b��2=��V1[i��p>�6YB�,Yb=�
ßK)�MMp[�(�������~� �p�	�k��z��ػ�Ԋ�z�,�&))q����ii=���q0��*�!���2��My���r伛�M�h�|+0+O8���		?�M3�|8S%�-LWͶӺpt�Z#�⯻�F�{$��
����Ea���?��W�`BY�1�s/NB������X�	>O:w��qr�#��V�8��._�I�l�m�O�h�
�>ѣ�_�d�@3%ʶ���a��9_�r+Ac��]+�db"�dǂ�&"��&�4��E�OjH��0e",����a�`B����M���W���b≃á�p�Fq��p`�S~�-.����Х� �d�f�+ť~02b%��V�|���T�_���0=��I~�8���q�C�������������	]6�{�愌0f)��Y��s�#�v��ӟ�~�ʈgv��6�{eFhqXw��j�8WKD���u9A�u�탘
8�oB"�b�/���-R1.���I�vS�j�<9�8�M+l^������Jm$L~����}���Q�Ȉg���nd��J�\�7�N�R�Q�Ū� v�~<l�-j�C@���1����q+�쯙�&���.na1g�;`'������ȃ�g�A�p	���� �hTL��ַ���7$@�F�ع��U�sI��yS-&%a,��j�wBXb���Vݒ�{&|�����*�v��@j�EwX���@��Q�K�	���&�n�xac��E;B,~���Sax ��EN%Ւݡ���щ��]E擒ѐƔ���g ��P_;�t��D��.B�7�Yn��"��/V_:Od�S&�K`qr��<�Z���\6����UIi4حTD��ob�$^�xΠ��@�j��.�BEDԶK}~�^b��޺��/�1!�[�h����%U #R鴌<�D*���sQ�$Pi�w���"��7*"$؀�p�?W�l�%`!!��2����u?��Hf�ȭp-������O��Z��VN��dZ&�||���É��Ál�����ۍ{(a�0�%�!��Jt`�܉5�H���V9�n�(��)���kq\�Sq����)��f�U��`j�y*$Z�Ww�Z���M�NFӭ{e�T.Gyy*$T�犨`��"�E0�Cf��p�pE��%���AK��XLS�LH�*A��E���8=
L�A�($+#��7!1�9�5n;t݌�Cl���1QIQ�UX���~����=��*N��w��_����<^�b�
�ܘWIL�m�Jv}�^�2�x�߂.�,�F���OȓR��
�3'VT5����[�2[����Q�
'=�y�� p�V�ko��0E��Q��5*����.�u�����8���V��4�a/����>���_"�<��~ :4zx�˨r2�����$�ȅW!z �GW�"�eS��`�i��@H��?9�J�~��F�P��ѹ��QLK�����zE�]ХJ�/���ħw�?�}���]辖��c��F�x�B�g���Y2�@4�A��֋ѥuڈ`:���*���wd/��X:����"�tfZ����I~���0�+2zJ� ��DV�+�c��EI�ô��7͡�����Aq8�%��\"��9iH�ĥw�~��7�i�ǜ�}�'H��a���G2��>5�INJ�*<~l����H[_�O�~�V�	2Dh��ⴏݶsC��~bk�x��}�th��(�j��^�F�?�	~Եh�'6����UQ�<�}�`���O�2C q~ԣt
	�ˊ��`�.Huk%�Df�w��5�����i�'f���&�)B��-_�b�1m�$F�"�����i�'�������83�ݹg&4�7���'&%V���H4��#�1�4���ۃ
K
3��J�Y��H�N�B�>���4S_ɬ���ߛ�उ�wx�C�	��$-���`�Hh�'Yt*sz���h�S��ga_Fk?ɒa
���L������+�W;g0�ݟd���a���.�U���q�&n��K��MH���#���Aͫ�-��Hp����0E��FSB� �E^`	[�R=��p�U�t��ݒy�u=��@bf�(|��@�����1���@��:��;��:���{\�ȝW�n�}<��t��?�*��nK_ ��ШI�$U9��Pe�����&�(	����@jq_	��"��i(L)�k8��H�
�C!���˟������@jӐ���}MI����I��z��	��v>�q�@?�O�{)lqD���	R��R���z�l�^��U�~���,y��~"�mz&ekG�3��p���& �D�,m�� bSI�A�YZ��o�}�{Qb�XT�r���F�P�'�Y#	%Z4���M/F�Q��[� d_?��i}" Hvq��sx�?9o@���6����RV[��ٖ>n�4W�Y��g��JڰF��/+�ؼ �s4�Ϙ���g��% 9�z�����[�fZ� Lk��#�/���Mz�����.d�GD;����!�@ֳB�h���n|���.I&�T`�0��m����k��rg�$ݷ�N4�.]�ń��e%�aK7�z2@o��ǰ!���]���1��?����_F^Z�G�lJ߽9��pGR�O�Ɉ��/����|��� �����L�JY�:�u��Ej��� ��Y@$� i_���E�{�X"'��մ�\L�?ډ��,P��_���i�f{^��{�.�|c ' �Ys����f�̛�^ ) ;Y��Uߗ�ET譸Hv��i��Ɠ�IA�W�?-�����>8i�O���GHB@N�D(������J�wz���BL��7���H�[<���k#���#��SY�\�����I<���&cT�i�U�W�‒���\*
����"� )�K߀X u�y�*4�^ʿO��V�����_�$�b3����n���<���\BZ@�s�*�h����!* �2�a&�æ����ಕ����αR������ɂ�VF��i٫�o+d	$?����Mezt�]yw�#!K�.��I!? �]ׄ����6Ҋv����
��{ͼ�C��hʹ�C4�Y��ld	��R�ڈ���������D�kƷ� Qw"�,��͂�BR��+��� D��~!�="���}!0xn��'A!������������4`m��A�;MZ�xp���\;�?���Q��g�Br�D��a�z��?���gou�x����$O �n��M4��CA��B��v�3��ĊX�&�Y�2.�B�@>V������N�������Zޣ����-�<T�I4�v%RĹf%!j@c�?��ދA �e�h[�������w
Y�YM�G�"qUY.��6m�"оʦ�mx�E�������XVp"��<Y�$���u���~@:`#.#�$�v�$�@���j�Q"��N�8,mH.��^GM.�HX�m�S�o�ՊJN���:R�Yb��4q%��\��W�m�?~�X;8�X��Ed�Us�.$���$ƻ�V��Q)t)&���O��W��ǚ=�fF'�$+@A�^(�6���;߰	%�6B�/+e�f�0]	�e@�V �
Ԍ�ЕW��rn�V (�_�Y$I,�.T�4aBB�V�Co��[~c�
Ԅjxօ����v��B�XЬ~���~ݺ�&[4[�#),h� �,����6��� �   WH
�ԒO
��O�,�x�u��y�II��R������G��O��O�=�ԉp�<��N��`δF�<+�֓v��xW�R�r<�V E�,/w�m'@\��8Gݺ��ߏ��Hr9��[�dqL�	Χ������0U����/c�׵����xy����#и���a�ax؜��6Z,�Tƣ�������rBI�]�VbH�T�9����������ٿn�,1      �	   f   x�5�A
�0D�3�)ƪ��h��|�Q�x�s�]���@�e�N�p�����m�Y��*+�w�W����u�����ɔ�4���^������_�'�;      �	   �   x�5�Mn� �s������,=�D`�6�^��.z�\��2���l?=S7+=S���m�7z�NEyc�)����K�@�|��{6�fs��6��X.�PMk��.R Ek�.��,�Y��ZS�Z{�u���#����X��L68�Xb�,�	Ȧ&2Y������ȧF21�7�򩁌��CN��~H�:*���
���(�������i� �-O&      �	   �   x�U��n�PE�w��/���]ZB�0H��n�0�:�S>��~�?ֱ�ܜ�9����xld'��A���=J�7�/�zч�����*-ѕ�$�Օ��g��Q��L/�9���f6�+�Od��u��V���y�w���a<���)~B[����3�c��u?�Qݿ�%h*4ڇ�ζ��jQ]��ׂ�� ��I+      �	   E   x�3�1�tu
�W	��u	r�2�"� g� $Q#�#�`W�P?dņ�!�� .��=... Pa�      �	   =   x�ʹ�0���(�#��^���Ekȍ�c��b��0�e��VN�ܸp�eT���� �

]      �	   u   x�%�91Ek�>�D�eDr�Q���ڷ��i�� �(���%-^&ox{ƇY�0S.���l`�^2��-��M�7Ď���6��������y�`yz�0��~N)�/h�"�      �	   %   x�3�t�tK�M�����2����M,N.��b���� ���      �	      x������ � �      �	   0   x�3�t��t��K-��2��w��O*J�2�t�t-.HM�L����� �	�      �	   .   x�3�tt�r�2�p
��s�2��w�qt�������� ���      �	   7   x�3�t���q��2����t�tt��2�t����p�@N���'P<F��� ��       �	      x������ � �      �	      x������ � �      �	      x������ � �      �	   l   x�36�L..�7204�74�72�w�/�M,ɏ/(M��O�IL����1��1�ML*���j�i�5
)Y�Z���i Iqpr��	s�A W� ���      �	   �   x����j�0Ek�+�رƐ>R���T�E~$=E���(K���=w;)#>�i�LVn��W�����ǋ�Ǵ)/��I���*�~�t������U|Ģ�BV�	>W�s����~��eԴYp�Z�R�Jʠyaa�9�6ÓcD�#���H%�ׄ�V�]SV�O[��~P���͵k���e�      �	      x������ � �      �	      x�ĽK�G�.���
,�vG��xdFjW,�(��QS,��M[�*&� �H���wwvZj�E[������W �H���f�L�ទ�_Dx���rf����,�)�t���[����������1�g忘���,������S{⧠�
�S�C��z�(k�)�a��W?uŷ�Y��X/������_�?�\_]��1 W�r���<�7Ox���	�:t͢q��W�'��X�m��6�J�?�]]�z\����E��x������뫋7�s��)����:8~�ˋ�7�_�%e.P����B���8;����QDt�)�23{���k�w����~��l��~}����|���o�Qc�Uߺzj�4��j��ܽ���fج��1p`X�ۢ\����z������g�ή�u���v��������gO^E*-�-<G�{���g�����ͳ7�G�:�s ���˳�}/��v��.Da��J)Gc�E=c�U��oM���,����n�m�֩�~�P��O�/��VQ��X��~F�~��~��7����|�nwYmn���-�^��,���Mϻ�nhW�n~�d7[���ժ}�7��_�_�Q��U����l��~�.�����O�uo�kT�|?<�~�/7ۣN�uzʅ��E�7�j��&�՝o��~��s>�φ�=���n���7T�?�n�m��ボ~����b� g7w��߂V{�v�v��������7ɴz��}kʅ��������[��vݵw=�����
</�
���۞^�q�|_���ɑ�Z�ǵ�x�����пݯy@��鮃i�l7��T���Ɛkt���z۽�����_�[�7 Ǉ�[��M�����lQ:�|�ë�,����`������?!���@y���n���C�SO=��u�jQ��p���9��Q�^c�S��)Z�~X��a�ߴ7 ����h����;��vu\e6[e5u4�px$+�e����ԫek���ΦҦh���/#��On'���ߖk^Q��v6[\�����qjk�6�����=<F������oyխ�mր�ˇ��]�/�;�͖^���dSN�7�r�v���K�A
�C����2�������}��g�����w��~�_��C���p7���Z��I�m�a��ex�ܬ�v�3���.��l6xl������g���[↶��������}7$ɖ!��E�6@szK[�R{[�������v���N/1S|[�Vćc1{{Mw��_ѷ�����p���0,��`�`1���w�8>Q/Hx��S��s���Qu������g�D���ɂwz��~�*�,�����9���_�#.������~~���N�hS���c� �t��tz��0��lv���s�����Y��ӊKn� S5Zw���/�W�1�8l�è�a�����0O�����y��r[�"��uK�泻�x��I�Dc��W���!���d��L��5<��!���p������4,�;AD|�Ao��_�^�^����l�pp>݃q�nG���V��my��Dñ��O�[�
���5�*j�m���[r~л�����99i>[<O\>���;�M����=��f���]-�Dk�4`s��e���t���i�?9�l����/L�w�!���:��M������'��Á߮O�>[KpI��|�w?�^���? 2�7'��Eea��!7lFO�[���hA5��`���N�dhpx<���x�\"�Z��OG�ǣ���j����32�U�{�V��ϭ�W�-��.�����V4������J�$P��"�����T-���~��s����[��т��8-�^p֠�°A�Ԃ��� ���IlUz��&���U����c�Ȅ��4=�+���%���O�ҋ��C�CK�o|w��q?$�4���|���҂�R�z��Ϡץ��l�1������0[
p�ë,�������Ы���������������n�]���������+�l������P{=��+��v�a�aa���ۡ=e�V�¬��y��sn|�X�;9�i�teH��-��[S/|�����+�����w`׬?�C�_��Sexl�i8�ۛ=)L������:[jt�x>P�H���t�ݠ�񠯳�p���g{}K��%lZ�|�%l�G}�
���½�No��k\�p����p���u��\�|�VϺ�H�d���Ƴ����´{ ?��ζ�����VIC���jE7���Q�^�����5��ļ+5i�;�@��S=���N�՟n7�Tw��d���@�6^��I��x��sX'�X/vo���M�|f,A/ty�I�N8���v��9J���/
v�W�WYY�k���5*�Sb�sp)͢� �U j`�,;�+�5##���E;��p�p����M����3�aچ���}�s^����>��^���Ҡ�Q��Q�w嫇ߓ���b���}U}�֖�%� &��@Ȗ�X+����2��ƕqк_w�?װo�{O�S=.[Cq�������':�_>��K��&[XWCY��f��L�%{e�d�5�2�h96�Ԇ�(U�|����}���w0����W�-=��j0�t��gQ�=y~���pXfϣw�b����(�G�-?	,L��,�i�h�q��G?l��Q��5~�x����釗���?�n�&[���)go6�]t=���lm5��%�=��m��袟�U�逑0���ׯ��z���f�7{ư�G�5�A�ⴗ�ۇY�Yyѿ����)98A؀�f/ۛ�jz�� U� 櫅�}��]&b�DLC�S �9'���}K�+|S��9�ӈ9�/62я���}Anqk��XN�䎆�Ղ��~H�5<F�y��pۻ�n��K$4 @v��c]i����0Ä��-�!~GE�����E!Kkv���+D:s(<��u������aP�#2Dx4�J6�@Xe`���n�.>J�(<�����O`�o7�D��)�E�c �����v�
e`��a����=l�w,�� �܋�;�,|{�j4����5:��O�j�>���Ǔka��?M���>>�Ӊ��e�|�i���� 5�|��i�ӗ��[m�j\;��^�W�G0Ew�D��C���I3{���\]u��'�, R���Z�^����hY�`�	6:�/���t�d�\�M�Ǽ��|�����L&9���m����=^�v>lR����~�#�����t�o����f��{"�!�>��:��tYm���pЇ�o�0o֛!�}���ی�����e�t=2s$����mY���n[�Z��׫��<��e�I�����������e	��O�w��,�"�2zd�8�u��eTl�C옘�s���Vf��N�����K�Λ�#?_"�s�o�o�L�e�O%G�`����X��y�fv�Գ�'D�ip�(�f/��v<M. [�/-�wI��
���|��!Y�%gEA�hpW�#��t���,�|-p�b��A�X��_A6J����.�M)����72�oO�F+�H�m�o�Qѿ���`K[/�{<�� 
��}���P5,@V�X,�,{�DT��n|<���f�H��rp��g��z�K7�R���B'�3�k��*������+��a����iJtdH�52>��l�,^�X��o�H�g��?�s~1?@h-��� !�4dp����@���3�g,�ⵙsƗ-�v�_��"і����-����d<�>���(���z��-:pR�>�o���|�E��������ජ�T�A�*&T]��O�b�e��N��?P�+��j��b�d��S4T�r���74O�y�]�;���x���e/���OG�4?(["�R��������"�e�޾�W=�^���t�٢��/�avy9���2�8S�l�pI�������ᷛ=�$IJd˄Ls�^_�i�$S�J�e��ba^f��WW�$�?�k������._�4�%8��&G��՟ӟk@�ϫC�kv��    �ً��k�L�9.rN���ٟ嵆z������W�ҟk���+�;���/F�֟~�S�z��������������o..��]�|,y�,�?5�$8V���ϯKd��2;*9�٫�?fOɾ�A��A��'��3��3������_�e���g��n�K�*�?�G�]��s^l�e��}��D��O��`� $�}��b��K�h��!��ۗ�#ʢy�����w��7�-�)��W�@p�SB��~��L����C�9p���������u �v��A�?�5wHe����w�R��U��@��
��	�l-T���dl�Q��TN����"������7�?�?�F#�2������?�[/Ұ !�+/�K��l��O����-��Vl�bv�����1��24,��z�����sj�G�G*�!�r�]SL�l���?�?S���tٲ�m�u�3��3Xx�Y�X^�n��CƓH�
L4^�*�<�J��m"�a��ma�۲G[^��a��S��h9��jʺ.�!G�H,�! m�E�7Q���ѫ�"�@�%>�1zA9������}�k��E%��,>�R
�H�$\?��s�>e����Le��9�1K�f}�}JD�\��< ���~�Fu.���&"t�c��e,�����C�}�_�"M.����q	����d֔S�D,�z4r׸n��cF7˔ZV�Y8.3���u7�i呥ߣ��XqJ^w�Ͷ�y�%2Vɔ������x���	$�r�p��xvw�,����T�X����>}����{0UB��_��П�$S(4vᬺ������K8zxK���p%�٣�]Ls՟DM��}�7�M����,������&Z$`���,�FN�y��1�w��~'�~"��PR
�	�;�p!�[ɩ74*,���8ߤp0,¡���=�S�T{�J1u6��/��7�2,8�S����,,)�-�� Ae'����v�Pj2PP䨒�F%2�uZ�Ò&�bP*z �O�v�>��0A�N�*�}�7�$8�,6f+�v#��W� ,_bJ�:}F��=Z�C4�Œ�D ����K��A v��0�*
�@�·v4(�T�e�PX|�z��0}.V��Hg.CBEUK1��R�6���｀�+�X�u�T'r*J��E`��).C :���% ��D��',�� �m/~�D*C� Y�W�z	� �4.���3x�����7��!�����ſϾ~�M��� �2[�4�]����[��X
ɏ��}��V�g0`�&�^�A!������HiH����~�1. �A�(��b�@
�[ �$vj��UK�w��w�GJ�2P4
�=@����ѳ2T4T�����
�u�K���َb],��H��_.�o�r����%��Ǩ�b�;XM�E#%l�t�]I��O}���˪��Q,GE�ׯ������킖��H,�`;��v�Eo�M4�Y�Q��g���r	8�M��ף�T�����2�KH6j;�����Q���C����W��z�[Y#n����q�]7�����������C2B�4��t�xs�r4�ϻ�m;t����v�*�Z�����T� ������]��ծ���GQA�?�k��s1vͦ�v;�n��~�rh�Ѧ���@��84�T��9����S�`����v��?[���$���\���%�����ö����E�\3c`�>�l~�'Rr��p`�X�#��If�ր�}8����E�%�p\�&���� /�j�0m�AT�jy�61��F'l���{�9����\M���%�Z��3}�U.t4���1�]�i�N���8ŒE�R)��Q��Dh���Go3{�/7��_���C�!�OC�S��1�f�ĸ��P�7��Ą��0y�����u:{A�k�Շ&�f7t���M�4�f�^TE��)������lh%�5��G^0�9��z3�7��p�LU��f)m��K0�1q�W��v���]3�9�`�߮��d.�vb�3�9<0�E����.�L���3�9�	+�h'�����C6O1q�Z��S���Σ��ױ�r�1��`����(T����A�x�rbdMG����*ŰWj�n4�����2��ժ� �����K*B�?)�P��E���\^"S�����e��dn�%�np�p�N�}�9KǓᚲ�$�Ǧ�V�����qM�e�Sv�Q�Ml�M�v:4��@����fx�m;�K<�P϶��gT�a侑 ��y36z��\n��#�
ޗ��6�e2"[d o(��}p#y�7ǽ��S�\w���ˇ���ۻM"�lJ�b��������%��5T-�gŌ�������0��� 7e~�G�.��Lw`�\o0� ?���?�fN��#��W�f�ﹾ{��$ ��85��1����S�S���l���%\�d�I��
��[���n�?�t���0�Ś£˜��hk238Wn�q]�S�6ɠK@KɶR�V���0l����>�2�u�^���~��m���q+{�~�a��{�p�I1�*e׀�����p�Ǡi��n�ܽ�vqpjS{��ҫ�ߖ��sW�J��i�So��"�K|5{v��JX�n}�M��@L$xN��L����p�if|���>|m��(V�85�7=/�v�}�_��3%Ѧ��0!�%ń���2��aZ���*�p����� �Z#��Kw����D�-� ��~��������e���9X� ���.ْ��R��I)�C�=z'��v����\�-acc-`�`�+���޶Y%{��rI܇X�!��������8�	s=��M�����ƫdUFp��`���2^P6�qN��C��&�~V�L��5Z���d��&�3�Dm���2L�L+f�N���=�����m��j��p �.�Ve0}����C�v4w6[d1q�Xf�OL��pMwR�Sc	ݒ�X/�n�t����6[�tiLCC��&�����#�87%�/;(�*KxW���J��-�A��{X��Af5��Ӽ`��ggÒ*����]�,��l(9P�Y��%���Ӈ��u�!f5����pU`�y�G=N� I-�4:D��n���)����hs��7�j�(�P"�1�d�vf0��#y�w��84����1�`O�t�����
[�����2LS�Z*ǃˎ|Tox>��h���N���K��Ҭ�ҫ~��7���vq�N�L��N/�ɮ�fE��>��)�i��-(�^%�*��1]�����*K�U`)�8Z��b?t���q��;�Q�k�[����
�	�Q�d
�Ani�4�%/f����B�Hih#eE���M9;oWK@�Mr^{c��ݘYq�lS�0��F�#�kü]�>n��c��1U𝤪=}i]G�Wb7��D��&��b\-D�����m�+$& ���M���� ��?V��S�y�1G/���M����e|��s�j���o�vH��|�J���ݢ��ib:��dY�2d!pI�,2�CMq��{��'oQe(�8���ㇳ1�`X�py��e*ބ�f�)��*C"RŢ,&���v�d�W��z���Ӊ�,��PB�u)���r�4Ri��	�W���#gC�a��B����|����j�Q�
�����	����!���T4Zτ\kz�|#�b��1��GsQk�a�2���\�%n����5�<��DtJC2�����#ԐB��1��9��h8!g�_T�X����%�N}�Z��ӡ[���'V&�A�¨5�0���9?z:t����4�k�=L���gY�'і!Px��?��k툐���D���a��?�(
Xe�6Q6����A�L����5�ڎ��ȴ\5h/��ЅU�)ܑ|B�|M9{�tͨ�cO+8�Sy���!P	��1G�D��B������r?�����ld)��
�����nجp��-�VS�j,��H��N	-�W���(sj!�G�
��>[-#/SO����5X��B4>�3	�?���T�Tr%��5�w���
    ��R!�4�4��98� ���1s
���VI������� ��]+ׁd�����r�AF��/�R(8եX�n���L8#���!X�6d�L?]"�1WR���-��S�Qi($!wd"�i<[��ŗI'@�٦���c+�_�Wh��Z����䈳{��hHt-�߆ٛ�G��&�3��`4%���i�䱧�^Wh8"-d�bƤ`1L;9|C&��^XaJ�gj<�������X��48Tn�_��sv�ߦnWhp����idA��-:��0u��[8$��T��,fV�E2U.7��&+C�#���r>�45]`)�"��
W��j/� �� ��]df(E��~�L�6�� J-u��pھ������D0é�+el_���h)%r89ClD_�?w"�a�rإ���0c���d���QV.���\>�}u?~�d�n�"V�>߃�oG�+3��Ta���TG�*�Eg���{u�qe�Ş�����>���p?�����L�!�8�k=9�.���b����HɄ��W��Dj�+@��װ�N�"H�����%�i_���M�)J�V������Va"�!��$:�-����%�哯k4Ȑ����sp-�ގׂ�0C����T�,�ƒ���A7{����9.�da�)KU����gÀ���*���5�l��| �@<�F��j�!�JX�ů"�]ƒd�HP汑�!^<>�������g?��?����I��ʥ����г���d�Lx��WI��n޾��aN���U��:_�"Z�*��H.sU8YA�/�sI�YN2WQ	b�$��rdnq�Z��Bha�ڎU+��2S��5�F�m�C.���$��F���OX�DǄ�"���d��m�
6^LJ@��P�:��kr!�]%^4��F����o����'FK*Ǎ�g�i��\���Eܡ� ��O2n�oަ~n�4vJ����Xs4v�n��5�SI�d���>��N�D&�7Z�+�w�2<�Yd��Y@���~�_&�� E�e*6du��O"���b	®��|���F�h�}5��D���S^�P���KC ���q;��d �5�Lɧ�����X�5�8�!	-��/��&V�����·|7J�w^�Pl)��>�����~��缆�aT{Y�T��6^Ð��h� ���N�5٬��m��۟��Q�%��n����dx�ai�"S�I�SC�����o�)~� E$�?�j3"�d�E�1��1m�W����e���(���*��Q0	v�[��Lm�4�b`��<��P?v�#!�aC"Ac�	g��f�ZVi�!����������6�T�K!��8-� �jd���(�u�iRhi�|J��*CGC�)3+�����6��OGK���yo���u��ʱ� �0�4{ ����)&KE3Y�O:0��LN���n��BCV��;�:�o��$��� �����������+��(�P~�HϸZC��L,Cn�s0sǞQWkd8��
�7�[\cËn7��QC�����@�ʗۭ��\kt`� Es�GIQ��~����2XR/%��ABt=A��c�w�(#��!5grQ@(���}���v���#d�pTx�pOz�����a��H��9�LbȰ��v"3_����I2(%�T2�5۾s*�E2�D4��3akA������ز�^�(�8�TA[Iy聄X��DPC����DF4�ڏ�]�h�`1D#1pO�R����h�0�Ql�k"VF>�h�`4�!0la�U"�Q�	�N�x���;صh4P����?{�a�}��/��F�����p�ҋ���i� :,p�BfxN���^�_2}K�dC�s�3��$M�>]�M�O�(�උ��j�v��"M�I�F@�S��VI��/2��4������^��;�c����&͐R�e�EM��F�:_�����b�+�f$�G,as	��i3T%�v����N)�ڑ�ˌ�L�i_�/|�{֢�����{�>���^�A^落�t�����*�����e��QN{������ӿN��}r&\XtP1�΍VA��(E6���ө�,��@fK%�#����D��2T��A�l��ɐ�/5��wSF;�;�X�]��6L��x��JH�/u�nR��}$�#�b����k��1����1��;�/|D�,ե��(���W���`����Q�/5NM+9���� �/5Z!��&��Vl��T66�,i��1�.�R��½�"�b�F�'������f�'j�ï�>�b�F�i����.�����Jd41��Ů7���J��6,���)S��"�xbJ����U似�g���w�Ic��5X��s{����v��Ө0U���"H��A����L�5�\ .3rMS�rMp�+���o������4Z��p��QW�H�O���m��-%X�=���Ax�'Hs��@���b5J��5�g���4!�uY��;���SeF)+��-���~|��_�vְϱ[w=V��*��>+ْ+7Z
�6Cb{�0�vzNi2퐊�G��#d$?��ݸ��[�o�F�B�˪BN,jכ�h,��l2U'7Ѡ���:�2�cT��ѐ��5Fv����q�V���k�A�Ρ����4N��^x���s w��r������J�N�4�,�z��ztr�$�#H��Ӱ��#)/p�F'`�4�@;F���)E���HxV%V��'t
�����6[���=�Rө��=H2ނ���:5qmr���b��o�+�w =�ȗ	�a�R/�v�{,׹y�a���RByP8�*^��ю^�'�J��]oJ��X�Et��*>��N����*�RVH���V"f#�T��K��i%\ �A8�2]����{��,1��{kT2�W���C&�&�e�Z�R����B�L�>�:lu0�C���)M�=�b!Sq��M �g��̏#��SK/�zM��@�8H�:\��t82���	�V@��-�� M�����b� ���XQj��4��ݟ��*�$9�*��4>3��5�.�D���:��L3H�}�
4��|
���R׋1ӄ1	2�-SS�j!�k��e$��\�.7E&1�-���g�ɾ�ȋ�����dK�&�vt�P&1ղ[y=��~����b��k3W�"�2�~�ʏC���4"��Q���8D3��z�˅�#���'���b����]�a���Q�e������R����]m�:��N����~����F8
�����_1�{����X4��T�!P#s�xP��������*�s�G�>X�̙0�W�ΟaZP�a��{;t=�-�Ӡ�AOX᫿x��שi��.$��s���勋�/�J�;��:�ǔ`�q���xx��}�Ûj���Q�S���F(��)7!�ĺ�����^���.VTs;���]/�v=�#T�4�~i'��$*�B�t�F�&�T�H~(�Z�.�q��m>��i�·�ň�RZ"5���xB|hrwH�B&&*�x�uۧnǦPbd��2M$d:�T�K��]�y��E}��BF��p����K������i�����B�g�����"�ZDs=����8b��#��)�3�c���S�������0Ե��
���^-��L�7�}�H����_z�����4 0����-�n�!�v�Ko��Fr��/\z%�5���'�MUd��\�!s�����T�SUdРs�G�"?mYUE���:��mJZ�pgH3!�"�I�d,�7��v��v�$�WEj�k�HQ��&��VE���j<9p~��o&=�U�����t"y�*4lЭ���i��u��2�K�L6�^B���~7�%5~,����q���v8�*5z0*�u�BN�̮���^�.�7���	�|~l�u�ҴT�ƈ�$� _�R����=�*5D,:����M��Ԉ���C�G��GqWT�w�,Jy=wj{�J�*bU#l�g�A�1��
M�2�	oJ�����*3�`�<`RX��ܩm�*5XՒI�2�$>�    �M�[�L��Ǭ�`2��w��V�����NƏ�X�h���F���m��C�G�DP�����L
{�����d�괸:�ƫ��R�(�(��M��ӡj\9��q��L
CGGC�aQCL��\fv�[�:}�F��L[Ɵ�ճǛ-6"��<�K�iҶ�acn��'��l"���U�?��$R��RHf�
�.ZN�|���}��*@��<Q)��:��o�V��qoZ}h�=��%�I�p�I��Ά4��8��z#�J{:x^"����K&��!�̑%j}�9���H?͟��xv4�<�٩e�{�=�П'��`�c���5�<U�C>�+�qW)C���j��ҽ��#A�]��u����Q��86��S��9�RKRϗB6�����r&�p��*b�iFy�l.�a+�^er�G=}�Ӓ�e�(�oC��h������y-N�/gOu2��rU.����`���vXv�&}�:�����1H3�J�������'��*�SRٝ0"���+�A���a�U��rgR�L��B5*�{���ՙ��4TJj��d��K���?�6���F�07����g�H����G�YY�}��%>dD,*���n���}�{-UF^è��Z��!}�}�n��� ؓ�K��5�}j�Ui��h���F�>]Ry3tI�	�b��7P�X~�4�5��d��mOt~�v']���ܸ%.夊��4�[��M�Ն����3Qi@��E�<�O,�J�1'��̌R�ϓx�4(�uP��yi��F��v���^FZN�ԪJ��X���ݏ��UURbHl����Ӂ���P�n2��E�߭~�(o"���Qr��@W�=z��Bu�O2R�4b����C�>�Π�e}�J<K%�_���0�d����Z+�Ϩ���(��i`���+�g��҃��`HI�N�B�!/W���渘@l�������ơم:6_(/M�����'��p^�٪��nT���yPk����������U���x�M�V��Y35�t�*����&�r��HR��"�KVO�t��V��$�4`-5�i�aA�ME�Ĳ��L�@���0K:h�b2�!�nő��>A�*hcbw����d8�/������$4���!=�-����}��F3H`�A!3�g�٬6c�C��EW����.*lܰ��۾�K3���j�{��xc�w�ujpDK9��0�ڔJ�j4ڬ�\ɢ@�,ҁC���=Z�̺����$�j2�QfdvI�N,�&�[E��A|$zItL�gM8ڳ��9_�M�<�Q�VM�>l�������dhê�X�|0(��R�p�R�l0i���:dR�c΀H� �e�H��B���-�82@���5Z
�F'��c�]f-L��F�wu�1��
� ��D=n��v�T8Յ�&����e��31t�V�օ���'�cB�st�Ou�����U��C��P���y�������3ͻ������G)Cu������g��T�A#�q���	�������7���R9BG�֥�<2��y�~�;]�v�@Q]h�92�*�f��{��é���ȐGum�܇42�V#G�2���8�uғR�ƈ�IZ8)P�T�v}�>0C6���7��$��sJ���6��b�~؉3�>$|R8�W�.3I�_���
�YX"��v���]�N'����&mH4��TRL�9���^����}bC��j���:�W���6��D*�R��%_C
#��D��|�t(�V����3�Hgr[`�k���tufc"W�r�1���c�	�e"f�V��.9q�\�ź��oҁ�\�:Cb��Ey�o�MgK@ Ʋ�e.�U*�6]xvK!��应�N�e�����}ezE��D'�)2�L%��I�E��7�z�5O���Є+d\�Q'1�����l�=O3��I�A-�9���3v�X���ud8����#_M<rOR����I�����,�6�u1�iP�zC�"J��!ٌ���A�'m��9I�W'����+d]y��jG���VZ��d�S���91tG��NU�k�k��!��J��f��0&IPH;���3��m�;�uD�p0��\m�Rb���Ϝ�e.ßX�|���P�Z��N�[.5q���ُ�,j�UR?j/fEU��Y���I"�UC���Y������4�J�t�@�=X/�_�){��F�4�0!)1yUcݸpT��C�x/N�.���;�����6�)��)i
��nv�M��Y��Թ�Ӝ�mT\�S�Ӱ�|1!��ꑎ����k\a l�N�@8�J�b�]��}5��K� �� � �*���j܃���P���'f�k���)ҡ �MT05���%��9�/����5��{o#e'�ܜ���Ӵ���أ�Q����t�`j��ܵ(~9
}��ӷ��k"=Xy�0g���1%L�5��8$ގL8O�+h��\i�r�(fL�����j3�J�D�F�!gQd��i����0Ftiw�*�*�>������|Ld3xQ�]þld��B!{]e�r耔3P�ߵ��!Q�a�z	���D�L/O�)b#Ow|���;,�dmW����{�[����We�ù�I_ȯ�ݯ���Ě�2����c����:^�A979~�b�|�<�Π�e拒)��T�%�B�䴺� F�� �MM�U�X[|h5�H��U�S.��~�]�j.Kē������q����Ti]k�a�\z�E�|;�����ֈ�d2�����
p�Zֵ��%�j�dF=�cC���ZC�R�ĉ'�I8����Ԛ�k5v/�b 5���zIYL�uo?��]�?G��.~�)��ޠA���q��Y3�����۔lA��Q���g#��i*��@�I��o�\>GSC�u6�s��2���4B�J�[Y~�*N�[��~��q�1r�\�1�mr&4"���-ؑ��aj&4<��V>G5����x�"�Ovam2�!��±w�|���=��#F��� �y奌�).V�m�{X7 =Q��9�L>9�'9�w����h���>|}��M��M<"j���B_{�%r�j< |%�>p���'N�����b��0Ya�x͚Y�奅���i�����7t1dm(���0"B�5OMG��yF*' �h���jdȗ�gv�
�EϦj%S�ZN��� ��]R�	��=G�!��C�@T����B��
8exh�m�����$�e��!^L�t ���WgD�KM���s��k�� F�<�(�Ӈ,@l�ݤW�Ph�"C���
7ndL}%e���$�:�SYS@�N��n�.����(�����J5d n���ތ��\f ��Emdv�5'ʸ\�GN�P��;��K�{ӌ��`�'U`r؈M>�-���J�5xv*�����t
B(]��.K�v�p϶��dg��r�V�Rk�}�i�����BY����ː�	A`.�-�sa�������n���G�i/���_�zB����2@^�ü)��n�~�F����>���CN��]rpS�Bppx� ����(ǵ�	y��0��� sQ�ao�NI�&��Ĥ�����޷pL�����^��d��rW��#���z�\��fۀ'J4�ZG�b\���`4�h�^T�<���5�v����\���`4,�"�?y���(��8��
DWc9�ž2��AjL�� /o�=��x~H�OmWa���{$�##��T(bd�:k}����Qiͷ+$�I�Gi��d��Qւ\X�hi��ǅq��(JL`��"~T�>�)-�&h��O����Y��6���0�!�A�!�M�,�4?'MvR�q�N��q��:��;����턛���ĀG�PCI�l��]�˽ �j��F܃��˥w�s5Auc�i�h��ơ�|��G�S�f��i3������Ѯ_w����� �Ln�q	d���Ul9<0q�M��M�6�i�b�Vs���&��,��+&na*2�Ȫ�ʛN��'�`뢉(kp��a[�c�2    ���e;D���ï�����|���	X'4�Ц.#���L���!�)%�����h����4�b�𠤮��I�"&<��i��������/M~p�� ��:�>�?�khl�Gְ���ib=�R���H������Y#Bh���3_��� ������ݿ�|����?70{b`H��o�I	i`��Z��a.)s�����+
vj�H���a3���3���:�E��4��p��F+o�Ur߁���[O��o��]ߍ�B0c��r᪚������=�|\��Gޱ��Xy�wgi��ZS�/�U�:��h]5�s��&\�Bɸ��V�͑�ߢJ���^���&*�ų}�*)s%�c�s`�`K��q+����bt�M#r^��1b�붱�x-���X�����8wr��<����������?��8�jb���0�<Fv�������W����4n�O$f:�!L�����x���o��=�
1��o>�@���R-%r�T�����K���S|c�N�J+��{_L ��u��0��j�U��D������jqC��$�V��fk�����1]7"=�P�}.���g#���{�����q��mi�μ��ï�>���:W�y��f�p�B����Lv�e�������7	�Y�-]�������v�ސB��[�x�C*�ӡ�։-2�b�H���>l$7������+��d�U
M�3d�\�J�X��P2�b����P�K�r�A�F4�����w�0�#���7�����|s����w_�E�����q" ��������28)}�!u�������9h��� F� ��)��4\K�`�hZc�5�u��i�M��~��g:�:�F����h#���5����Ŗ���-������h�D�^Eeu��ujX��]����A�L�_��= �����d�II,s��H�����,it�&��P�F�<nj�m4�1+���C$����o����*'H!���;��~�q�vյ���:�Dbě��E�����m�Rf�k�zYp�b�գ������z]pKӂ�H�0.�t�5�^�δ����D�2?9�{2�����j����� �UG"k�hM�1kie-s���&_J��P\���4��8�~Ć��c��I7�Rh�aѬ��|Sh�3!�����E{���9�)4�U�I�����Uf視�U)Ϸ��Ϡ��$�n��ĩ%�D�K.���($��M�!�"��w-$���m/r˜U?�uo�Д�g��y�X�ć.3 c�$�"��k���wSf��L"�S�bj�)�54�ן�o��TH�� ��{}���������F�y�R����Ff����Д��*w�py�
a_�}K�>��1�� ˻u��Ϋ��i�Uc4r1�[��|wh��M��h�Z��1�G
�X;�����2�`���n>�5���k�ѿ��Tk=�3����5y�3���2�ٍ����5�!	�U���ο?v�z9hdb�Ib�,�e��^/�2]��1TE���m��z/�v��!e�v�V���*JG+҅�H����.4�!����E�7�a"?����rP̳��*�I���T�\r�+2��p���w�Kd�f�ln�D��f�i�SMe�fG��&E����`\S�)#ß�_��ʍ� ��*kf� l�a�qbec3�bP.#�3z���f��X�Q"�_T0�m�A��A�8�Yj�c��(�и�5�S�٨-��|����R���(m�!3 ��&��4@���#Q�͏�83�46�B.�r2:�L��؜F&'��r"2���q��"߷��]���B��y���
�����=���Q��i�:�46�gFbA��MB�i$��k
YY|j
5V��8F��Kx�_�&4y�S�7�,�U����t1g���$/��^~-�@!!a~�;�U��Ӕ��g8&:_ʴ��:�z��D�(�2�Sx�9&����뉨Tl_5L�!ò'W�����r|��`_x����s��b�3/jn9V:�����'Qp89��x*���Q�N�3�SpZ�ժ�����=�}�mjb$ނ
S�>��D'��T���{�B�]���l�*C.�W#���&���v%u �[WRi�7q��0��J��#���;��X�Ox%�J��S�)����!�.9��K_M�ח�˗!������4b���Md4�'S�[��b,��X�V����U���T���SJC.$:��Է�@���t�'�M�M��H��+�y�����=�:M�3�y�z��|�1��&�+Mn���Z�>L�<l ����C3�zJ�K��f׸°�Z���"m���K�װ�n����ʐ�Y�q�C�e�Z��n���M=?Y�T�	"-ҐА�ΰ
��M�B~ާ�M\�5����+Q��U�=�a���d���ݮ���p��O���5��O�\���8��*,]�Y��W���#���G5q�eA8OY��>������ۤ���p��U^\m��7�D0�&ŬJ9$���V"���a&o�G�/+,�t�Ym�K�V7�$�#oB7m�"~F;���w�24��~�)+�	�cdǚVZcϋ��ȫ���%Y�p�{��F����3�,؄�P����O�1e���]��F�Bd#��~��Ͷ�'�ԛq�M�Gm�Ҁ,�g��֧��8��2�D�0$8��c1���1�8��,���ފ�����j��3a�+�XV�jx�a��d5w��K*Y�Vi�S�FË;I{�i"��Dzr�h|a� oM3{�Y��:�|��������a_�}̍������J���힃���ոB�`O4,l���EYf�(�����������j4�,�y*#���к��J;*��ˉtХQ���ab�C�C0q����Ĳ�gVZ� ����AS�I��L�]�����wTj��TkQ�N8qy"�!����HϏ@��� K�/�|�f����#�eX���ȯ��Qj)t���g���]�o�)@G�����*F��D��@��Ԗ�12{2菦�6Ւ!����Ȝx���2C(�%c	�@s���xU*ow�'����2X<���'�g@8C_ �1GF�0��rP����V/�(h�˹@8�_C���5&D���@2ޙ� הY]�h�9���Q�b毈��јCօ&�l""���y�J5̐l!�|��L?AT�B�5�w4�3"O�~�٬�}�hСo�a��j���+Xx�?�6l�t��<t
�)R��4G+�j�;���(�~�%�
I�8G5�R0�$���0�Hs���LƎn��R������n��_�ߩ��n���2�q�+�]H��RX2z;�@E�#IAfD��^?�:	K���o-^��4Lm�V��S�ޑ0�?OV4
�P�ZWQ�@#¤:��Ɠ'���̝������Ѝ����,X|!�&̮:�?�u��7��*&�(��9�՟��x۶[���W=!9"��RpX)O�Wq�!5b����m�a��[�.O,���恫/���t�:3OĜ;ɐ.��癊ilas�:�:#k"�]���I�2D17'���&�d�$f�b�%��#O�� ��ɣ��֌!�S�* ����#.���;�������e0�h3�]�5��;�e"*�h%{ܞ0�g��\!��j���0US�C��m�~& *2T�����A�#�n�q-S�|Nt�X�*��� t�p�.G��πp�+�`�͞��5��g� ��	'9-9�Cz~�|�l4t�?���C����g��̘�mi�u�{���%������k8lnՃ�&���/��`�*�ha9�1r�:�#����.�~mO����*/�2 )i/�o��t�,�� ��T��ƐJ6�$2ՈuV��vu��fDX�S���/H�8��N��q���`W+Y�B�
�܎V�8$��H� fN�gվm?�l�qɮ.�ȫ�#qO*�a���YNA�D���6i
B��4����f�L�'A,����!��6��2U�    �Nc "�z����,jT��+[�������bR%���eW�"r�%�Ȟ��ָͨY���먦��+�G�b&��Ԏ��n��9����F��?$��C� ZFGk��R�A^W�K�m��R���ۙ�E���ᤳ5�h��z�!šXw����7�W�x)u
s��frk�3�xD��ѡ�0��5�n��B���^��;Ͳ	�v(�˭:���c�nG�2�T�D�SR�;俐�$*�lK���bt*jn�噱�ۘl�2��Ա�sB��pҩ�|jJ��2V�Ϫ]GAx#R�E5�;3�����Sd� �]�<��=[n��2�%�ea`���o��=�0x���B����Q6��AI�$��p� ��6�țHb�+D�Ax2�J_�Ӊm4��d��W�N>MC��/��Eȟ�	4A��A�&vj�N����F��a��3b���!MС���6��=<���5@a�$c���X�4ӗ��]�\��!?�8�K0i%���`���9��6S���B�<���دG[K�a�$�6�E"U ��v�����H�j	�\�r� 9]���:2PQ/q�"K �g�hӯG�����r�>2^�%'yQ�`-��42��3���	W�*>��$.��n��S:.�ˠV�u&~1�����s��T0�u��&;H��8�u�ǻ~�-�ާ�@c?n,�w
d$��~4�p�����L�'�/?���E�8*K��*d�;ٍ�,�r3io^H����0���M{ځl5�US�7t:�7���z��԰U�כ./�!=��R#�z'�vM�}��|��_#������jl�����:���������H�ĄZǁ7b�C��
�4��F�[yȆM+��	�4����4��]��)($���=G�ۧ�ű�4��h�q\��2p�6�z��a�D��F#�҆�&�]n0���f5��pB�+;f!g���2�L(M�����ح�$}`����R2S�x��2�=߬���H��
�P���K�d��x;�Ȍ6�ԫ���L�ȼ'�n2�v�[7��:׀3�X��1����a�V;�'���Q9�	ZOC�X2[}��}t��˦��h&0"7�����B�ّ�4}�{e�j���<:�ٓ�d}'�@�Tbx�-AN]�(����jQ��d�#O=�Q���"��Fx�)��V���)>���ڸS<KQ��\�t�b���~��s�Ո��"�] ��w�MG���q+��!�HW��6���_g���.Gׯ�j���k9���.O��Fƒ,�J��K��w%�4��������0: ��/���:m˱��X8�]6i�m����K?��P�i��8�:zL�M3�Q9��"�eN��׼�z�R=�d4�2prY�i�������`Wq�36.�	�f���ȸqΨ݇g�d�K�=�����"�e�(S�끐"/U<u��wԔ�ʗ�XG�����^��1�M���!��X$�;Yh4�������#H�N}���b��4S-jN�A�tQ�����9�c�r&d�����@|��Aos1��r-O>Tl}�lw���;-H�އw%K�A������ T�sa��_���UZʠ���O;�<��si�8
��B��g�)��'F+ɇ\�?�Fj5�V��8�h!��F̙ʤ��$4�"ׂɜ���gt;���sc갫�\%D�W1"��٦�a̡qj��e����-�� �(�#�p�2��a׷ad��]��[��sW�<�)+��E����#�D�YV�A�h]U�<N~)gM�`.)���[m���p7��D;���MFp��2 �Q�(���h�}�ާ_�S��!���9S"cv:^��w�3���`)��+P��F�Z�����PA�Jj��}B��W+�Wޮ��p��k��gɷ T�H�E3�MKI<�ߎ����T2$mk�J�z8�?by懇_�pkYk "�[�h��u	�#��p����a��:��dPɓ�~��w�`t�}�`�`�x��o�HU*v%#���TJ\r��k�9��#kp�a	�|�X`cO�3h(b�c�� .�i[��R������Q!�������T�2h$b�b7$�B?��}/ԙcgs45��r���p�:��TZ��yt>bA���0e/�FGf�d�"%���p��������UI���I�Z?��ގ�=��'b	�h4E�8?ԩ��gh��O%���Lϯ�ȰH]׻ #�I�h����>+�+�&�`�)Ɍ��� ��0���e$�y�j��W$�X,��cp)2TI㽳O���=[��z�4��p=�S��M	���F!V��A$�:��Qp�l4�<���u�H�,5,K��"�`��p�Ι�8��@���Q�$�M}��4h�y�|=���f�G���P|�t*���9X�3d�����]7��1���b!��.?O�Q|�CX�h�����Zخ`�o��Y��&�t��1,L���Yv�X�_��Xʝ�i4y�m-{��.*-�M34Q+8iȉ�P��c�����ž�9�N)���O1a�Mܯ��Fr01"ˠ�(�����ۉr0���n�L���S�T�t:S�`��DQq������Vw��f�6e!j����֌R�O����}��������7����	 �)���Mo�c�l�e>CSf詉1��C��Hy�����ʔ�(%ϰW��H�}�"�T�M��M�Þ��C�����*(3�Q��p�#GSK6e��8X8��8�o=��2C�C�� .]�:��lpS��E�����j���ߘBKa`�����q���z,zi�J^ם~]c��6!��St,������a�F�5�i)���@��
H�|.�!� N%�F )b+冓��1�l��Gì� e�;vx!�]�v��Q��r!�I"�=���d����l2#��d���zf�K��J�06�T/�lg�Lo�Vc�?t�I}�[t�6R)���1�LM%a�����#���X!K�,i"�H�/�.��iY�1��=d/��d;��!��f�D�"Jt����o#s�X"K�i��u���z��b-뱠Ƒ��
�:F&�S�@Nc���/#9�O�5^����~h?�Gۻ�X���Ջ����	� :C�F�TXb�]dJ#�:��HM�2�eI����xuH�4�<���c��c��Tn�@; z�p���̟l��?�l�ȗ
�����F�Fy�V0�ZLל�>�;�hp��R	�����G�k�y�8��D�Q�z�C���سp\�`�w>HVQS���=~�mu;6��o��q���AΟSq���A��K7�F��p�nwiOq���C��������81T��9���Zn�w���Sj�F��¶F6@f��8�8��֫cS�k�`
ҡ�){8����X���H�"��1X�}B�׿���g�X�������$��R-K�n�D�t=��HHSi�a ��1��(���v�����LVg�,4!y@�j��WX�)>+4dpäh�i��Lđ�d�1�-�K���ɣ߼=Xc�QDƊ�]թ�?��S�ʶ7ظm4�CPW����)H6X*���}�mi ��fX¨GBz�:l���wr��i�Х�(��3�Q<b(Jߎ?����±Fl��h�d
��F"z,]$%Az��6w����V^���).��1�g�FuP�JK/R�LORz��3�b�Ǣf�/���z�>Y���z�K�=�����^���;_p��zNm�#�P\aXG�됡'}��|Q�E�k3k�#�bv"*jj_O�o�N��]p����Zc�[tpG+���>:��7��v�N��Xt٘mАW����?���4��[$U>��s�fJ������V���I��TkDc��!�	�zF��go;
*�4��Z�ajCe�-]ظ����n�g�Zݞ\� 3Գ�O��t�Р��=%ȴ�����'h<{�Q�����r�ZX7��O��#d��0��DM���&�����h�D���d��9��S���>�>9�&x�;�a'>� ��.�]*�9�a`ĤhҢ���7d)vk�o�M��    S{�o�L��n~M]\� 1�D��4�AJݡ|���ñ�u����#,��̘�����
��e%�N����3��/�(�t��8��g5�q6*�=l�4���%�X5��ʧZ�������5r�I{V˻�+6J����y'���U1�F��,�ˈ-h��5UR�J\���%�K���G�C��hu%�찁HA�Y-�t??Q̛*��b����U������6�O���-4���,L�����.BS���X��D�2"JS�3�R��(�fs,{�b��
]���~ٿ�E����H�y�94�9��Ig?�J���Ӆ��	G:5̩'2��P��4�5�Ѡ7�?�:�(%'`���"J:�R/ C�!�m�O7�4�ʖ�����(���9SS)�kCf�ץ���F7g􍆯!�.�"2���X;�
thh���n�Jt�q��k���Ѩ4��� QFb+:=����Z#��FK3"�4�M���5�l)��oȵ�7o���0�K?L�b��K�q��V�O��K��R��wQ����"��������Jk2HW�A,83v���Hڡ�?�Sb�t�4�a�&����ŸT�x�g��lP{���T��Mʚ�T�eBM5��&<�wkq j�s��M����ַݨ�;(�p�/R��a�����v��&�p��;���i?����]*��5P�D|�MMcǉ��j�Lmn*#Kߖ\g���pS���P0�_�!�G�4\I����n��Yc3�R���27\^������ٰ/#��?!O�\�&�gk3t���;��c=S&����T�"q?�WJͅ/�ރJ�Z,��U�C����|n�Y�Y��G&�CMhy�j� �����|7�j�S5Ֆ,2i@�L	�kY�xl\�`f��~� ��U{��{�X
�5���e%[�+?���t�����n����$��ݣO�4ʱʰY4eTb'��_�i�#Cj��4D��L��i�sl��m4�PeJ���\{86���M�y����H�?R���zMJ������	w�u��\Y9p\8���6�z<��1�TS�x\@�I"R+B����Z���ld��E��Nm`�8�-7HD�/S�Ws��E3��42�?�L�φ����/�a�Y����7p
���7�5l}7�W4�,mɫ���r2����pvu�z~}���ś뫋������f~�m3�7HM��`�3rp�������՗՘\�9,X�Ox��+�cs=�K%&���b8��aL,:����;��Z��TO3:�$:Ț���ĺ7b���������(�(�hNⅢ��QD��ܲ��b��<��;� �.�I,�Ҕ�c0��}�C��
,錗0�2GmF-ت���)�fKI��ܴۤ=�R�Nk������sƫ�y�a�.W����/pák�(��&ǃbW-B�=Џ<`�\�X�盭*�I4RtR�F��
�j�d�_��[�'��A���a;�����d�)�6N*�*�Rb�!��%�؟a���ku�Tي�Ė]0����ύ�����(�g�l=PӡP�����tG

���\]ɪl9�����lj��N�f��*[춏�[U}��	��� ;V�Z⪞ZIu�w��.5f�s�3�6Y��ـq�t2���S���ϋ~T'l��5'���jRg�d�t�>CuM��6�/����-���\��=���K��Z�{�b�LHmEl�G����@�ȡ�(���0��?﬷�F'vp����������Zk�Z�>�kH�Ɵ��	�l[kȢ�lb����>�)% �yEG,�|+�����Ȗ�f*�V=��w���M�f�ؠ�k�����	�9��2��ѭ CT���ι��k�4��}����z���;�=�h?��LC	ͭ�U[����@o����H�xk��"n;}IIo�a�! �}/CI71��
ֹ�=��s������!h9C�s4�0���7�.Kr�H��:�+|�^T�^fֻ`���l��dfϔ�H���3�l�p�G8�I��,�b~`v��E.Jz7rw�c��P5�f�讹}K$K��IU`�BG��3/�~�U�'�Qq��vW��|��p�,����
�pj[�0���(b�9�V�3�\�h>�����lw����m"j{��}��gS+��i#�8�'k�,"�����=ҁ܌'kpZ�"��8��Z?;x-� �*�
����r�
�����	y'��x!Ǘ�旻?�!x{�_V�4Ph��IUc  �����P�q�j���q�)c���e�>d�N�d�C��{x �5
��K�K r�O� U.���Q���!�k����l��NItq���5
|)n�/w��e��rA���2�Rz���g�>:����/���ź�F�4�����\c��Pm*]e�L֮kj8��o�52/�"�K�Y.*���6��x)(���h�q�q�wc������a[�x�:H�~Y�'�B)�t%�@�rQ���� 2c�<s�>���������8�9"�{��"ؠ	7�H�h��oU5�Ck��� ��\Of�*�xI�P��F�����ֆ�F��'.���um[��E��7T㔂�~/R��ɖ�$P�:fi8۾';�7ۛݵbUwm�lX�`FM���mȥk8';Q|��{H��⧼�ĵ5�a�!4Ǜ����I�gL�oK��V>A�0����
���R^L�x)���W����?�.��K�喺e6-�d#%���!��Ƶ�������/�\�O/
�Rgj��L���?�t��ǒU�Q;�衹���!��l����m���)�n:Y#W�*s��(�'�Q/�<)o�b
�d�=o�8��p���*�sQ��@���- f��\��%\_�J��X �&�>V�85��U�*�L������*ݎ/3�
����l�Y�&_���mS��8[ſqC����7����o��x�#��ţ�lq�ae�7����5z��4��wc�\�ϛU|��5H=[m��\�����K�������ģ�d<�#�z�fk�z�p�6���������F����}���=�8�(�x�X(�A�ƪf����ߙV���;�SSk��$j?b=~z�:���j�Zd��r'\�F4����Yo��m�G��ލ�:o�"�;��]O���`��=�3 ������'��	4��%�2Ff�B�
Ю�*lyT��2��u��ۦRIV���|r^�n�%m�s�V�<&Yù���͵����8A��JW?c� �l�Z_;�v�w��]6����s���J�Ӓ��;z��a�j��ˢU��yS+�)��5ű��P<��M17�,Q`����>����;ջt��㘿�c���W���)��GV����T��P���5&<!*¹��
�q~2`|���Ek���2Zƅ?R7��l�����H�T�c��<C�mj4��Yl|�����Y��»�B�Dԓ�Ѣ�A���6��C�E.2��֪�`jZ�h��L�@ނ8��nM.��C����=�Dq��� ��WE3:�@L���lj�@���8>�}s��GODK����@䉙�٥T�����Nk�z掬� J�z}+z(y��J���ʍ�
����(�7���z�C�6��Eqw
��������p�¬O�Lx�u�֋���@cKPA����YB�N��SjX<K
U
���{Q�n����)�Gn#�'�1�~'O-N�����x���s�627��Q�](S���8���3ʢ�0�����N��� w|�����N!����QA�����G\�0�SS95��`F���x�F$?Y��e=���{z�4�i�o��z��ԍ^>S�=�^���5�]��~�O�O�b��
�H?5��M��4�1�z[zx/J��s��./�3�g^��f4<��������(�cۋ�~Y4�u}7G�R]����]��/ʾ�#���Xߝ<��5�\K�V�����f,΋���K<�^�<�ٗ]��P#��fLA�!�-AS�ү�nj����xqPLn��j�9
��F�#̕TV����f�鰾(3C�CGA�x!����    ����o���GO�wb�Qhn�K�+�!7(L�[/xN}����LL��JA������B#Y���h�&,^�8�g��o�<����J̵̘�Q�L4o�,�pg0�h���J�(Xv0O?'>���=Ȟ�<:�jO�S	}�`HUr���M4���[�iZyt���ƜI��5����q"=8�qw��)��bX��ԏ#~��ٝo��$5_�R<���3|L���a�VD��G�a��@}[#��I���,w��+�|[c
̢ф�T>P)>�j���S���!�?�ZC=O�
N�+�+���ރp��"��m����d�M��˙�r�� ��r��bRY"���r5�<u��|u"Q�P�b�j%RS�T#��(���ײӦoky��z��V�;�ڷ5�<��\hc����Ms�$���6�	�5�������/���/N�7z�p�8/�l�㙍�z�pC�-;<�7BN�&��.1K�"�**���]��W�X�ՠV�vΆ7
m)�^�0���	Ѻ�
nd/���N\�^��1�4ߓF!�����猃c泳;�q=�ywF$�+pq�Y�;�Z9Ȏ4�09�?��*�tep4̋��`��!�>y������
�R_F����๓*�0&�[��|=�ęTƊ���M^K���F/CDIL53������r��k�2�l�x"���/c?I�6SA�xv ��LO���'W��j���6+c�$�//�BrВ�ڑ+˦� 
�D�f-�}�I���6��d%	�/c3��X嚋�y���SS��%�ːL7c�d"c����;�T�"�A/w�kg%��sN+;י�6����1W���QT�`Nዸ��|��SV��z��?��)���Fav��%j�i��)ly\�;��9��*���)l������zIfza�y���K������ج^]��ҽ佂^�lRN� u�tz��
u!�g�����
sT�.�:�h$�'��^^�J�{����o�齂�nz�n�T���^�#'��Uě�/�˜��{�G�eW4��*�\LA�'zNv���1_�m�p�`�i;��n���5�P-W��J*8Qt����Q�3�p"N�_��W��c�m�('�6_)����hA���;�`K���Ah'Y}�Q����ș�cA.W���s���sU��B���L~�gL܍"v�_�5�ZC,&�O� m�ߔ7l�1���2�0#W��%�ǎ�O��<��Iu5�Z��$�b�w˛��""�L-�Ƴ)��^7��xW��9(:.�J5���־S�"vbI )#�
$�\�F|�0F�_+�J*	������w
st	v��H5Bb��A��r
|D�(�HP0R������;�<r�ub�r�'u�v
y>�'�p����)�Q_*nEL��į#�.��Ц�ԉ���� ^�׉Қ(��E�S��-�.k���)�up�rj(gW��XGw ��A�H$���r��5��!��5(�l��f}����ۉK�/ds�����%�O��ζ<���P��b���&{j�b5�Єz�Ḟ�W�����'x��;���f�W.��`:|��B^Re�5�R�e�e�zn��������P#-J�K H�â���ݯ��U���mH�l�ޑA����P�Q�pd�qP�G�u<�5C_1���aV��J#��{�����
7r��&CJk��b�G�(y$KE
�T�b���ü�#��fY��Aa�B�F<؃\��׻�]�<ɱ4�k�=DQ��K�"q�;���H��8B�P	Z{�A���U��i�b6�QP%����܏�_����2V`�Sjz���=�U0��6��1,����MB���c^IP��Y�ȁ�5�)L 2W8��H�k ]ዸ|h�^��D��,>@>��Q�O�z���ǝdk�ӤPR�0*9��Y��#����p*����|q�n%?aC[C�QkY�/a0���os�Y߮�Ҟ\G�AК��Vt��r�0�K��?/�r��ƥ��E�ױ)�*��.���u��l��𝒧�����z]�Q��F�K����b:m�Ի��2v{�rs��x}|���.�8B[�1�Ə��'C�Va��l��?��/�
����㢅�,>��LTA����Vw�I��"�!�tp�N=�Q��t������4
`D8��ݦhD\����b<��ʂF, ���L��߂x�?}�Q ��۞�_j���SQu��Aݾ��ݐ� !��<r�Y�����)u�����3�G�RG���x�S��;�F d��)��&����_�*�`jt�<Z�2�t[�7�7��%:(L�<����Nu���41p����B���_��!��5P7�D��2�l�yiB�5P��Ck[>��ެ?ﶇzW��>���F�b���*���:N�> �G�V���RP���7�a�+h�&�8}Q���B�4J�G��yٓ(�B�U��BkGEQ27���kQH����،Ë8X��\��W���쮢zYd��x����a"�;� �'�K9�l�{6��G����� G*t�AFO�ۨ{���4����*����)�?���ʻ*ꁀ���,!q2����G&�p�sf|���o:�pHK�����;8��F�$��)1h��r���U0��я��8��U�U�DPn�Ȅ'֡�}�TkbO{����G9�A�!f"�"E>n�[����)�b � ��89�yՓ2n�p<�Y������z9��ӛ�l/n���
��'�g�����<��bV�Y�F�o��j-4��;H�
��J/^!O@�y��vښ�
��쌌�>��=x�H"YϢ��DL�+j�W��D��0��پu�z���0��q�/�������_'��(6���8ĳU_���D������!Ԑ6�n\��u7�N[-g�u�85�e�7r@�yLi�	'�PC�P�ܖ#ཛR7C�B��O��%���ͰȇP�l����?ÆB� ז���7RB���z�x �ݨ/��^���)��7d�HZ<�Fu�j�'"�N��8����j��=v����Bz�~�)T隻���~G�A��⸕�9@u
��8�8�^�CS���ӡ%��0P&�/��@��dOv
��;�S�漢�x��ξ�nQ3;����yOg.�㝨���϶���)�S���|��G��׫%�`gW��ي��)���)�N�V6��N��8jGg@��+��m�#Vw|��OF�l�8�	=#)U��ƽ%���a\���<�;N2 q��D��J���H�����ȨC_�K}W�]���B݁)ͿPXoK�K��ݐ)����//�4�Bg�,��打8����ET��ߖ� C_��L�}�\�n����N;�U �^�f�}�P5�#�d��PS}�r�ʴ���"5����r�\/�����	���R�X½ ڛ�8;w�Q��y��aN���ҫ⩙*�뤑��ړ�UQ<�5����B�z-���zP���d��K�|�c$�Dm�M�����|8�Ff �(H� `Ѓ� @�e�I�����m��:��������������N4!g	�|O+��'X�n�)6��<�깫|P��-!g�V6g
�NW!#������6ڇA���O=gp��O.�������h�9����o���r� �p����,Аk�}�_�~+�a�(�S��n$p�=!J������5
�����
f���߮���A�U��ld���R5�ד�'OU]z�� M�2��?��'�����55BS��D��5��ɮ���(�̶2��4}E����xMa4���_�en,mNצ�e�ҟ<[~��n��E�������*���Q�GtV3�D�f��`D.>���}G%����L�O`Dǁ��\e]�J��ma�Q�ֵ̑
�Ħ���l}������ox��q�d}�av5h-�RqXӥ��˛�Jg�V!�-;?�@җ���.��V���pl�Nݦ��՝|X'� �����(�:ln�0Tف;>RHu�����0��������F=����]O�S���|?��mTw������_�s��3�`h��    ��F!�2�8�B��F0
�dV��E 3_�gn/�d
\J�?��
=37{g�e֍��O~��k~ϯ��u�fe��?��6ً?ƧR��~;DTN
��s���C�Ar�Cg�)qp���O~�F�����P��B+��An?��f�*8S\�	����YW���)aH�4`���f���J���� 0�����Fsa��{Y;�ى&�����_m[|3m��:9m�l|��.7�[�*h�C'c�'/����h_$�9�J
���0pF�����_�F�'�E�:��71��C��(G�l;�4I_��5�١��n�e�2�����es5�QKۍ�q ���f�Y��Sׂ��~p���Z�(emn
J�b��
���k��k�6�%^~��[���F-�3Z�N;N.���a���9w�6������=�ߌ�Oq��~W-D����_#�*D=UK�.�E&����Q,��nr�!@&)X��)%~(�W���#�"e���,y�|�{Vh҂.�5���\�c���{O�[��� ���%;�� ������~<�kAy�1��9� (�.��ڌ�
���h�Z�:�BgH�|����a�%�}��h����*�^!6P��8U����־g�^
 ��˨�:j�;��p������r-sK�;$�IA08�Hޱ�3

�]jl������pj�*�^hr%�RȦ���T��!��E����s�z�8󓇌s$s4�f�qi�G&���Sc��%�e_�]��8j�qS$2<z{x���ď�H5��i��F�C4����҈�ﵥC�U�\���A����P�j]N�	���X��r?�Y�u�V�ϝ �?��̍�k�����5q������%ؙZ%7��	Ƒ��=����jAߏ�X�j��Y䒮�L�eM�^,W�����z��y-g�w5K=[�ۥ(�|���"5�<�]pC�\�Ff*�8 �=�wt,55�+���)j�̩��-�&{�-��pr��Z�S`�&&VΞDNWqaS��>�2%��j�hj��'eCʻ�Z��o�^A6��Y�0��C_�R��hOCCѿ� ќ��+���v,�r���&�K)�Tv�1:p�!ظ�*�j).�u�S	����BJauH�2��)ƹ]~.��װ%�8Z�W*ZS���QI��a#G:��B5�l,^z"DU����I5�(w;�2�^o�GB�T�n�ćr�jwډ�������Sʶ �j�:|y�R��7�:���P���k���]
�U�-*JK<�kh����*H��������*G]��0�cs�2�Eś��s7�HF����opc��d"J�J!����5�TT���\V�����!dzY/�)���B=�L�b�P����.�з��f�����F� O�oFu�Mn�B��;��.C�	�άrߨ-�z��K4����o�4��w��WϏ����=Lj)��f�:]�F���e��5���}��P�`M�t�(�}*�c}�O�rM�ׅ:f��$���ou��jj��q���`�E�7
�ĺn�a�rN-�*�rǷ��\�DY��B+����'2>vt�hǳ-��|![�Wt@k��8���%��w�*��odɭ�q�6����>){ ���/Ջv2>i$|�~_TH��B0��Z�R�(�����)�2J�,�	�<=k��[�M����,��������xD.���L���Vmj�E�@ŧ��i�܄��t�"��kOoj�Zd�5b� �z��m]ԛ��Z��q=	���q5R��T����lL���Kj4�J����~���/e�Koj��n?^?�t�D8zN�{S��\f�fw�l�SUl���԰�T�8�J�ξkf�F����&��p<z�!�q�R�$U��gà�PQJa��B�^�o���L�z�V�O�Ӗ}�>�����f}����Y�}z7��X��}?�
�^h�8�����Cs�H��*�ۜ�?^-��qo�^!�-'�K4�:���U�#N{ �b*�Y�{�6EG�M8k�	�͙��U���2[���p���E�I�;�[���#��ݔ�mz���Gƛ��?�\=�r�yi��Vm��i�
6�'�u|���yC��oןn7�x�s-j���<��t�\"N�/ѓ<�/?�S�J��ybE�����hwuu9�Ijw��b�ۃj\r)��]����m��)x�f���Qr�0����9d�e\+d��2�w5���%q���)��]2���j`':{�4�`y�k�^�Řj '�z'��sGV�\���k�xM�Q�'K�{WLXC�f�\�F\�A�Z�N� ]}q�6A�\����)ߏq�3Vғ���y�ͯ����(tĉ&�M��=7��"�Lf�����N���y��:���
�ā&�%�9��'�e��Ыp���L8��k��m��+`;
��'�]��.h��MQ4m�B���/Ua �<�ьY������\.��T���H<W��\mn7�Ƭ�m�K��[�*c�MVy+�>?W��ޫ�AM+��f���#r]V�>�������靿�C�}P��D�/�����5\.�p��"�A��z��woP���<��,0P����PaV�g���p�P��y���b�Z�E��x�$G��tX_�oN܋J����AS*ڗ^��<�3K�*�R"�s��}�U��ӣl��0���fW\�*"���![�����/���ŋC<�7�6�SQ��r�����ܖg��rK6���;�W�8O���g��2��6�~=~�h�>�^��<����(!��B4)J����:�TT�S5R/^�8庰;���)�9�(L��؜�"u`A�\M`���{��`�z,r�e6��n�x��]�/�Q����������y�D6�}�T�q\�\R�4л}�٤��M�mLa��Ǿ�\�7݁j�r��梕L��K1	���#�T��d��%U�8dm�ӎ!���x���s!�p�Q-�XA��+z"����n��+t҃��s������Z�^��@6b���[E{I��(l2�2p��K�m����K�@����*4�D�nlu	M�0���WQ���>�цD^��4Z�i������5u���U��c2�i���s_��Ց
�A�g_X�����O�UĮ����<j �wY\�U$��P�"7ϐ�ϗW���x_�H��d+O��k���y��?�Dm]�k�-�����6�ހ�������[�{�U���Av3���+��y��2���
�D'uH ̜�O
x�ـ�v�|w��j��T=��:��Kd��I�r�	��r�uh��P������m8:�zN�?&^�}�
bh�ȣ���v�oW	�B_:�8B̨�3�!oh�z��+JL]17?D*(��ޠʬU͎J��ǅ8L���F C�`H�!{���y��?^�C��8P7��e������[�VAu��a�9�x�E5�
��Ֆ�o�O�E�kQ����eȴ����1�T ��p�V!���S4�5� !����<[n�K�@��,tոn�я��&Wυj�-��8}D����2�o�_oo��֘�~|��SԚJ�,jP�-Q�qg�@es̆<�r=�5��<�=Y���hI�v��+|WC[C�%f�N���מ��yǝ�F���0f�~61���0^������`˩g)�I_��Ζ��6{�Jk,�@;�}��9�tn��ӭE�{A�ə���RH�BɖK���)*f�pm��lء����s���d
�ֱ�񂴳hX�z
˺��`j-��(s�K�� �R��,�G;��D���7ü*h�a���g�jn��7�(����I�e��)�槆U�>>�n���9��6ķt�����7����zE��f�
�G�8^A������ctz@�mn�v�n�/r�zr���t�j��\�B8�7�3E]RU�S��S�炄�,���OM��]#Qq ���C��W�h�ߣI��:�1A �'�b���9�yJ�l�}�����╀�Zŭf�;*C��'N�8g�^;u
ԉK$;��7W}p
�d:N ߧ���k*]�|U�}�8�w�S8�:q���3�J<���ͿN    �p�:Q����/����J�>+��9P�\+��*����ZZs4�ˎ��o�W��Y>8�RtRS@�I90�bU ��j�8%>,�~�)_B��Ԛ����'��[��j�b^=��5�yɯ�??�+h�|W��*�E��}(��` }��O���by���W��n���ޒ(!�@ѣ���Kn9Ua+�BH/�0�T(5��xf���X�*FE:�ڒ�0�bl��P( JE���n��~Yߠ���s�/���@|(V;�۴����
I�6�/��'��'�墝U�8w�f��n5�)��&���t�*���LNq�vrV��b=P����F�7��1X�c.(�Rk���H��X����.�*͸\�ɻ���-��r
���$�Ļ/�}P��Ӱrd�&k�;���p�����Ʃ���ŗ��f��b{D��)=�<^_Ƿ9�);�kʛ;���k�1b� �b�)���_�o秣�K����䝬a�[*���< �N�0�5�B+Ձ�^4�P���V|�����)�Y��ĝ��"jW�o]Ԗ�-ICHx����t>��� F�<{��`�j�>���Q�G$��?o�����]���4:�5c�(<KEsP�jp�5�;ub����a�̗�}�-}�j�T�oz��-�b5%?�:����6E�L����X[�RQ�ю��>�8Y�1��]�,R���UOr�����jXm>��W_���Ѹ��o���B�Ư��"��]?�εԨ5�r��,�n~�zb�k�F-��C8��aݺ��,�#�9���s�}Z���\l�v ��&=�9l&�r��.q�U0W���,%|�8���e�
��v��~�ͮ�B�#�gM�T�Vg��¥'�
�B��^������U<esK~P��>�`0���B^}�L9
����T�-��=X������,�Q����MD�	a�BgOEvb|�wb�
��^���|�+����2�aN;�ǩ�t���H�oNqr�	�WNux��o�.ߗ�[I�����B��J]�?/�Tu����b�BR���<7�GU�ijGUî�)w�m8�����Q��b���PGgQ���������B���.�(X�Ըfd� ����B?���Q��*W8p<|�ta�=�s��6��: _e�3}�E=5D-u'�l��������]��R�FŇ(&� L>a*�e�?T��Q������?f�T��Z�Wy���.�5�f���M�pXr��L����86C#����'U�H�����hE����f�V�Z��ڭ
�5����� c��[U	j��q��Ȱ{�d��Pc�O�Tc��?U���D^R	O�e����r�5Va[ǡm0Z��]ޖ25]O9c��e�4.����+��GM5 ��+L��G���*���5�eDa���i��\"�5�۩)���*��E1�T� pH��nS�q.�`���F<P"���s�F%�������tL�)3��Q���SjI�AUpV�g�D^+@Q?���lV����jy��*x5 /Ā#�eA�"���g��\)�ӂ�-o�8�5W�U��
"��b�d���4�������8��h�D��J��w�+x���غK�2U��tP�4�Z���n���U4j`����6e.k�,��Qv�ڔ�|�B%��� �$�r|�8,��U������8���?���Qw�x�K���v�� �����=
����^�5����b�X�Cb�4\���,!�O���_�m{S�S��S�7Y?�.W� أ ^�8��������mq:�;���P�h�r����͢���
|]�Nց8��+-��G1�;����&0?F��z� A4�?mVK�(��_� �SP$&q���Rq���s^��(��H.:����y\��1j�CP��EE
���ar��:����j`���nq��b 5[J�����nTwD\��/�Ũ�� Rl�mdAޘ��yd���z��]Ƿ�E񰉺kx��$����1�����rGbP3 �k�5Z�e����\��FjJ���{Y^�V���`�ՔZ�s��S|P�E��H�A�Gz�N�����m���a�y=�b��5>�;Ӝ��p��#w#��ᩦ2�W��)���m�"~�/��pi�Q�UA�Ȟ�	��ʥj�(\R����6���/�E��(��g�?�@P ���N��P
k���>�F�:Y䅠#�_�T7���O;���*��C�k��'��a�)��u��K���f�
��]H�g��B'�{���>W�y�J!4��c���K2ɽ�+\���Mv.�:��p5�{i�����3<�`5d�6^��{ߠ���&���f�]�_CL�^��Ke0�ۘ�S����	���b.V��h�t������HP|ʓ���B�\��%����q`U�FLW�P���3c���������u�?
���닺�lTh�w�����QR!5���f��q�O�C�S�
ԵP�8�h�?
E�iz�.uQ�}g#X��s�0�Qg�NT�U-�{�*bV�v� FT{QJ�
�����OgX6���X�9r���(��Έ�.ִ�O���é��"��'�2H�+��kԡ �W\����ƙ�O�Gs���j���>���g��asET5������,f��I"y*Ϯ��݇��ꦁ�G�������5-�c�!�Z�Xf��b�uAC�fG�<bAƉgJ��<�xvtӌ�?rH�������ѲD9�vy3Y�Rd��k4�Hw m��D����{"ƪ��X]U�3Q_qp�x����q��O�ƹ����Ꟑ����F-�.��ϗui
5�S!�	c��j�\��Ġ�M,z�e���h������?,��0��v 7�����/���K��H�R�e�m�����pA�;y��]���2S`�+W�	A�X����#�I�ﾬK>��Wܧ|6:� �^�vW8!s�v�({��"�)�;�r9�׀jIy�Aq�z&W����9��<|��ibP�JI�3_�mP��_��:����ų�"_,*Rȥ.}�r�GEo��3+�����������������V�����u	'�6[����,^����k�e�V���~P����\��pGIFV����&�+�RS_��Dz�E�Y|��XT����5�`T�R7;;�>�zV׎o��!)\�D��Ii�VLֈ~�Ӷ
���g\�	m�cS��~j���Mi�]-��Reh~�2f~�
�z����������ҫ�$Ӛ������n�+���]���1�!�j�A�ɮ l�v��iij؃�{��K�9�Q�F7�ӆ�``|��5���]X�1H�|-0ֺf��8Z��]�ɸ��5�S��pSY���X��K4�8��pTGk-w3�*^�:������X{��TE ^e-]���Q	�	la�����z9�~�!�):�ꒈ�W�i��U�)OE܁kM��8_�Uׇҋժ�HU�i`�zP.λ�r=
�k#�����j���R��p^~��E��-�i��>w�`Vb>q�eb�evufɹ8�숙��eP�L5n�q="JN��;�d*�'Z��D;e8<��B3?�T���,�O͇�f!���O�����e}o������a�� [����N�`�Mi���/��V��\�2���5F�ޞ*������|�Q��`~����ߡJo���
�s�#�_�?�����ޢ�#����Q,��5\crhA4�����.Ozh�8:P:��G1�k�����*�bI�-9��O���䋝U�k%�ْ+��L���,�_I	�<�hw܃)��f¡����<j��z@Dd`�H'�͍��%}��E�W��rISK��w���qv��3F1����%=A��n�����˽-�bI�u�Z`T�V;kO^|�D���e�j��_�8M֚"}�F!���i�7	"�B��Qе��I.5�J=s7�W走�C����N����|��ҳ�ći'��6(�:"��;�wSuA��J�Z*�������}M��    Q�۳��T3�M�¬���I>ã����hr��
�����q�翳��ѳ����`e�~֠�J1��a�e��u,B?�{�?|$�"Gl�
�ԧ��bŮP\���f_Q�3��3b>ƥ9��k���������&��ƫ�P��\F /bT�C�B��/��
�A�1�w�#q���A�SP'?�v�2����}���vJ���}'>��Bz�V
'@�X}���(��ɢ`$tx��w�O��w��a}˝'��m�kS�<O�����ϓK+�����=gM��XJ���3���	'����A��~qJ��7o�L���(�kj�مU��n�Ȩ��I�k;��
I0(���9��5TS��k�St�LXQ��g$���j���������p��^&0d:fgPC�AѮ�u�L%d�}�Ad7�)b�\�}�bQ�U8���-�켈��[�I<��F��b9�����A�tn�Iؘ힋�@D6Q۽�1�Hn<?��Q0ȉ^`M�g��y�i�� D*Q8���u�f���P��}Jp}��E�Ã�����`H�
�@�s[ԶE5
~�<��-�[��������A���/��6s��c�i�z�g��Q�d��'��-q҈�{VP�D~�
�D8�p9&H��3�o�
��^O���ox�DV�غ4�r{z�2�̹0���[n�ßo�Gs�PC-��SG���2���@�ij0#���xvد�#@��)
�x6�N�������Fm��A�(��&
��EF�����A6�=LS#��4���$Y�s[�45P%=w2#
���\���8�ԠE&E3�K��q�ׅ}� c*��`E'��8V�3jg�Xc���y�g�7�tM��K��#~��c:��U�M�N�texDr׿,^/?W��r�q�l�*�?��V!�����c�kVGp�P��c�`k�=G�+T�b{��� h���6�#&GT[C�R7H�E��q��[<�)��5�Zo���6>^Sך��mq�5�-x6�����G�h�a�B���%���(��q�n�U�QG�gKN��_+�f�fz��EHŘ�Q.E����86���j�����(X�y,s�25Fm��p*2X�7�``�,�����f
T��u`������z�~X!�Q��@��H���YƳ�Ca��I�_�,N%��@F�)m+�'�U"7%#�Z�F�҅{/ph3D��Y���\Ta͓o�k�@�X���-t���£jY�H��#S��p�+i/�����*���"U~��@�8�v����L����	��|Q��d����y�QD'���M!U������/1P&NF��ek|��֟��V����r	�6�R#��J�(�$ޗ�al�TG�!���q֯.a�F����ad�Kݗ*G��5h�|;>��(E��T���z�r��'r�NI[��3��$<��v5^S�!�����m�ШE���AZ#���hȨʥL)�;��i�ԇ�}N�%T-��q~ ���ٖׄS��D`&ӥ��&N�
A\'c0dz�59?�U �Q���R����!�bW)����"2�mb�X�V�s��k)��Av_U��S��V��2V��S��ŭ��q&��F�����³�6�/Jڳ��}1��KK��8kO��4'+.�������X����~g��Q�È��[�_RB_�H���?0#���r�0���.'J�&1F�@.��'�1���$e��,��h��$Sg�q��mB=�u�ȣ�� N�|�T
u�nl!�����xE6_���v]>Uh*� 8�h�9�b��+��
}
�I��IR�BRQ-V�-6$�����Oc�Q�(GNh��x��S$���b5�<��8� T���x�LH~å� t0��3�bI��ݤ�\�Y@S�tڋQ���J��o��W�Oj5D�3�)xD�҈of�*d��7{��#���Bֻ.WPB�qk+���a��ؿ�o�*@DB���
���xd�Μ��Z���.� ?a���v���b�NK�Δ]`#<��X�{_�q�]�#S�~,��X�4t�>��v}]SU܇��H�1_f���`WR*L�=�A,���8��j�p�,?�ﵺ�t�Lbz�c��yw�*N�*�c���3��48�T�����M��c�����h�q���z��Q��jܡ�܏�J}CU�Ɩe���������#�4ʾ��.b$al�U!��j����k4~CYm�cwG�ԃ����7�-G�y�~Cm�Z��Ƃ����2�¾J�Go�=y��Ym	�o#��y!�K7��8���r_Y���'�O��������!� ��Z�bP{��}�#��gf�Ab}bW6��M�/�WŠ�S?7�ۨ\��'�+͠@M�+�ܞ����=��键 ΤލE���/	�I*�����cOoY�D��B��z�0�	D`�����O���BP<O��%�Q�6
XD������!����t�m�}�X���c'W�Vޫx��*�*D9��?���Wi\��6ے��65LM���(5�u\=����גmj�R�t���uV���	u5tM�}��9WfdJ�cb�Bq�nz��@�)���r�C��ƽiSwY�TX��ڦ�}C�.�Pf<[�^'�ao��]/N�!��^�ήƶ5�M��9��TA�mk8��l���+�tf� ����z�|V�f.�ţ�R)_�V���y3�S�M̎F�����<��u��Zy��m>-=HR��(.�8_.� H��� k��8�I�*+�X?���w�-��ov�%��m �.���\���%�P�����YY�MN9��Q��`$�VVqx��5
���w������x��R
�T��ĩT�$�5�Q��b���yT�O���?0΋�+����B��:z	�1�*����]��F!�B��46 ���&���!��Nb=���ɵ�,�X�7Kf�|i�/`�!��b�e�̚|Q�t{FmD�t�j���Bu���/�#�1�H�Kk�	�x�|����Cem6K{n��Q���}�srb�����C�%^���Oz�o^�Ơ��M���ǲJ!�nG�W�]GèS�K��)1]����ZjD:"�����%���Td�*�Q�3���NƑ7g�_�	U�tOGM��8�(-�x�?a����Y�r��e:�����&���k�F���P;�l�=�)r5r������b ��;d]�Y8�l���M�N���#�� Mū���h�\~Ԟ����Ӯ�ʹ�F,z�7�^����9�jxz2b��_�s�!|ƽi]�R�����2�Ӻ�Q(�m]+#�'����\25&}��	2wi�{�+�X<Of������D2pr�k�R8/�=�R���z�+ʚ�Ef ?��X�:4>(
q�/�z�6q͑$'S������\I!��]<�s9�'G�iņt�>��Y�y0
�u|p9"��z��R$_X��DN�V�q��OQ�j����ۑ@e�T����BE��+5"��F�	e[�`�n����q�/���K*ХMr�r�f�Aa�H�q��v�iW�IlP����o�Y�o��1��/R�!��ŎD�����
��Lv���
٠��r�xe�8��m�����<��-F��S$Z��cK�\<hq_�7��.�Ps��>�&�у���H>z�|Q~�^��j�S���HV.��'b�I���\N����E<��	?6��4���D��ǤP�K�Z
�v��"4B%-�ϛ�T�#?I� �N~2����<$���y"�������>i|�������X�����>S����E��(��h�l,��pv�&�3U(����eG�?�gyT���n1�r���v
�6�׊�.+�� ����/ń���@|��@��+�QA� �0o��B e��J����{��b�\R���rpԂ&����T�s�����}���t��{�Wx�x�q^!�P�_���h�B&�������1-s�c(�RL����&��fG�PJU%�m!�ϝ���i@���|�ĽP���.�^��[����ScP��R�:�1|�]�
���b}�=q��݋�L�    �)�1:�RY�wl�T%x����؀�>>|�/�
�h�x�d���M�;v�.��A������oqd%�8X[���(��i���q����&
/þ�ZV+��9P��eK<ۖY�vP`ț1�zw,��P�Qt/}e���S��w��5��d�S$�0�i�L�g`���on��"o�5FKc1�8Y�w��8��ZOOs���<������f�5���#�ɇ6�ʼV�ɡ"��{�0?����v]0h��?��b���]-9P#l�ڥX˛�/��M��z-��%��Е���,t>s1�Akk�GN�ovɗ�喈��>3�*�O��$�Ė�hj $��l���o�ɷ����{����jo�v+��am�!�y��{�~>�[�Tb8��bd`��q�&�j��L�D*�����O��E��YͿF[#ֶ�7ʺ�=$!p�$��M��Fl���gJJ�!2Jb�����̵5^��čL��ɑ⠇�m����Q���tq��) y)��юZ�c��][�����|��x@�Z����	3���kg�ە1��Q�5�5r=�'sS��evFa��\����o�ũ�[�vF���&�8(�I&䌂8�?y6d�<��tm�˔|<��cJ!��\a����+�R�T� #�I~=�WxZ�
���"������8f�V��&����)0�&�(�N$��:_ECq5�<ߖ�Z�(L�qrj���Z m򷪳
��>��ӪM}�t��YؔYͷ?�"/��_���UH��j˯PD�]ƙ���Bb5+����)�\�37һ���b�
�Tvn�<��,>��F�����#U�9�=���%?��a��0����Z\�zT��I��m#�R����ۯ�;������B�@�� djZx�[.�`6�Fղ؜��ZQQ3��-Z1e:��9�����O�Ԁ�3�d}���H2����՘t) ăKm������|5]JGܦ���'b�x�Z9���HD���Q�~�������Nu����FJ^�$B�����O7����*�����a��C���t ���[�n��@��o��"r5L��=����G�װ�P�9WC2
�� '0�����e�}v����2y��^���\�od�j4&�~��ڋ��oP��r��S�5 Q �N�q���}��<;��
|��gLKa��������:��g�4;-�9&�"����%�E��4"jN~D�C�r�
o�h�dG ���Y�������o�ir�i��iu�o���#]Zg��b�
eԧ�s0d���;�i�*�B�W8���r2�0/�`�;��p�D�[��+�9j)���]�����9B	�@�GM���I�j.�V�x������ѣ]!-�F�>�ފWj����e�q3N��ř��"Q��%�ǉb�K<^<w����N��
.�ze�&i�h("��I�9"���g��P�����a�z���o�2���P���\�*L��0..�2�� ��/O����>��H�Ib�,
ߏ�=u�,��]W#��@B*�����nm
�4�b�Vu��<WlϾ�6UgEkvW6��^z|�r�y���EΙ� ��I"� B��~����@	�cԎPDB9yH�3��2{l��r͋�$�)���0��:�8K��l�ElW$Oo���.�EWp����p8�p�BYz@"ױܛ"��:3������A����,Ov����\�O���Ʌ�(=l<�"h��7�w��B%�:
�a'�A����˥,#/I.��b��z?�B�W��P���F�l�K-��Z.����O:�.�<H�ȥ��F��8`R{7s�NKǣӋ'&��]��n-C%���� ��]�U�P�eh$���뎰�bS4�se,$IE�x46������c6�U�(#!I�;&ƀ"p��2w�
^���88�������&�{*@h_4�v���Oo,�G/���O�h\�Y��S�s>�{7}F
_��q�aI�yT~#Q�\X�F���!V��ɾ��B:e�G�F��r�����ʽ�� ��cy/�F�j�����M|��R
m%p�/t	~�p���5X�U��NMd*�Fa�����&/��ȃ�u)�Q�Q#f�@��s�H�\L�j�řa|p_Y[�Q��q�q���Շ�m�]�z�p�|~G���~��7
mT���	Z��� ����X�S0����{�D��okT����7D��.	�m������i�όGշ5�`~��ϤE]���h-��wV�@�~j���՘B�k3��&U�<ޔ>�֘k("�k.�Z�ְJ�����Ŕ�հj)I��=�qoZ�FP�d�8���R��|)c�Ur�6yNn���
_�7
@�ҊZ�� UW��35��l�sI�D0ߛ*��C�CA�w�k+�a����Lr��o�����(1������e�x��|poj�$~?)=�%
��V�b�����Y���K�4�eO���vUH�h1THر�Lu�$�~S�ڽ������W���'���b��{�Jh9|�\��5\,U��2�ԓ���F�x����������?PF@�+l���cJ�	ܮ6_�����A��FA�,&����b;�B�1��t�1�A�U,R!��>�I������D��⫆��A���=��5�,��'҅��ŋ�XZ�G5��y��E�*Y*D�����/���b��>�T&�w
;�0���r�b
;z�hl�m������SСN���I+��b�*�P�`�_y<�x�]�k�)�P�@/(���M1�Na'ehqv�I���^�
A
�9+A���7Ł�j:��3�q���������LOw��@�&o��:}O�j��_X�^������th�H�d>S� �#�A�i`x�z�x�D�AN=�N�0z�������)��>�G�W�<uv�����D!g���lw����r�0�}A��}��ā(Obз=���G��J�&:7r2o@%��]�ƒ#�r���R�����W���}�t�E�z�)l�P�<�h#���\�b5z�bW��m���j%jE���["�Bk�\��BJ���%"�3t��j 9�7��ޞLI�Hr�>��,p��[I���Pj,$ �t�<����S�)��D�b�Hzt��
5��k�,MW8��^/A!�!���L)�����L�S"W�?���q.�PDt�Ff���S�
B�j&�\Hn��ԟ<��}�A��ӊɩ��7H4z_4.�BRH��,gO��a�(5�7p?�0p2r����7�������[���\�*^(�þS�
0�X
!�#�K)�@��5� P�I����ѽeRm�7���w��T��W�W�F]��Tf�<B��BX�'I0��J�z��F��F*�@�Y��U�zv���<K���Q������L�#$�S]LS���UGPu� I����;��mU��Tw]�����}.'E�u�)����2o��@F�Ǎ�5�`�YaV*w*Tn���1q�H���
��� i����u{���^�h�'�Y�/K��}���ۤ���E�W�mO�3K��T(�+�'�f�$��$�n?K!Y#	mo��N7�f��\Zjʡ���m|9�H}�q�����
I�9�gۧ�f+�3����^9�=y�=gŘD̈́X�rK�y��מ���s��4Vz����}�W�J������ۨ�=�0L�ls6c.������ @*Fn���].�P�i��ҫi�����V��R�e�D�c�\�Q��f����b�
_x+��Z�/�3g�x�.�\ھKQU���s1�(r�350ш�!��+��UNdP>lOg�X�e't����ͪX(��T@�`��=���)Ay�S��Զ��_��rsSS��Q!܎4C`é&�鹤�Ѐ�ѲgTa�@yznƇ�g�SQ/�o<K���qAgZ��w�S�/2b�<-けC��]��Uڏ�E|�9T�k�B�	+R^s��kMB�(�jgptQ"����X���bo ����sQ&_��g�St�?��,h������a�<"z��͂�Py�{���V_u6y��-W���_��i�\���    ,��(,uԸz�3'��:ln������(��E�����,�}Q��R2��I1�.(�z�.ƫ�����f;�Eh.�0E��K&�-�i��&�����E ��m�w�n�`�j%�d����-]vHɩ<,�*��`.K��$x�,��b
V�yg�y�0)̮`�	�FUKM-���f��t(����A�ןd��$�`kL�ɱ߈��鉔�`kh�����^-
|�\_�L�5�Z��zY�ic<�T������p��-Jx�Y��i���!-*1�}ڬ
��`k���u�;k�Y\������'q)���j� '���`˒
�\J����<�@�5�4
N���}H�Xqm~���_���o[�e/��u%�PcS;j>S����y��Ce�֊�����C��5"L�w�}·�K��K1%�6ڂ�vv
:����JѶ�ڋO�p�Q{2�^u�a�1/n^��(����5��]����p<U�����'	��7r<y�8.��w7W�zzO�X����#��
;�͒�NPR�%x[��ppT1��X�����>�
6�HD�'��Ȏvu	y z��Swrvs����Ė����_���E����f����0ԥn�"=��!���%(ux�:Y&�����B�����|��.�W!( �5:�ٔ�]g�������tT�1��Z���u<�ToN%x����C�V��qI��ǻۢ�U
>�NI�k��X��k�&Kcs�/T1B���
��2
AA*�-�H�Ƴ���|*γ�p�6����f�d&�)H��Ζ
�w������)DQd���2�\�O�7�޽)~M*unf'�ΗQ
f+XH�3:WP���G��=��d���KWC�Zt�����?[�����Ӂ���'5�h�W�K#R&I��6.RoCW�
D�V:"����_�.K�:����Y��5�
]�&z[��~�����ŐM�ʢ'?\_��N���@����_�׻�|��ט2�cl�X��7]q�Q�נ3�zʣ�KFT���r
k�nA��>�^��K�^��[�.tr�U	�W�K��?�(���$0?Cz�=�lA�����	j��+Z���I�檴Y�)+���I�@%A�t�F���pY�]�0���w��,��
��0(�}�p 4QtfN��àG]��(��ϗ_��R��@3J&�vn�SeP�"J��A��-�^*LQIX�l�^'!�A!�OL�2Tw�b��$�K���{rPh���=�O��	٠`D�9�P�>d��miu
J��1Z}J�q����C�!d���A.���L�Fȡ3c�Ѧ�n�{WE;���1R7{[r~onĶJ�]�����M�`��h�>M��55���7��]�jM�p�uM%�wģۈ�tUJ��XB
��`f���wM�"����	�?���F��wG�l4m]|Ec��Jj<��c�i�Ɣ�>�
M��l�D�L�u��ߵ
M���Zu~5���<�ԟ&ץ Fl�ܟ�h�tmL�*HŠe���K��nrQ)C�ң���w�+n�j�"jA��ڬ�K����Å�"4*�藞��.�׉��'��K \��n�0����+�Yj��el�������R���%V��Y��$c{�\�hܟ�_��	ft�kn��ȱ��IS��Ny�AENF L�2�:�(����Ҳ\;���)Oy���R�N��-�]�8�$Iw_���QyS��I����)�%�ie��S#h�F9ȑhڎ�K 9���w��LS7�.��ymV�4n��-X;���/y�}���p�w�#n��ϰ�ЉG��L�K)G�vpQ!r��G��C<�x����嘬�`�*\�r�[j,a8?�D^�N���@=��qL��� ��#��z�%G�SIAI�x��F��E�d
YĢ,9�N��S�S.�D�"���!B�ӛ�=xP�P�ȑ��M#��D���3P\��PL[y͑�ڎIv�0mA�\�7�@���Q�̎��.���]S;�:i�0��gb�R_9O;�<w�'��{��_�ʁ�:w�A*4����~�l��鯼��f����&�ݾ��N�zN���ww��n������p*�����:��6�Y�)ݩ���N&mvʙ���� c�tB��*��#)����!4C5�]蔧�9O�-�DW�J�>?
\�\�$��Fh"��S>w4��NE������Hym�(;h�"d������u��;꨽8;�KV9�UY��
��ā$���VH��U(�^,�L�+�vx����Y	�5lϹ~ҞS�vGiYB�	����Z<9�J9��c5��tA����Y� ��D����������h.n���%�|m�)g����L6z �$WN��-�O�҄��<A���N���h��v4��C����~�cGz"�*��ÞIp�J�Ny��A�(�������������SxG��b�E?IU/w�7���3^9�S��`�*h
���4\*�A��Y:�wT�#M����v]�'����c�,h������i�+��f-rU
Z=�
��<9�'/W�O-���a�2�r�;b�k8�ڥ�����ǻ'�ke���	�K��S/� ���5�7�15���u	������y��j3�Py�=e�HD�@��jx�)w���g��Ѭ,&���r��n�2�O7 �ǝ�(q\�@\5�'�v�ߎ��(9�;7S��)G;�E��A�|�~��S.Xc*�J�a�¼)���Q��FR{��H>��38�����-vʂ���n�{���<쩭�܄���w�S�2y�s��y�k-��Q�5�.��'�ʵ�3�<2z3iK*�:�M����/�ʡ�);ZOu#_����U��(��8�1y!�����P�u�ώ>T�h}���@��=����Џ��,�o��]8r���SGO������y����^y�=�[�%O���&ں��m!�EubR��R�����BHቌdˉI ��-��D�^9�� �=혾�?�7u����Z'���yf��^9�Q�`�f��	d�Ň핳�{|���W��]~�]-?�r
HT� �ցo����˛�ݧ<M�Wv1D0qR(f��^��Q��O�\�Ů�a�򱣵���0Y�E}l�;�І�"�N2��������qaW6�w��X�|�=d~߶�o��C>����H,�qT׿���Z��~wus��9�bQ�O7�_�a�����u|ݜؓ�1���	x�F��5�y�8��w�_PpƝ4o14c��a��q�34��-��7�{Fb���r}�n%�p�Y_�=���8���1ڣ7ʦ1���5Ƹ��쮗�{g��.w���q�=���'H����!f�3L�?�{f#骑xJ���F�Gb~����F�O��S�]�{�H�ڏ32������6����]�?^�x���=��G���̐��F������_<~���aj�ų8u�D������wO_�z��?��4ۗ�;��_���i�;=�ۑ��,>�C��ŭ����볇(�ZJ~R6P�K���_�;{�0e�Vo���%�-���9���o_=D�׺P��k�pyv~��O�Wк����b���������^>HY��E��'#1��?�z�ӻi�&#}���G�����ŋ���哧x��A�D|#1�P�0`ئV��O�	���?����峟~x��!��*�ʹI9�ђz����^�Z�!�A�g� ����'�?�|������x�]j<!]z7���W/Ξ��4U�(��&[՝�?}��̓�-���nI��-��?��I��I\�7O��<{�]
�E���ړ�`/���`�H�=�p�6�f�p}�����x���������C=DjM׳��oa�������f�0��8ė��/����f�J�=��-�8P���C�h�!����-}i[=���������!Rh�k���χhR�STҦ�����Q���۳�ً���mX8ha���E���Q�՛�?�zI�r���Ol
m:���m���럞�}�8[<?[<=��Ջ�ߝ�-�&��7g�by�C��   ���G��+��������wO������x��|�vq������{�6טf�>��'I6���W���vw������'�n�����J�i�UD��m=ā�������Q��䈄k�O#���W���a�����ŀ��©I�J|Z�����O�$�r�ϣ߫M
;�0�7�_��������������p�M^;�(w�'����=2;�������`���3�%�F+������|���8������u�|����������o��w� �� �      �	   \  x�u��n�0@���L#����ߘ4�$0WG�T�~T��������]���x�sIw0���D��L<C����k��6��'87��"��=������~=�x[�\���XP���3���d�ûBe���l�������UR��V�cK7��5
1�wX	�)9Ah �v��=i�rAǒ�YB��G#�EA&�8�C��ֲ��#K4)Ls�Y��@�p�d磟�<K��h�c�1aX�t���Rm�D�(2�� �i4�C�ɂ�/m�%y(s$y��p�=��	̑�'$g�%ޑ����u�9R�tF��$��*�wG���K���ԉ�|�9���n���;?�� ��wW      �	     x���ю�(E������QU��uc%�$l�G���Nkf�~�v���K���˭[��c�0���s�v ��ڹ�ݎ ���TV6�h����v�2����J�Ri���S���G��z���������Ko���P�,S�2��n�;��o���C.v���0����$N�r�s��z�v�"�L�zE�{Dzd!�<O�z�S}������O���k���teS���*6��W7��.�� w!�e�t���Ϟ�?ML%�����B6�5�\C�r3/st��[Ն�mBI�1���y��,�UJ -[Pe�z�H����
�9������c���s����X$+AH�#�UR�S����E�&[Y�Au�U�CΗ�p��Js�MM��<���p�ec5�f�ٔ1f��6a���Բ�}�SK�"<s�GNc�Fe=�_գ���a=d{��g=�'��qK�0f�W9ψ_�)4eL9θ�.��nqF:����XT���8�|�(z�(�A
�ˉ��x�v��6��s��%����r�Qߥ���)ޝ���_��qCd��j�F�e��\c�~NWJOqr}���X'
֖�����r��~�����?�4ߵ|B�`�׿W4偑��s�o����L
h-�:;'�AG��Z��_֥a��TYN<�b�_G��ɵ�S8���c����[Vh4�F������������8��x�Ȓ��g�jay�~�?�F���V3G	}��<$8�6�v��ٹ��~��JI�w      �	   �  x����n�0�u�ُ@����4�62�ਕC1����s#��7�4�y��t�G�9��߲�B|�&�&�Ny�ҡ8���K+zy5�l�V�p ���_Zf�^J��(d0�L��S���v�Go��U���U��3�:�B�e�_J�vj��Z�V�L��g����W� �Wm����B��6� �"�K�6��ն�D�}�^��������������6���{�n�@��K�����G�7z��	65�5lϱ� r�����Y>�ӥ.��D�=����â�R��&`)��42�8�r��[������`p5��Z�>'���Eݏ]��/��p��:���n~�0���7�(�-����<K�͘%���,a�9�������G��f��R     