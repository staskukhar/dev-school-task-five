toc.dat                                                                                             0000600 0004000 0002000 00000057317 14524126225 0014457 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       $    ,            
    {            devSchoolPracticeDB    15.3    15.3 P    ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         `           1262    16828    devSchoolPracticeDB    DATABASE     �   CREATE DATABASE "devSchoolPracticeDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 %   DROP DATABASE "devSchoolPracticeDB";
                postgres    false         �            1259    16843    Battery    TABLE     �   CREATE TABLE public."Battery" (
    id integer NOT NULL,
    capacity smallint NOT NULL,
    price money NOT NULL,
    "expirationDate" date NOT NULL,
    "brandID" integer NOT NULL
);
    DROP TABLE public."Battery";
       public         heap    postgres    false         �            1259    16842    Battery_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Battery_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Battery_id_seq";
       public          postgres    false    216         a           0    0    Battery_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Battery_id_seq" OWNED BY public."Battery".id;
          public          postgres    false    215         �            1259    16850    Brand    TABLE     }   CREATE TABLE public."Brand" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    founded date NOT NULL
);
    DROP TABLE public."Brand";
       public         heap    postgres    false         �            1259    16849    Brand_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Brand_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Brand_id_seq";
       public          postgres    false    218         b           0    0    Brand_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Brand_id_seq" OWNED BY public."Brand".id;
          public          postgres    false    217         �            1259    16857    Camera    TABLE     �   CREATE TABLE public."Camera" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    price money NOT NULL,
    "withStabilisation" boolean NOT NULL,
    "brandID" integer NOT NULL,
    "resolutionId" integer NOT NULL
);
    DROP TABLE public."Camera";
       public         heap    postgres    false         �            1259    16856    Camera_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Camera_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Camera_id_seq";
       public          postgres    false    220         c           0    0    Camera_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Camera_id_seq" OWNED BY public."Camera".id;
          public          postgres    false    219         �            1259    16885    Core    TABLE     �   CREATE TABLE public."Core" (
    id integer NOT NULL,
    quantity smallint NOT NULL,
    frequency numeric(20,2) NOT NULL,
    name character varying(20) NOT NULL
);
    DROP TABLE public."Core";
       public         heap    postgres    false         �            1259    16884    Core_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Core_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Core_id_seq";
       public          postgres    false    228         d           0    0    Core_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Core_id_seq" OWNED BY public."Core".id;
          public          postgres    false    227         �            1259    16871    Display    TABLE     �   CREATE TABLE public."Display" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    "brandID" integer NOT NULL,
    "resolutionId" integer NOT NULL
);
    DROP TABLE public."Display";
       public         heap    postgres    false         �            1259    16870    Display_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Display_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Display_id_seq";
       public          postgres    false    224         e           0    0    Display_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Display_id_seq" OWNED BY public."Display".id;
          public          postgres    false    223         �            1259    16864 	   Processor    TABLE     �   CREATE TABLE public."Processor" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    "brandID" integer NOT NULL
);
    DROP TABLE public."Processor";
       public         heap    postgres    false         �            1259    16863    Processor_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Processor_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Processor_id_seq";
       public          postgres    false    222         f           0    0    Processor_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Processor_id_seq" OWNED BY public."Processor".id;
          public          postgres    false    221         �            1259    16878 
   Resolution    TABLE     �   CREATE TABLE public."Resolution" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    width smallint NOT NULL,
    height smallint NOT NULL
);
     DROP TABLE public."Resolution";
       public         heap    postgres    false         �            1259    16877    Resolution_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Resolution_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Resolution_id_seq";
       public          postgres    false    226         g           0    0    Resolution_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Resolution_id_seq" OWNED BY public."Resolution".id;
          public          postgres    false    225         �            1259    16892 
   Smartphone    TABLE       CREATE TABLE public."Smartphone" (
    id integer NOT NULL,
    model character varying(20) NOT NULL,
    "batteryId" integer NOT NULL,
    "cameraId" integer NOT NULL,
    "processorId" integer NOT NULL,
    "displayId" integer NOT NULL,
    "brandId" integer NOT NULL
);
     DROP TABLE public."Smartphone";
       public         heap    postgres    false         �            1259    16891    Smartphone_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Smartphone_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Smartphone_id_seq";
       public          postgres    false    230         h           0    0    Smartphone_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Smartphone_id_seq" OWNED BY public."Smartphone".id;
          public          postgres    false    229         �            1259    16898    _CoreToProcessor    TABLE     _   CREATE TABLE public."_CoreToProcessor" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);
 &   DROP TABLE public."_CoreToProcessor";
       public         heap    postgres    false         �            1259    16831    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    postgres    false         �           2604    16846 
   Battery id    DEFAULT     l   ALTER TABLE ONLY public."Battery" ALTER COLUMN id SET DEFAULT nextval('public."Battery_id_seq"'::regclass);
 ;   ALTER TABLE public."Battery" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216         �           2604    16853    Brand id    DEFAULT     h   ALTER TABLE ONLY public."Brand" ALTER COLUMN id SET DEFAULT nextval('public."Brand_id_seq"'::regclass);
 9   ALTER TABLE public."Brand" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218         �           2604    16860 	   Camera id    DEFAULT     j   ALTER TABLE ONLY public."Camera" ALTER COLUMN id SET DEFAULT nextval('public."Camera_id_seq"'::regclass);
 :   ALTER TABLE public."Camera" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220         �           2604    16888    Core id    DEFAULT     f   ALTER TABLE ONLY public."Core" ALTER COLUMN id SET DEFAULT nextval('public."Core_id_seq"'::regclass);
 8   ALTER TABLE public."Core" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228         �           2604    16874 
   Display id    DEFAULT     l   ALTER TABLE ONLY public."Display" ALTER COLUMN id SET DEFAULT nextval('public."Display_id_seq"'::regclass);
 ;   ALTER TABLE public."Display" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224         �           2604    16867    Processor id    DEFAULT     p   ALTER TABLE ONLY public."Processor" ALTER COLUMN id SET DEFAULT nextval('public."Processor_id_seq"'::regclass);
 =   ALTER TABLE public."Processor" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222         �           2604    16881    Resolution id    DEFAULT     r   ALTER TABLE ONLY public."Resolution" ALTER COLUMN id SET DEFAULT nextval('public."Resolution_id_seq"'::regclass);
 >   ALTER TABLE public."Resolution" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226         �           2604    16895    Smartphone id    DEFAULT     r   ALTER TABLE ONLY public."Smartphone" ALTER COLUMN id SET DEFAULT nextval('public."Smartphone_id_seq"'::regclass);
 >   ALTER TABLE public."Smartphone" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230         K          0    16843    Battery 
   TABLE DATA           U   COPY public."Battery" (id, capacity, price, "expirationDate", "brandID") FROM stdin;
    public          postgres    false    216       3403.dat M          0    16850    Brand 
   TABLE DATA           4   COPY public."Brand" (id, name, founded) FROM stdin;
    public          postgres    false    218       3405.dat O          0    16857    Camera 
   TABLE DATA           c   COPY public."Camera" (id, name, price, "withStabilisation", "brandID", "resolutionId") FROM stdin;
    public          postgres    false    220       3407.dat W          0    16885    Core 
   TABLE DATA           ?   COPY public."Core" (id, quantity, frequency, name) FROM stdin;
    public          postgres    false    228       3415.dat S          0    16871    Display 
   TABLE DATA           H   COPY public."Display" (id, name, "brandID", "resolutionId") FROM stdin;
    public          postgres    false    224       3411.dat Q          0    16864 	   Processor 
   TABLE DATA           :   COPY public."Processor" (id, name, "brandID") FROM stdin;
    public          postgres    false    222       3409.dat U          0    16878 
   Resolution 
   TABLE DATA           ?   COPY public."Resolution" (id, name, width, height) FROM stdin;
    public          postgres    false    226       3413.dat Y          0    16892 
   Smartphone 
   TABLE DATA           q   COPY public."Smartphone" (id, model, "batteryId", "cameraId", "processorId", "displayId", "brandId") FROM stdin;
    public          postgres    false    230       3417.dat Z          0    16898    _CoreToProcessor 
   TABLE DATA           6   COPY public."_CoreToProcessor" ("A", "B") FROM stdin;
    public          postgres    false    231       3418.dat I          0    16831    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    214       3401.dat i           0    0    Battery_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Battery_id_seq"', 1, false);
          public          postgres    false    215         j           0    0    Brand_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Brand_id_seq"', 1, false);
          public          postgres    false    217         k           0    0    Camera_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."Camera_id_seq"', 1, false);
          public          postgres    false    219         l           0    0    Core_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Core_id_seq"', 1, false);
          public          postgres    false    227         m           0    0    Display_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."Display_id_seq"', 1, false);
          public          postgres    false    223         n           0    0    Processor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Processor_id_seq"', 1, false);
          public          postgres    false    221         o           0    0    Resolution_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Resolution_id_seq"', 1, false);
          public          postgres    false    225         p           0    0    Smartphone_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Smartphone_id_seq"', 1, false);
          public          postgres    false    229         �           2606    16848    Battery Battery_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Battery"
    ADD CONSTRAINT "Battery_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Battery" DROP CONSTRAINT "Battery_pkey";
       public            postgres    false    216         �           2606    16855    Brand Brand_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Brand"
    ADD CONSTRAINT "Brand_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Brand" DROP CONSTRAINT "Brand_pkey";
       public            postgres    false    218         �           2606    16862    Camera Camera_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Camera"
    ADD CONSTRAINT "Camera_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Camera" DROP CONSTRAINT "Camera_pkey";
       public            postgres    false    220         �           2606    16890    Core Core_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Core"
    ADD CONSTRAINT "Core_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Core" DROP CONSTRAINT "Core_pkey";
       public            postgres    false    228         �           2606    16876    Display Display_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Display"
    ADD CONSTRAINT "Display_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Display" DROP CONSTRAINT "Display_pkey";
       public            postgres    false    224         �           2606    16869    Processor Processor_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Processor"
    ADD CONSTRAINT "Processor_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Processor" DROP CONSTRAINT "Processor_pkey";
       public            postgres    false    222         �           2606    16883    Resolution Resolution_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Resolution"
    ADD CONSTRAINT "Resolution_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Resolution" DROP CONSTRAINT "Resolution_pkey";
       public            postgres    false    226         �           2606    16897    Smartphone Smartphone_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Smartphone"
    ADD CONSTRAINT "Smartphone_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Smartphone" DROP CONSTRAINT "Smartphone_pkey";
       public            postgres    false    230         �           2606    16839 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    214         �           1259    16901    _CoreToProcessor_AB_unique    INDEX     f   CREATE UNIQUE INDEX "_CoreToProcessor_AB_unique" ON public."_CoreToProcessor" USING btree ("A", "B");
 0   DROP INDEX public."_CoreToProcessor_AB_unique";
       public            postgres    false    231    231         �           1259    16902    _CoreToProcessor_B_index    INDEX     X   CREATE INDEX "_CoreToProcessor_B_index" ON public."_CoreToProcessor" USING btree ("B");
 .   DROP INDEX public."_CoreToProcessor_B_index";
       public            postgres    false    231         �           2606    16903    Battery Battery_brandID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Battery"
    ADD CONSTRAINT "Battery_brandID_fkey" FOREIGN KEY ("brandID") REFERENCES public."Brand"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public."Battery" DROP CONSTRAINT "Battery_brandID_fkey";
       public          postgres    false    218    216    3231         �           2606    16908    Camera Camera_brandID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Camera"
    ADD CONSTRAINT "Camera_brandID_fkey" FOREIGN KEY ("brandID") REFERENCES public."Brand"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public."Camera" DROP CONSTRAINT "Camera_brandID_fkey";
       public          postgres    false    218    220    3231         �           2606    16913    Camera Camera_resolutionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Camera"
    ADD CONSTRAINT "Camera_resolutionId_fkey" FOREIGN KEY ("resolutionId") REFERENCES public."Resolution"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public."Camera" DROP CONSTRAINT "Camera_resolutionId_fkey";
       public          postgres    false    3239    220    226         �           2606    16923    Display Display_brandID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Display"
    ADD CONSTRAINT "Display_brandID_fkey" FOREIGN KEY ("brandID") REFERENCES public."Brand"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public."Display" DROP CONSTRAINT "Display_brandID_fkey";
       public          postgres    false    3231    224    218         �           2606    16928 !   Display Display_resolutionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Display"
    ADD CONSTRAINT "Display_resolutionId_fkey" FOREIGN KEY ("resolutionId") REFERENCES public."Resolution"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public."Display" DROP CONSTRAINT "Display_resolutionId_fkey";
       public          postgres    false    226    3239    224         �           2606    16918     Processor Processor_brandID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Processor"
    ADD CONSTRAINT "Processor_brandID_fkey" FOREIGN KEY ("brandID") REFERENCES public."Brand"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public."Processor" DROP CONSTRAINT "Processor_brandID_fkey";
       public          postgres    false    222    218    3231         �           2606    16933 $   Smartphone Smartphone_batteryId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Smartphone"
    ADD CONSTRAINT "Smartphone_batteryId_fkey" FOREIGN KEY ("batteryId") REFERENCES public."Battery"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public."Smartphone" DROP CONSTRAINT "Smartphone_batteryId_fkey";
       public          postgres    false    230    216    3229         �           2606    16953 "   Smartphone Smartphone_brandId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Smartphone"
    ADD CONSTRAINT "Smartphone_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public."Brand"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public."Smartphone" DROP CONSTRAINT "Smartphone_brandId_fkey";
       public          postgres    false    3231    218    230         �           2606    16938 #   Smartphone Smartphone_cameraId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Smartphone"
    ADD CONSTRAINT "Smartphone_cameraId_fkey" FOREIGN KEY ("cameraId") REFERENCES public."Camera"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public."Smartphone" DROP CONSTRAINT "Smartphone_cameraId_fkey";
       public          postgres    false    220    230    3233         �           2606    16948 $   Smartphone Smartphone_displayId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Smartphone"
    ADD CONSTRAINT "Smartphone_displayId_fkey" FOREIGN KEY ("displayId") REFERENCES public."Display"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 R   ALTER TABLE ONLY public."Smartphone" DROP CONSTRAINT "Smartphone_displayId_fkey";
       public          postgres    false    224    230    3237         �           2606    16943 &   Smartphone Smartphone_processorId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Smartphone"
    ADD CONSTRAINT "Smartphone_processorId_fkey" FOREIGN KEY ("processorId") REFERENCES public."Processor"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 T   ALTER TABLE ONLY public."Smartphone" DROP CONSTRAINT "Smartphone_processorId_fkey";
       public          postgres    false    3235    222    230         �           2606    16958 (   _CoreToProcessor _CoreToProcessor_A_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."_CoreToProcessor"
    ADD CONSTRAINT "_CoreToProcessor_A_fkey" FOREIGN KEY ("A") REFERENCES public."Core"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public."_CoreToProcessor" DROP CONSTRAINT "_CoreToProcessor_A_fkey";
       public          postgres    false    3241    231    228         �           2606    16963 (   _CoreToProcessor _CoreToProcessor_B_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."_CoreToProcessor"
    ADD CONSTRAINT "_CoreToProcessor_B_fkey" FOREIGN KEY ("B") REFERENCES public."Processor"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public."_CoreToProcessor" DROP CONSTRAINT "_CoreToProcessor_B_fkey";
       public          postgres    false    3235    231    222                                                                                                                                                                                                                                                                                                                         3403.dat                                                                                            0000600 0004000 0002000 00000000005 14524126225 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3405.dat                                                                                            0000600 0004000 0002000 00000000005 14524126225 0014243 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3407.dat                                                                                            0000600 0004000 0002000 00000000005 14524126225 0014245 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3415.dat                                                                                            0000600 0004000 0002000 00000000005 14524126225 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3411.dat                                                                                            0000600 0004000 0002000 00000000005 14524126225 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3409.dat                                                                                            0000600 0004000 0002000 00000000005 14524126225 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3413.dat                                                                                            0000600 0004000 0002000 00000000005 14524126225 0014242 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3417.dat                                                                                            0000600 0004000 0002000 00000000005 14524126225 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3418.dat                                                                                            0000600 0004000 0002000 00000000005 14524126225 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3401.dat                                                                                            0000600 0004000 0002000 00000000303 14524126225 0014240 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        0e5ec5cd-0649-4d7b-acc4-3dd490e659e3	96e55665a9c25408bd3beb9b017694b0e2e98857dd71c80b66568b3b1afb8585	2023-11-12 12:36:46.578104+02	20231112103646_init	\N	\N	2023-11-12 12:36:46.522679+02	1
\.


                                                                                                                                                                                                                                                                                                                             restore.sql                                                                                         0000600 0004000 0002000 00000045217 14524126225 0015400 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "devSchoolPracticeDB";
--
-- Name: devSchoolPracticeDB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "devSchoolPracticeDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE "devSchoolPracticeDB" OWNER TO postgres;

\connect "devSchoolPracticeDB"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Battery; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Battery" (
    id integer NOT NULL,
    capacity smallint NOT NULL,
    price money NOT NULL,
    "expirationDate" date NOT NULL,
    "brandID" integer NOT NULL
);


ALTER TABLE public."Battery" OWNER TO postgres;

--
-- Name: Battery_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Battery_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Battery_id_seq" OWNER TO postgres;

--
-- Name: Battery_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Battery_id_seq" OWNED BY public."Battery".id;


--
-- Name: Brand; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Brand" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    founded date NOT NULL
);


ALTER TABLE public."Brand" OWNER TO postgres;

--
-- Name: Brand_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Brand_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Brand_id_seq" OWNER TO postgres;

--
-- Name: Brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Brand_id_seq" OWNED BY public."Brand".id;


--
-- Name: Camera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Camera" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    price money NOT NULL,
    "withStabilisation" boolean NOT NULL,
    "brandID" integer NOT NULL,
    "resolutionId" integer NOT NULL
);


ALTER TABLE public."Camera" OWNER TO postgres;

--
-- Name: Camera_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Camera_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Camera_id_seq" OWNER TO postgres;

--
-- Name: Camera_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Camera_id_seq" OWNED BY public."Camera".id;


--
-- Name: Core; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Core" (
    id integer NOT NULL,
    quantity smallint NOT NULL,
    frequency numeric(20,2) NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public."Core" OWNER TO postgres;

--
-- Name: Core_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Core_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Core_id_seq" OWNER TO postgres;

--
-- Name: Core_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Core_id_seq" OWNED BY public."Core".id;


--
-- Name: Display; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Display" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    "brandID" integer NOT NULL,
    "resolutionId" integer NOT NULL
);


ALTER TABLE public."Display" OWNER TO postgres;

--
-- Name: Display_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Display_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Display_id_seq" OWNER TO postgres;

--
-- Name: Display_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Display_id_seq" OWNED BY public."Display".id;


--
-- Name: Processor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Processor" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    "brandID" integer NOT NULL
);


ALTER TABLE public."Processor" OWNER TO postgres;

--
-- Name: Processor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Processor_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Processor_id_seq" OWNER TO postgres;

--
-- Name: Processor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Processor_id_seq" OWNED BY public."Processor".id;


--
-- Name: Resolution; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Resolution" (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    width smallint NOT NULL,
    height smallint NOT NULL
);


ALTER TABLE public."Resolution" OWNER TO postgres;

--
-- Name: Resolution_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Resolution_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Resolution_id_seq" OWNER TO postgres;

--
-- Name: Resolution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Resolution_id_seq" OWNED BY public."Resolution".id;


--
-- Name: Smartphone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Smartphone" (
    id integer NOT NULL,
    model character varying(20) NOT NULL,
    "batteryId" integer NOT NULL,
    "cameraId" integer NOT NULL,
    "processorId" integer NOT NULL,
    "displayId" integer NOT NULL,
    "brandId" integer NOT NULL
);


ALTER TABLE public."Smartphone" OWNER TO postgres;

--
-- Name: Smartphone_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Smartphone_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Smartphone_id_seq" OWNER TO postgres;

--
-- Name: Smartphone_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Smartphone_id_seq" OWNED BY public."Smartphone".id;


--
-- Name: _CoreToProcessor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."_CoreToProcessor" (
    "A" integer NOT NULL,
    "B" integer NOT NULL
);


ALTER TABLE public."_CoreToProcessor" OWNER TO postgres;

--
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- Name: Battery id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Battery" ALTER COLUMN id SET DEFAULT nextval('public."Battery_id_seq"'::regclass);


--
-- Name: Brand id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Brand" ALTER COLUMN id SET DEFAULT nextval('public."Brand_id_seq"'::regclass);


--
-- Name: Camera id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Camera" ALTER COLUMN id SET DEFAULT nextval('public."Camera_id_seq"'::regclass);


--
-- Name: Core id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Core" ALTER COLUMN id SET DEFAULT nextval('public."Core_id_seq"'::regclass);


--
-- Name: Display id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Display" ALTER COLUMN id SET DEFAULT nextval('public."Display_id_seq"'::regclass);


--
-- Name: Processor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Processor" ALTER COLUMN id SET DEFAULT nextval('public."Processor_id_seq"'::regclass);


--
-- Name: Resolution id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Resolution" ALTER COLUMN id SET DEFAULT nextval('public."Resolution_id_seq"'::regclass);


--
-- Name: Smartphone id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Smartphone" ALTER COLUMN id SET DEFAULT nextval('public."Smartphone_id_seq"'::regclass);


--
-- Data for Name: Battery; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Battery" (id, capacity, price, "expirationDate", "brandID") FROM stdin;
\.
COPY public."Battery" (id, capacity, price, "expirationDate", "brandID") FROM '$$PATH$$/3403.dat';

--
-- Data for Name: Brand; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Brand" (id, name, founded) FROM stdin;
\.
COPY public."Brand" (id, name, founded) FROM '$$PATH$$/3405.dat';

--
-- Data for Name: Camera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Camera" (id, name, price, "withStabilisation", "brandID", "resolutionId") FROM stdin;
\.
COPY public."Camera" (id, name, price, "withStabilisation", "brandID", "resolutionId") FROM '$$PATH$$/3407.dat';

--
-- Data for Name: Core; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Core" (id, quantity, frequency, name) FROM stdin;
\.
COPY public."Core" (id, quantity, frequency, name) FROM '$$PATH$$/3415.dat';

--
-- Data for Name: Display; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Display" (id, name, "brandID", "resolutionId") FROM stdin;
\.
COPY public."Display" (id, name, "brandID", "resolutionId") FROM '$$PATH$$/3411.dat';

--
-- Data for Name: Processor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Processor" (id, name, "brandID") FROM stdin;
\.
COPY public."Processor" (id, name, "brandID") FROM '$$PATH$$/3409.dat';

--
-- Data for Name: Resolution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Resolution" (id, name, width, height) FROM stdin;
\.
COPY public."Resolution" (id, name, width, height) FROM '$$PATH$$/3413.dat';

--
-- Data for Name: Smartphone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Smartphone" (id, model, "batteryId", "cameraId", "processorId", "displayId", "brandId") FROM stdin;
\.
COPY public."Smartphone" (id, model, "batteryId", "cameraId", "processorId", "displayId", "brandId") FROM '$$PATH$$/3417.dat';

--
-- Data for Name: _CoreToProcessor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."_CoreToProcessor" ("A", "B") FROM stdin;
\.
COPY public."_CoreToProcessor" ("A", "B") FROM '$$PATH$$/3418.dat';

--
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
\.
COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM '$$PATH$$/3401.dat';

--
-- Name: Battery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Battery_id_seq"', 1, false);


--
-- Name: Brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Brand_id_seq"', 1, false);


--
-- Name: Camera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Camera_id_seq"', 1, false);


--
-- Name: Core_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Core_id_seq"', 1, false);


--
-- Name: Display_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Display_id_seq"', 1, false);


--
-- Name: Processor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Processor_id_seq"', 1, false);


--
-- Name: Resolution_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Resolution_id_seq"', 1, false);


--
-- Name: Smartphone_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Smartphone_id_seq"', 1, false);


--
-- Name: Battery Battery_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Battery"
    ADD CONSTRAINT "Battery_pkey" PRIMARY KEY (id);


--
-- Name: Brand Brand_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Brand"
    ADD CONSTRAINT "Brand_pkey" PRIMARY KEY (id);


--
-- Name: Camera Camera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Camera"
    ADD CONSTRAINT "Camera_pkey" PRIMARY KEY (id);


--
-- Name: Core Core_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Core"
    ADD CONSTRAINT "Core_pkey" PRIMARY KEY (id);


--
-- Name: Display Display_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Display"
    ADD CONSTRAINT "Display_pkey" PRIMARY KEY (id);


--
-- Name: Processor Processor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Processor"
    ADD CONSTRAINT "Processor_pkey" PRIMARY KEY (id);


--
-- Name: Resolution Resolution_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Resolution"
    ADD CONSTRAINT "Resolution_pkey" PRIMARY KEY (id);


--
-- Name: Smartphone Smartphone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Smartphone"
    ADD CONSTRAINT "Smartphone_pkey" PRIMARY KEY (id);


--
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


--
-- Name: _CoreToProcessor_AB_unique; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "_CoreToProcessor_AB_unique" ON public."_CoreToProcessor" USING btree ("A", "B");


--
-- Name: _CoreToProcessor_B_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "_CoreToProcessor_B_index" ON public."_CoreToProcessor" USING btree ("B");


--
-- Name: Battery Battery_brandID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Battery"
    ADD CONSTRAINT "Battery_brandID_fkey" FOREIGN KEY ("brandID") REFERENCES public."Brand"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Camera Camera_brandID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Camera"
    ADD CONSTRAINT "Camera_brandID_fkey" FOREIGN KEY ("brandID") REFERENCES public."Brand"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Camera Camera_resolutionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Camera"
    ADD CONSTRAINT "Camera_resolutionId_fkey" FOREIGN KEY ("resolutionId") REFERENCES public."Resolution"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Display Display_brandID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Display"
    ADD CONSTRAINT "Display_brandID_fkey" FOREIGN KEY ("brandID") REFERENCES public."Brand"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Display Display_resolutionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Display"
    ADD CONSTRAINT "Display_resolutionId_fkey" FOREIGN KEY ("resolutionId") REFERENCES public."Resolution"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Processor Processor_brandID_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Processor"
    ADD CONSTRAINT "Processor_brandID_fkey" FOREIGN KEY ("brandID") REFERENCES public."Brand"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Smartphone Smartphone_batteryId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Smartphone"
    ADD CONSTRAINT "Smartphone_batteryId_fkey" FOREIGN KEY ("batteryId") REFERENCES public."Battery"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Smartphone Smartphone_brandId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Smartphone"
    ADD CONSTRAINT "Smartphone_brandId_fkey" FOREIGN KEY ("brandId") REFERENCES public."Brand"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Smartphone Smartphone_cameraId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Smartphone"
    ADD CONSTRAINT "Smartphone_cameraId_fkey" FOREIGN KEY ("cameraId") REFERENCES public."Camera"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Smartphone Smartphone_displayId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Smartphone"
    ADD CONSTRAINT "Smartphone_displayId_fkey" FOREIGN KEY ("displayId") REFERENCES public."Display"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: Smartphone Smartphone_processorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Smartphone"
    ADD CONSTRAINT "Smartphone_processorId_fkey" FOREIGN KEY ("processorId") REFERENCES public."Processor"(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: _CoreToProcessor _CoreToProcessor_A_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."_CoreToProcessor"
    ADD CONSTRAINT "_CoreToProcessor_A_fkey" FOREIGN KEY ("A") REFERENCES public."Core"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: _CoreToProcessor _CoreToProcessor_B_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."_CoreToProcessor"
    ADD CONSTRAINT "_CoreToProcessor_B_fkey" FOREIGN KEY ("B") REFERENCES public."Processor"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 