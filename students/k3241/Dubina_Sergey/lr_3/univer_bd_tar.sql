toc.dat                                                                                             0000600 0004000 0002000 00000042320 13647373556 0014463 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       &                    x         
   university    12.2    12.2 :    Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         T           1262    16393 
   university    DATABASE     �   CREATE DATABASE university WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1251' LC_CTYPE = 'English_United States.1251';
    DROP DATABASE university;
                postgres    false                     2615    16394 
   university    SCHEMA        CREATE SCHEMA university;
    DROP SCHEMA university;
                postgres    false         �            1259    16564    9_grade_certificat    TABLE       CREATE TABLE public."9_grade_certificat" (
    abiturient_id_fk integer NOT NULL,
    prof_discipline_1 integer NOT NULL,
    prof_discipline_2 integer NOT NULL,
    prof_discipline_3 integer NOT NULL,
    prof_discipline_4 integer NOT NULL,
    average_grade integer NOT NULL
);
 (   DROP TABLE public."9_grade_certificat";
       public         heap    postgres    false         �            1259    16573    Application    TABLE     �   CREATE TABLE public."Application" (
    secretary_id_fk integer NOT NULL,
    abiturient_id_fk integer NOT NULL,
    application_date date NOT NULL
);
 !   DROP TABLE public."Application";
       public         heap    postgres    false         �            1259    16474    EGE_sertificat    TABLE     �   CREATE TABLE public."EGE_sertificat" (
    abiturient_id_fk integer NOT NULL,
    discipline_1_grade integer NOT NULL,
    discipline_2_grade integer NOT NULL
);
 $   DROP TABLE public."EGE_sertificat";
       public         heap    postgres    false         �            1259    16452 
   abiturient    TABLE     �  CREATE TABLE public.abiturient (
    fio text NOT NULL,
    birthday date NOT NULL,
    faculty_id_fk integer NOT NULL,
    abiturient_id integer NOT NULL,
    speciality_id_fk integer NOT NULL,
    school_num_fk integer NOT NULL,
    passport_info text NOT NULL,
    gold_medal boolean,
    silver_medal boolean,
    form_of_studying text NOT NULL,
    graduation_date date NOT NULL,
    organisation text
);
    DROP TABLE public.abiturient;
       public         heap    postgres    false         �            1259    16496    abiturient_abiturient_id_seq    SEQUENCE     �   CREATE SEQUENCE public.abiturient_abiturient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.abiturient_abiturient_id_seq;
       public          postgres    false    203         U           0    0    abiturient_abiturient_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.abiturient_abiturient_id_seq OWNED BY public.abiturient.abiturient_id;
          public          postgres    false    207         �            1259    16460    faculty    TABLE     a   CREATE TABLE public.faculty (
    faculty_name text NOT NULL,
    faculty_id integer NOT NULL
);
    DROP TABLE public.faculty;
       public         heap    postgres    false         �            1259    16485    faculty_faculty_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faculty_faculty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.faculty_faculty_id_seq;
       public          postgres    false    204         V           0    0    faculty_faculty_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.faculty_faculty_id_seq OWNED BY public.faculty.faculty_id;
          public          postgres    false    206         �            1259    16527    school    TABLE     \   CREATE TABLE public.school (
    school_num integer NOT NULL,
    location text NOT NULL
);
    DROP TABLE public.school;
       public         heap    postgres    false         �            1259    16588 	   secretary    TABLE     �   CREATE TABLE public.secretary (
    secretary_id integer NOT NULL,
    secretary_contacts text NOT NULL,
    fio text NOT NULL,
    work_experience text NOT NULL
);
    DROP TABLE public.secretary;
       public         heap    postgres    false         �            1259    16586    secretary_secretary_id_seq    SEQUENCE     �   CREATE SEQUENCE public.secretary_secretary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.secretary_secretary_id_seq;
       public          postgres    false    214         W           0    0    secretary_secretary_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.secretary_secretary_id_seq OWNED BY public.secretary.secretary_id;
          public          postgres    false    213         �            1259    16543 
   speciality    TABLE     �   CREATE TABLE public.speciality (
    speciality_id integer NOT NULL,
    faculty_id_fk integer NOT NULL,
    spciality_name text NOT NULL,
    max_stud_amount integer NOT NULL,
    min_grade integer NOT NULL
);
    DROP TABLE public.speciality;
       public         heap    postgres    false         �            1259    16541    speciality_speciality_id_seq    SEQUENCE     �   CREATE SEQUENCE public.speciality_speciality_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.speciality_speciality_id_seq;
       public          postgres    false    210         X           0    0    speciality_speciality_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.speciality_speciality_id_seq OWNED BY public.speciality.speciality_id;
          public          postgres    false    209         �
           2604    16498    abiturient abiturient_id    DEFAULT     �   ALTER TABLE ONLY public.abiturient ALTER COLUMN abiturient_id SET DEFAULT nextval('public.abiturient_abiturient_id_seq'::regclass);
 G   ALTER TABLE public.abiturient ALTER COLUMN abiturient_id DROP DEFAULT;
       public          postgres    false    207    203         �
           2604    16487    faculty faculty_id    DEFAULT     x   ALTER TABLE ONLY public.faculty ALTER COLUMN faculty_id SET DEFAULT nextval('public.faculty_faculty_id_seq'::regclass);
 A   ALTER TABLE public.faculty ALTER COLUMN faculty_id DROP DEFAULT;
       public          postgres    false    206    204         �
           2604    16591    secretary secretary_id    DEFAULT     �   ALTER TABLE ONLY public.secretary ALTER COLUMN secretary_id SET DEFAULT nextval('public.secretary_secretary_id_seq'::regclass);
 E   ALTER TABLE public.secretary ALTER COLUMN secretary_id DROP DEFAULT;
       public          postgres    false    214    213    214         �
           2604    16546    speciality speciality_id    DEFAULT     �   ALTER TABLE ONLY public.speciality ALTER COLUMN speciality_id SET DEFAULT nextval('public.speciality_speciality_id_seq'::regclass);
 G   ALTER TABLE public.speciality ALTER COLUMN speciality_id DROP DEFAULT;
       public          postgres    false    209    210    210         K          0    16564    9_grade_certificat 
   TABLE DATA           �   COPY public."9_grade_certificat" (abiturient_id_fk, prof_discipline_1, prof_discipline_2, prof_discipline_3, prof_discipline_4, average_grade) FROM stdin;
    public          postgres    false    211       2891.dat L          0    16573    Application 
   TABLE DATA           \   COPY public."Application" (secretary_id_fk, abiturient_id_fk, application_date) FROM stdin;
    public          postgres    false    212       2892.dat E          0    16474    EGE_sertificat 
   TABLE DATA           d   COPY public."EGE_sertificat" (abiturient_id_fk, discipline_1_grade, discipline_2_grade) FROM stdin;
    public          postgres    false    205       2885.dat C          0    16452 
   abiturient 
   TABLE DATA           �   COPY public.abiturient (fio, birthday, faculty_id_fk, abiturient_id, speciality_id_fk, school_num_fk, passport_info, gold_medal, silver_medal, form_of_studying, graduation_date, organisation) FROM stdin;
    public          postgres    false    203       2883.dat D          0    16460    faculty 
   TABLE DATA           ;   COPY public.faculty (faculty_name, faculty_id) FROM stdin;
    public          postgres    false    204       2884.dat H          0    16527    school 
   TABLE DATA           6   COPY public.school (school_num, location) FROM stdin;
    public          postgres    false    208       2888.dat N          0    16588 	   secretary 
   TABLE DATA           [   COPY public.secretary (secretary_id, secretary_contacts, fio, work_experience) FROM stdin;
    public          postgres    false    214       2894.dat J          0    16543 
   speciality 
   TABLE DATA           n   COPY public.speciality (speciality_id, faculty_id_fk, spciality_name, max_stud_amount, min_grade) FROM stdin;
    public          postgres    false    210       2890.dat Y           0    0    abiturient_abiturient_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.abiturient_abiturient_id_seq', 1, false);
          public          postgres    false    207         Z           0    0    faculty_faculty_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.faculty_faculty_id_seq', 45, true);
          public          postgres    false    206         [           0    0    secretary_secretary_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.secretary_secretary_id_seq', 10, true);
          public          postgres    false    213         \           0    0    speciality_speciality_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.speciality_speciality_id_seq', 5, true);
          public          postgres    false    209         �
           2606    16507    abiturient abiturient_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.abiturient
    ADD CONSTRAINT abiturient_id PRIMARY KEY (abiturient_id);
 B   ALTER TABLE ONLY public.abiturient DROP CONSTRAINT abiturient_id;
       public            postgres    false    203         �
           2606    16495    faculty faculty_id 
   CONSTRAINT     X   ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_id PRIMARY KEY (faculty_id);
 <   ALTER TABLE ONLY public.faculty DROP CONSTRAINT faculty_id;
       public            postgres    false    204         �
           2606    16534    school school_num 
   CONSTRAINT     W   ALTER TABLE ONLY public.school
    ADD CONSTRAINT school_num PRIMARY KEY (school_num);
 ;   ALTER TABLE ONLY public.school DROP CONSTRAINT school_num;
       public            postgres    false    208         �
           2606    16596    secretary secretary_id 
   CONSTRAINT     ^   ALTER TABLE ONLY public.secretary
    ADD CONSTRAINT secretary_id PRIMARY KEY (secretary_id);
 @   ALTER TABLE ONLY public.secretary DROP CONSTRAINT secretary_id;
       public            postgres    false    214         �
           2606    16551    speciality speciality_id 
   CONSTRAINT     a   ALTER TABLE ONLY public.speciality
    ADD CONSTRAINT speciality_id PRIMARY KEY (speciality_id);
 B   ALTER TABLE ONLY public.speciality DROP CONSTRAINT speciality_id;
       public            postgres    false    210         �
           1259    16484    fki_abiturient_id    INDEX     Z   CREATE INDEX fki_abiturient_id ON public."EGE_sertificat" USING btree (abiturient_id_fk);
 %   DROP INDEX public.fki_abiturient_id;
       public            postgres    false    205         �
           1259    16572    fki_abiturient_id(FK)    INDEX     d   CREATE INDEX "fki_abiturient_id(FK)" ON public."9_grade_certificat" USING btree (abiturient_id_fk);
 +   DROP INDEX public."fki_abiturient_id(FK)";
       public            postgres    false    211         �
           1259    16639    fki_abiturient_id_FK    INDEX     \   CREATE INDEX "fki_abiturient_id_FK" ON public."Application" USING btree (abiturient_id_fk);
 *   DROP INDEX public."fki_abiturient_id_FK";
       public            postgres    false    212         �
           1259    16473    fki_faculty_id    INDEX     N   CREATE INDEX fki_faculty_id ON public.abiturient USING btree (faculty_id_fk);
 "   DROP INDEX public.fki_faculty_id;
       public            postgres    false    203         �
           1259    16557    fki_faculty_id(FK)    INDEX     T   CREATE INDEX "fki_faculty_id(FK)" ON public.speciality USING btree (faculty_id_fk);
 (   DROP INDEX public."fki_faculty_id(FK)";
       public            postgres    false    210         �
           1259    16540    fki_school_num(FK)    INDEX     T   CREATE INDEX "fki_school_num(FK)" ON public.abiturient USING btree (school_num_fk);
 (   DROP INDEX public."fki_school_num(FK)";
       public            postgres    false    203         �
           1259    16603    fki_secretary_id(FK)    INDEX     [   CREATE INDEX "fki_secretary_id(FK)" ON public."Application" USING btree (secretary_id_fk);
 *   DROP INDEX public."fki_secretary_id(FK)";
       public            postgres    false    212         �
           1259    16563    fki_speciality_id(FK)    INDEX     Z   CREATE INDEX "fki_speciality_id(FK)" ON public.abiturient USING btree (speciality_id_fk);
 +   DROP INDEX public."fki_speciality_id(FK)";
       public            postgres    false    203         �
           2606    16650    Application abiturient_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Application"
    ADD CONSTRAINT abiturient_id_fk FOREIGN KEY (abiturient_id_fk) REFERENCES public.abiturient(abiturient_id) NOT VALID;
 H   ALTER TABLE ONLY public."Application" DROP CONSTRAINT abiturient_id_fk;
       public          postgres    false    212    2732    203         �
           2606    16675 #   9_grade_certificat abiturient_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."9_grade_certificat"
    ADD CONSTRAINT abiturient_id_fk FOREIGN KEY (abiturient_id_fk) REFERENCES public.abiturient(abiturient_id) NOT VALID;
 O   ALTER TABLE ONLY public."9_grade_certificat" DROP CONSTRAINT abiturient_id_fk;
       public          postgres    false    211    203    2732         �
           2606    16680    EGE_sertificat abiturient_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."EGE_sertificat"
    ADD CONSTRAINT abiturient_id_fk FOREIGN KEY (abiturient_id_fk) REFERENCES public.abiturient(abiturient_id) NOT VALID;
 K   ALTER TABLE ONLY public."EGE_sertificat" DROP CONSTRAINT abiturient_id_fk;
       public          postgres    false    205    2732    203         �
           2606    16655    speciality faculty_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.speciality
    ADD CONSTRAINT faculty_id_fk FOREIGN KEY (faculty_id_fk) REFERENCES public.faculty(faculty_id) NOT VALID;
 B   ALTER TABLE ONLY public.speciality DROP CONSTRAINT faculty_id_fk;
       public          postgres    false    210    2737    204         �
           2606    16660    abiturient faculty_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.abiturient
    ADD CONSTRAINT faculty_id_fk FOREIGN KEY (faculty_id_fk) REFERENCES public.faculty(faculty_id) NOT VALID;
 B   ALTER TABLE ONLY public.abiturient DROP CONSTRAINT faculty_id_fk;
       public          postgres    false    2737    203    204         �
           2606    16665    abiturient school_num_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.abiturient
    ADD CONSTRAINT school_num_fk FOREIGN KEY (school_num_fk) REFERENCES public.school(school_num) NOT VALID;
 B   ALTER TABLE ONLY public.abiturient DROP CONSTRAINT school_num_fk;
       public          postgres    false    203    208    2740         �
           2606    16645    Application secretary_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Application"
    ADD CONSTRAINT secretary_id_fk FOREIGN KEY (secretary_id_fk) REFERENCES public.secretary(secretary_id) NOT VALID;
 G   ALTER TABLE ONLY public."Application" DROP CONSTRAINT secretary_id_fk;
       public          postgres    false    2748    214    212         �
           2606    16670    abiturient speciality_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.abiturient
    ADD CONSTRAINT speciality_id_fk FOREIGN KEY (speciality_id_fk) REFERENCES public.speciality(speciality_id) NOT VALID;
 E   ALTER TABLE ONLY public.abiturient DROP CONSTRAINT speciality_id_fk;
       public          postgres    false    203    210    2743                                                                                                                                                                                                                                                                                                                        2891.dat                                                                                            0000600 0004000 0002000 00000000101 13647373556 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	4	5	3	3	4
2	3	3	5	4	4
3	5	5	5	5	5
4	3	4	3	3	3
5	4	5	5	4	4
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                               2892.dat                                                                                            0000600 0004000 0002000 00000000120 13647373556 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	5	2020-09-04
2	4	2020-09-06
3	3	2020-09-02
4	2	2020-09-04
5	1	2020-09-03
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                2885.dat                                                                                            0000600 0004000 0002000 00000000055 13647373556 0014303 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	89	78
2	88	69
3	92	79
4	84	87
5	78	82
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   2883.dat                                                                                            0000600 0004000 0002000 00000000601 13647373556 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Дубина С.Д.	2000-12-08	1	1	5	121	5386298	f	t	budget	2018-03-14	\N
Вельц A.A.	2000-02-03	2	2	4	32	46357357	f	f	budget	2018-03-05	DSSDS
Махотина Е.Г.	2000-08-06	3	3	3	456	5637358	f	t	contract	2018-03-07	\N
Матюшина Е.Д.	2000-07-08	4	4	2	3	88734799	t	t	budget	2018-05-14	\N
Тарасов А.Р.	2000-12-04	5	5	1	33	13235356	f	t	budget	2018-03-14	\N
\.


                                                                                                                               2884.dat                                                                                            0000600 0004000 0002000 00000000116 13647373556 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        IKT	41
BIT	42
BTINS	43
FTMI	44
ITIP	45
IKT	1
BIT	2
BTINS	3
FTMI	4
ITIP	5
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                  2888.dat                                                                                            0000600 0004000 0002000 00000000074 13647373556 0014307 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        121	Kyiv
32	Saint Petersburg
456	Tumen
3	Ufa
33	Almati
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                    2894.dat                                                                                            0000600 0004000 0002000 00000000403 13647373556 0014300 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	854648383748	Ршоаовла Р.Н.	4 года
2	823343574768	Нылталвод Е.В.	2 года
3	850284924892	Лщвоыовщы Н.Ш.	6 лет
4	802847924927	Ашшовыдыб Р.Н.	4 года
5	871873538587	Фоавоущоа Л.Г.	1 год
\.


                                                                                                                                                                                                                                                             2890.dat                                                                                            0000600 0004000 0002000 00000000131 13647373556 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	5	GDFG	213	94
2	4	DGDH	222	87
3	3	SRTTS	184	98
4	2	TRYRY	300	76
5	1	YTUGFD	255	86
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                       restore.sql                                                                                         0000600 0004000 0002000 00000034336 13647373556 0015420 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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

DROP DATABASE university;
--
-- Name: university; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE university WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1251' LC_CTYPE = 'English_United States.1251';


ALTER DATABASE university OWNER TO postgres;

\connect university

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

--
-- Name: university; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA university;


ALTER SCHEMA university OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: 9_grade_certificat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."9_grade_certificat" (
    abiturient_id_fk integer NOT NULL,
    prof_discipline_1 integer NOT NULL,
    prof_discipline_2 integer NOT NULL,
    prof_discipline_3 integer NOT NULL,
    prof_discipline_4 integer NOT NULL,
    average_grade integer NOT NULL
);


ALTER TABLE public."9_grade_certificat" OWNER TO postgres;

--
-- Name: Application; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Application" (
    secretary_id_fk integer NOT NULL,
    abiturient_id_fk integer NOT NULL,
    application_date date NOT NULL
);


ALTER TABLE public."Application" OWNER TO postgres;

--
-- Name: EGE_sertificat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EGE_sertificat" (
    abiturient_id_fk integer NOT NULL,
    discipline_1_grade integer NOT NULL,
    discipline_2_grade integer NOT NULL
);


ALTER TABLE public."EGE_sertificat" OWNER TO postgres;

--
-- Name: abiturient; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.abiturient (
    fio text NOT NULL,
    birthday date NOT NULL,
    faculty_id_fk integer NOT NULL,
    abiturient_id integer NOT NULL,
    speciality_id_fk integer NOT NULL,
    school_num_fk integer NOT NULL,
    passport_info text NOT NULL,
    gold_medal boolean,
    silver_medal boolean,
    form_of_studying text NOT NULL,
    graduation_date date NOT NULL,
    organisation text
);


ALTER TABLE public.abiturient OWNER TO postgres;

--
-- Name: abiturient_abiturient_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.abiturient_abiturient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.abiturient_abiturient_id_seq OWNER TO postgres;

--
-- Name: abiturient_abiturient_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.abiturient_abiturient_id_seq OWNED BY public.abiturient.abiturient_id;


--
-- Name: faculty; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.faculty (
    faculty_name text NOT NULL,
    faculty_id integer NOT NULL
);


ALTER TABLE public.faculty OWNER TO postgres;

--
-- Name: faculty_faculty_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.faculty_faculty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faculty_faculty_id_seq OWNER TO postgres;

--
-- Name: faculty_faculty_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.faculty_faculty_id_seq OWNED BY public.faculty.faculty_id;


--
-- Name: school; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.school (
    school_num integer NOT NULL,
    location text NOT NULL
);


ALTER TABLE public.school OWNER TO postgres;

--
-- Name: secretary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.secretary (
    secretary_id integer NOT NULL,
    secretary_contacts text NOT NULL,
    fio text NOT NULL,
    work_experience text NOT NULL
);


ALTER TABLE public.secretary OWNER TO postgres;

--
-- Name: secretary_secretary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.secretary_secretary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.secretary_secretary_id_seq OWNER TO postgres;

--
-- Name: secretary_secretary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.secretary_secretary_id_seq OWNED BY public.secretary.secretary_id;


--
-- Name: speciality; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.speciality (
    speciality_id integer NOT NULL,
    faculty_id_fk integer NOT NULL,
    spciality_name text NOT NULL,
    max_stud_amount integer NOT NULL,
    min_grade integer NOT NULL
);


ALTER TABLE public.speciality OWNER TO postgres;

--
-- Name: speciality_speciality_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.speciality_speciality_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.speciality_speciality_id_seq OWNER TO postgres;

--
-- Name: speciality_speciality_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.speciality_speciality_id_seq OWNED BY public.speciality.speciality_id;


--
-- Name: abiturient abiturient_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abiturient ALTER COLUMN abiturient_id SET DEFAULT nextval('public.abiturient_abiturient_id_seq'::regclass);


--
-- Name: faculty faculty_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faculty ALTER COLUMN faculty_id SET DEFAULT nextval('public.faculty_faculty_id_seq'::regclass);


--
-- Name: secretary secretary_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secretary ALTER COLUMN secretary_id SET DEFAULT nextval('public.secretary_secretary_id_seq'::regclass);


--
-- Name: speciality speciality_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.speciality ALTER COLUMN speciality_id SET DEFAULT nextval('public.speciality_speciality_id_seq'::regclass);


--
-- Data for Name: 9_grade_certificat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."9_grade_certificat" (abiturient_id_fk, prof_discipline_1, prof_discipline_2, prof_discipline_3, prof_discipline_4, average_grade) FROM stdin;
\.
COPY public."9_grade_certificat" (abiturient_id_fk, prof_discipline_1, prof_discipline_2, prof_discipline_3, prof_discipline_4, average_grade) FROM '$$PATH$$/2891.dat';

--
-- Data for Name: Application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Application" (secretary_id_fk, abiturient_id_fk, application_date) FROM stdin;
\.
COPY public."Application" (secretary_id_fk, abiturient_id_fk, application_date) FROM '$$PATH$$/2892.dat';

--
-- Data for Name: EGE_sertificat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."EGE_sertificat" (abiturient_id_fk, discipline_1_grade, discipline_2_grade) FROM stdin;
\.
COPY public."EGE_sertificat" (abiturient_id_fk, discipline_1_grade, discipline_2_grade) FROM '$$PATH$$/2885.dat';

--
-- Data for Name: abiturient; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.abiturient (fio, birthday, faculty_id_fk, abiturient_id, speciality_id_fk, school_num_fk, passport_info, gold_medal, silver_medal, form_of_studying, graduation_date, organisation) FROM stdin;
\.
COPY public.abiturient (fio, birthday, faculty_id_fk, abiturient_id, speciality_id_fk, school_num_fk, passport_info, gold_medal, silver_medal, form_of_studying, graduation_date, organisation) FROM '$$PATH$$/2883.dat';

--
-- Data for Name: faculty; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.faculty (faculty_name, faculty_id) FROM stdin;
\.
COPY public.faculty (faculty_name, faculty_id) FROM '$$PATH$$/2884.dat';

--
-- Data for Name: school; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.school (school_num, location) FROM stdin;
\.
COPY public.school (school_num, location) FROM '$$PATH$$/2888.dat';

--
-- Data for Name: secretary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.secretary (secretary_id, secretary_contacts, fio, work_experience) FROM stdin;
\.
COPY public.secretary (secretary_id, secretary_contacts, fio, work_experience) FROM '$$PATH$$/2894.dat';

--
-- Data for Name: speciality; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.speciality (speciality_id, faculty_id_fk, spciality_name, max_stud_amount, min_grade) FROM stdin;
\.
COPY public.speciality (speciality_id, faculty_id_fk, spciality_name, max_stud_amount, min_grade) FROM '$$PATH$$/2890.dat';

--
-- Name: abiturient_abiturient_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.abiturient_abiturient_id_seq', 1, false);


--
-- Name: faculty_faculty_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.faculty_faculty_id_seq', 45, true);


--
-- Name: secretary_secretary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.secretary_secretary_id_seq', 10, true);


--
-- Name: speciality_speciality_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.speciality_speciality_id_seq', 5, true);


--
-- Name: abiturient abiturient_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abiturient
    ADD CONSTRAINT abiturient_id PRIMARY KEY (abiturient_id);


--
-- Name: faculty faculty_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_id PRIMARY KEY (faculty_id);


--
-- Name: school school_num; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school
    ADD CONSTRAINT school_num PRIMARY KEY (school_num);


--
-- Name: secretary secretary_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.secretary
    ADD CONSTRAINT secretary_id PRIMARY KEY (secretary_id);


--
-- Name: speciality speciality_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.speciality
    ADD CONSTRAINT speciality_id PRIMARY KEY (speciality_id);


--
-- Name: fki_abiturient_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_abiturient_id ON public."EGE_sertificat" USING btree (abiturient_id_fk);


--
-- Name: fki_abiturient_id(FK); Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_abiturient_id(FK)" ON public."9_grade_certificat" USING btree (abiturient_id_fk);


--
-- Name: fki_abiturient_id_FK; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_abiturient_id_FK" ON public."Application" USING btree (abiturient_id_fk);


--
-- Name: fki_faculty_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_faculty_id ON public.abiturient USING btree (faculty_id_fk);


--
-- Name: fki_faculty_id(FK); Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_faculty_id(FK)" ON public.speciality USING btree (faculty_id_fk);


--
-- Name: fki_school_num(FK); Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_school_num(FK)" ON public.abiturient USING btree (school_num_fk);


--
-- Name: fki_secretary_id(FK); Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_secretary_id(FK)" ON public."Application" USING btree (secretary_id_fk);


--
-- Name: fki_speciality_id(FK); Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_speciality_id(FK)" ON public.abiturient USING btree (speciality_id_fk);


--
-- Name: Application abiturient_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Application"
    ADD CONSTRAINT abiturient_id_fk FOREIGN KEY (abiturient_id_fk) REFERENCES public.abiturient(abiturient_id) NOT VALID;


--
-- Name: 9_grade_certificat abiturient_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."9_grade_certificat"
    ADD CONSTRAINT abiturient_id_fk FOREIGN KEY (abiturient_id_fk) REFERENCES public.abiturient(abiturient_id) NOT VALID;


--
-- Name: EGE_sertificat abiturient_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EGE_sertificat"
    ADD CONSTRAINT abiturient_id_fk FOREIGN KEY (abiturient_id_fk) REFERENCES public.abiturient(abiturient_id) NOT VALID;


--
-- Name: speciality faculty_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.speciality
    ADD CONSTRAINT faculty_id_fk FOREIGN KEY (faculty_id_fk) REFERENCES public.faculty(faculty_id) NOT VALID;


--
-- Name: abiturient faculty_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abiturient
    ADD CONSTRAINT faculty_id_fk FOREIGN KEY (faculty_id_fk) REFERENCES public.faculty(faculty_id) NOT VALID;


--
-- Name: abiturient school_num_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abiturient
    ADD CONSTRAINT school_num_fk FOREIGN KEY (school_num_fk) REFERENCES public.school(school_num) NOT VALID;


--
-- Name: Application secretary_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Application"
    ADD CONSTRAINT secretary_id_fk FOREIGN KEY (secretary_id_fk) REFERENCES public.secretary(secretary_id) NOT VALID;


--
-- Name: abiturient speciality_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abiturient
    ADD CONSTRAINT speciality_id_fk FOREIGN KEY (speciality_id_fk) REFERENCES public.speciality(speciality_id) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  