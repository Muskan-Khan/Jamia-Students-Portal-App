// -- Table: public.student

// -- DROP TABLE public.student;

// CREATE TABLE IF NOT EXISTS public.student
// (
//     enrolment_no character varying(8) COLLATE pg_catalog."default" NOT NULL,
//     email character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     name character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     password character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     father_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     mother_name character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     dob character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     present_address character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     permanent_address character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     gender character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     blood_group character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     identification_mark character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     social_category character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     nationality character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     religion character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     date_year_of_admission character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     state_of_domicile character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     hosteller character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     CONSTRAINT "Student_pkey" PRIMARY KEY (enrolment_no)
// )

// TABLESPACE pg_default;

// ALTER TABLE public.student
//     OWNER to postgres;



// ______________________________________________________________________________________

// Grade Card

// -- Table: public.student

// -- DROP TABLE public.student;

// CREATE TABLE IF NOT EXISTS public.student
// (
//     enrolment_no character varying(8) COLLATE pg_catalog."default" NOT NULL,
//     semester character varying(10) COLLATE pg_catalog."default" NOT NULL,
//     session character varying(10) COLLATE pg_catalog."default" NOT NULL,
//     exam_type character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     honours character varying(30) COLLATE pg_catalog."default" NOT NULL,
//     CONSTRAINT "Student_pkey" PRIMARY KEY (enrolment_no)
// )

// TABLESPACE pg_default;

// ALTER TABLE public.student
//     OWNER to postgres;