-- CreateTable
CREATE TABLE "Interval" (
    "id" SERIAL NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "driver_number" INTEGER NOT NULL,
    "gap_to_leader" DOUBLE PRECISION,
    "interval" DOUBLE PRECISION,
    "meeting_key" INTEGER NOT NULL,
    "session_key" INTEGER NOT NULL,

    CONSTRAINT "Interval_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CarData" (
    "id" SERIAL NOT NULL,
    "brake" INTEGER NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "driver_number" INTEGER NOT NULL,
    "drs" INTEGER NOT NULL,
    "meeting_key" INTEGER NOT NULL,
    "n_gear" INTEGER NOT NULL,
    "rpm" INTEGER NOT NULL,
    "session_key" INTEGER NOT NULL,
    "speed" INTEGER NOT NULL,
    "throttle" INTEGER NOT NULL,

    CONSTRAINT "CarData_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Drivers" (
    "id" SERIAL NOT NULL,
    "broadcast_name" TEXT NOT NULL,
    "country_code" TEXT NOT NULL,
    "driver_number" INTEGER NOT NULL,
    "first_name" TEXT NOT NULL,
    "full_name" TEXT NOT NULL,
    "headshot_url" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "meeting_key" INTEGER NOT NULL,
    "name_acronym" TEXT NOT NULL,
    "session_key" INTEGER NOT NULL,
    "team_colour" TEXT NOT NULL,
    "team_name" TEXT NOT NULL,

    CONSTRAINT "Drivers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Laps" (
    "id" SERIAL NOT NULL,
    "date_start" TIMESTAMP(3) NOT NULL,
    "driver_number" INTEGER NOT NULL,
    "duration_sector_1" DOUBLE PRECISION NOT NULL,
    "duration_sector_2" DOUBLE PRECISION NOT NULL,
    "duration_sector_3" DOUBLE PRECISION NOT NULL,
    "i1_speed" INTEGER NOT NULL,
    "i2_speed" INTEGER NOT NULL,
    "is_pit_out_lap" BOOLEAN NOT NULL,
    "lap_duration" DOUBLE PRECISION NOT NULL,
    "lap_number" INTEGER NOT NULL,
    "meeting_key" INTEGER NOT NULL,
    "segments_sector_1" INTEGER[],
    "segments_sector_2" INTEGER[],
    "segments_sector_3" INTEGER[],
    "session_key" INTEGER NOT NULL,
    "st_speed" INTEGER NOT NULL,

    CONSTRAINT "Laps_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Location" (
    "id" SERIAL NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "driver_number" INTEGER NOT NULL,
    "meeting_key" INTEGER NOT NULL,
    "session_key" INTEGER NOT NULL,
    "x" INTEGER NOT NULL,
    "y" INTEGER NOT NULL,
    "z" INTEGER NOT NULL,

    CONSTRAINT "Location_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Meetings" (
    "id" SERIAL NOT NULL,
    "circuit_key" INTEGER NOT NULL,
    "circuit_short_name" TEXT NOT NULL,
    "country_code" TEXT NOT NULL,
    "country_key" INTEGER NOT NULL,
    "country_name" TEXT NOT NULL,
    "date_start" TIMESTAMP(3) NOT NULL,
    "gmt_offset" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "meeting_key" INTEGER NOT NULL,
    "meeting_name" TEXT NOT NULL,
    "meeting_official_name" TEXT NOT NULL,
    "year" INTEGER NOT NULL,

    CONSTRAINT "Meetings_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Pit" (
    "id" SERIAL NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "driver_number" INTEGER NOT NULL,
    "lap_number" INTEGER NOT NULL,
    "meeting_key" INTEGER NOT NULL,
    "pit_duration" DOUBLE PRECISION NOT NULL,
    "session_key" INTEGER NOT NULL,

    CONSTRAINT "Pit_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Position" (
    "id" SERIAL NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "driver_number" INTEGER NOT NULL,
    "meeting_key" INTEGER NOT NULL,
    "position" INTEGER NOT NULL,
    "session_key" INTEGER NOT NULL,

    CONSTRAINT "Position_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "RaceControl" (
    "id" SERIAL NOT NULL,
    "category" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "driver_number" INTEGER NOT NULL,
    "flag" TEXT NOT NULL,
    "lap_number" INTEGER NOT NULL,
    "meeting_key" INTEGER NOT NULL,
    "message" TEXT NOT NULL,
    "scope" TEXT NOT NULL,
    "sector" INTEGER NOT NULL,
    "session_key" INTEGER NOT NULL,

    CONSTRAINT "RaceControl_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Sessions" (
    "id" SERIAL NOT NULL,
    "circuit_key" INTEGER NOT NULL,
    "circuit_short_name" TEXT NOT NULL,
    "country_code" TEXT NOT NULL,
    "country_key" INTEGER NOT NULL,
    "country_name" TEXT NOT NULL,
    "date_end" TIMESTAMP(3) NOT NULL,
    "date_start" TIMESTAMP(3) NOT NULL,
    "gmt_offset" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "meeting_key" INTEGER NOT NULL,
    "session_key" INTEGER NOT NULL,
    "session_name" TEXT NOT NULL,
    "session_type" TEXT NOT NULL,
    "year" INTEGER NOT NULL,

    CONSTRAINT "Sessions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Stints" (
    "id" SERIAL NOT NULL,
    "compound" TEXT NOT NULL,
    "driver_number" INTEGER NOT NULL,
    "lap_end" INTEGER NOT NULL,
    "lap_start" INTEGER NOT NULL,
    "meeting_key" INTEGER NOT NULL,
    "session_key" INTEGER NOT NULL,
    "stint_number" INTEGER NOT NULL,
    "tyre_age_at_start" INTEGER NOT NULL,

    CONSTRAINT "Stints_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "TeamRadio" (
    "id" SERIAL NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "driver_number" INTEGER NOT NULL,
    "meeting_key" INTEGER NOT NULL,
    "recording_url" TEXT NOT NULL,
    "session_key" INTEGER NOT NULL,

    CONSTRAINT "TeamRadio_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Weather" (
    "id" SERIAL NOT NULL,
    "air_temperature" DOUBLE PRECISION NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "humidity" INTEGER NOT NULL,
    "meeting_key" INTEGER NOT NULL,
    "pressure" DOUBLE PRECISION NOT NULL,
    "rainfall" INTEGER NOT NULL,
    "session_key" INTEGER NOT NULL,
    "track_temperature" DOUBLE PRECISION NOT NULL,
    "wind_direction" INTEGER NOT NULL,
    "wind_speed" INTEGER NOT NULL,

    CONSTRAINT "Weather_pkey" PRIMARY KEY ("id")
);
