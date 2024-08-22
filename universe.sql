--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    galaxy_id integer NOT NULL,
    name character varying(20),
    how_old integer,
    not_far boolean,
    how_many_stars integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    is_life boolean,
    name character varying(20) NOT NULL,
    age integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    diameter numeric,
    name character varying(20),
    distance_from_earth integer,
    are_aliens boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: rocket; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rocket (
    rocket_id integer NOT NULL,
    weight integer NOT NULL,
    is_fast boolean,
    name character varying(30)
);


ALTER TABLE public.rocket OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description text NOT NULL,
    name character varying(20),
    how_many integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'fst', 123, true, 1);
INSERT INTO public.galaxy VALUES (2, 'sec', 143, true, 2);
INSERT INTO public.galaxy VALUES (3, 'third', 143, NULL, 45);
INSERT INTO public.galaxy VALUES (4, 'fourth', 153, false, 12);
INSERT INTO public.galaxy VALUES (5, 'fifth', 553, false, 18);
INSERT INTO public.galaxy VALUES (6, 'sith', NULL, false, 67);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, false, 'funny moon', 20, 1);
INSERT INTO public.moon VALUES (2, false, 'tfunny moon', 30, 2);
INSERT INTO public.moon VALUES (3, false, 'rfunny moon', 40, 3);
INSERT INTO public.moon VALUES (4, false, 'unny moon', 50, 4);
INSERT INTO public.moon VALUES (5, true, 'qunny moon', 60, 5);
INSERT INTO public.moon VALUES (6, true, 'qusnny moon', 70, 6);
INSERT INTO public.moon VALUES (7, true, 'qunnsy moon', 80, 7);
INSERT INTO public.moon VALUES (8, true, 'qunnsy moons', 90, 8);
INSERT INTO public.moon VALUES (9, true, 'unnsy moons', 10, 9);
INSERT INTO public.moon VALUES (10, true, 'unnsy roons', 110, 10);
INSERT INTO public.moon VALUES (11, NULL, 'vunnsy roons', 120, 11);
INSERT INTO public.moon VALUES (12, NULL, 'vunnsy noons', 130, 12);
INSERT INTO public.moon VALUES (13, NULL, 'vunnsy ooons', 140, 12);
INSERT INTO public.moon VALUES (14, NULL, 'vunnsy spooons', 150, 11);
INSERT INTO public.moon VALUES (15, NULL, 'vunnsy sooons', 160, 10);
INSERT INTO public.moon VALUES (16, NULL, 'vunnsy loons', 170, 9);
INSERT INTO public.moon VALUES (17, false, 'vunnsy ltoons', 180, 8);
INSERT INTO public.moon VALUES (18, false, 'vunns', 190, 7);
INSERT INTO public.moon VALUES (19, false, 'vunnsy', 19, 6);
INSERT INTO public.moon VALUES (20, false, 'qvunnsy', 191, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 67, 'amazing planet', 300, false, 1);
INSERT INTO public.planet VALUES (2, 66, 'amazing splanet', 500, false, 2);
INSERT INTO public.planet VALUES (3, 64, 'azing splanet', 500, false, 3);
INSERT INTO public.planet VALUES (4, 61, 'fazing splanet', 600, false, 4);
INSERT INTO public.planet VALUES (5, 91, 'fazing gplanet', 900, true, 5);
INSERT INTO public.planet VALUES (6, 1, 'fazing gplanet', 900, true, 6);
INSERT INTO public.planet VALUES (7, 61, 'afazing gplanet', 0, true, 6);
INSERT INTO public.planet VALUES (8, 61, 'hafazing gplanet', 0, true, 5);
INSERT INTO public.planet VALUES (9, 111, 'hafazing gplanet', 0, NULL, 4);
INSERT INTO public.planet VALUES (10, 114, 'jfazing gplanet', 80, NULL, 3);
INSERT INTO public.planet VALUES (11, 110, 'jfazing gplanets', 80, false, 2);
INSERT INTO public.planet VALUES (12, 119, 'jfazing lanets', 80, false, 1);


--
-- Data for Name: rocket; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rocket VALUES (1, 300, true, 'crazy');
INSERT INTO public.rocket VALUES (2, 303, true, 'batterfly');
INSERT INTO public.rocket VALUES (3, 13, false, 'flyer');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'lovely star', 'Big', 9, 1);
INSERT INTO public.star VALUES (2, 'beautiful star', 'Bigger', 7, 2);
INSERT INTO public.star VALUES (6, 'awesome star', 'Small', 6, 3);
INSERT INTO public.star VALUES (3, 'amazing star', 'Smaller', 7, 6);
INSERT INTO public.star VALUES (4, 'amazing star', 'Smaller', 9, 4);
INSERT INTO public.star VALUES (5, 'amazing star', 'Average', 3, 5);


--
-- Name: galaxy galaxy_how_many_stars_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_how_many_stars_key UNIQUE (how_many_stars);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_key UNIQUE (age);


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
-- Name: rocket rocket_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_pkey PRIMARY KEY (rocket_id);


--
-- Name: rocket rocket_weight_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_weight_key UNIQUE (weight);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

