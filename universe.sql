--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    starsnum integer,
    age_in_years integer,
    description text,
    haslife boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: lifetypes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifetypes (
    livings_number numeric,
    name character varying(20) NOT NULL,
    lifetypes_id integer NOT NULL
);


ALTER TABLE public.lifetypes OWNER TO freecodecamp;

--
-- Name: lifetypes_lifetypes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lifetypes_lifetypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lifetypes_lifetypes_id_seq OWNER TO freecodecamp;

--
-- Name: lifetypes_lifetypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lifetypes_lifetypes_id_seq OWNED BY public.lifetypes.lifetypes_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    moontype text,
    age_in_years integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    haslife boolean,
    age_in_years integer,
    shape text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    description text,
    age_in_years integer,
    startype text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: lifetypes lifetypes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifetypes ALTER COLUMN lifetypes_id SET DEFAULT nextval('public.lifetypes_lifetypes_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('DrpETabana', 1, 55555, 1000000, NULL, true);
INSERT INTO public.galaxy VALUES ('test1', 2, 666666, 1000, NULL, false);
INSERT INTO public.galaxy VALUES ('test2', 3, 33335, 1500, NULL, false);
INSERT INTO public.galaxy VALUES ('test3', 4, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test4', 5, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 6, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 7, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 8, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 9, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 10, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 11, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 12, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 13, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 14, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 15, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 16, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 17, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 18, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 19, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 20, 373335, 15400, NULL, false);
INSERT INTO public.galaxy VALUES ('test5', 21, 373335, 15400, NULL, false);


--
-- Data for Name: lifetypes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifetypes VALUES (15400, 'testName', 1);
INSERT INTO public.lifetypes VALUES (15400, 'testName2', 5);
INSERT INTO public.lifetypes VALUES (15400, 'testName23', 6);
INSERT INTO public.lifetypes VALUES (15400, 'testName234', 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon0', 1, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 2, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 3, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 4, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 5, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 6, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 7, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 8, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 9, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 10, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 11, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 12, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 13, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 14, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 15, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 16, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 17, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 18, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 19, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 20, 'Spherical', 15400, 2);
INSERT INTO public.moon VALUES ('Moon0', 21, 'Spherical', 15400, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth ,1);
;
', 1, true, 15400, 'Spherical', 1);
INSERT INTO public.planet VALUES ('Earth2', 2, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth3', 3, true, 15400, 'Spherical', 3);
INSERT INTO public.planet VALUES ('Earth4', 4, true, 15400, 'Spherical', 4);
INSERT INTO public.planet VALUES ('Earth5', 5, true, 15400, 'Spherical', 5);
INSERT INTO public.planet VALUES ('Earth6', 6, true, 15400, 'Spherical', 6);
INSERT INTO public.planet VALUES ('Earth2', 8, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 9, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 10, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 11, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 12, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 13, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 14, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 15, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 16, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 17, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 18, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 19, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 20, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 21, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 22, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 23, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 24, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 25, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 26, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 27, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 28, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 29, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 30, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 31, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 32, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 33, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 34, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 35, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 36, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 37, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 38, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 39, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 40, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 41, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 42, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 43, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 44, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 45, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 46, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 47, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 48, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 49, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 50, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 51, true, 15400, 'Spherical', 2);
INSERT INTO public.planet VALUES ('Earth2', 52, true, 15400, 'Spherical', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('test1', 1, 'Glowing', 15400, 'old', 1);
INSERT INTO public.star VALUES ('test2', 2, 'Glowing', 15400, 'old', 2);
INSERT INTO public.star VALUES ('test2', 3, 'Glowing', 15400, 'old', 3);
INSERT INTO public.star VALUES ('test4', 4, 'Glowing', 15400, 'old', 4);
INSERT INTO public.star VALUES ('test5', 5, 'Glowing', 15400, 'old', 5);
INSERT INTO public.star VALUES ('test6', 6, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 7, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 8, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 9, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 10, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 11, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 12, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 13, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 14, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 15, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 16, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 17, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 18, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 19, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 20, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 21, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 22, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 23, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 24, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 25, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 26, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 27, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 28, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 29, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 30, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 31, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 32, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 33, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 34, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 35, 'Glowing', 15400, 'old', 6);
INSERT INTO public.star VALUES ('test6', 36, 'Glowing', 15400, 'old', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 21, true);


--
-- Name: lifetypes_lifetypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lifetypes_lifetypes_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 52, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 36, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lifetypes lifetypes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifetypes
    ADD CONSTRAINT lifetypes_name_key UNIQUE (name);


--
-- Name: lifetypes lifetypes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifetypes
    ADD CONSTRAINT lifetypes_pkey PRIMARY KEY (lifetypes_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

