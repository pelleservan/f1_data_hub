import { PrismaClient } from '@prisma/client';
import fs from 'fs';
import path from 'path';

const prisma = new PrismaClient();

const loadJSON = (filePath: string) => {
  try {
    const absolutePath = path.resolve(filePath);
    const fileContents = fs.readFileSync(absolutePath, 'utf-8');
    return JSON.parse(fileContents);
  } catch (error) {
    console.error(`Error loading JSON file at ${filePath}:`, error);
    throw error;
  }
};

const main = async () => {
  try {
    // Reset the database (ensure this method matches your setup)
    // await prisma.$executeRaw`TRUNCATE TABLE weather, car, location, raceControl, drivers, meetings, sessions, interval, pit, stints, laps, position, teamRadio RESTART IDENTITY CASCADE`;
    // await prisma.$executeRaw`TRUNCATE TABLE location RESTART IDENTITY CASCADE`;

    // Load JSON data
    const weatherData = loadJSON('prisma/seed/weather.json');
    const carData = loadJSON('prisma/seed/car-data.json');
    const locationData = loadJSON('prisma/seed/location.json');
    const raceControlData = loadJSON('prisma/seed/race-control.json');
    const driversData = loadJSON('prisma/seed/drivers.json');
    const meetingsData = loadJSON('prisma/seed/meetings.json');
    const sessionData = loadJSON('prisma/seed/session.json');
    const intervalsData = loadJSON('prisma/seed/intervals.json');
    const pitData = loadJSON('prisma/seed/pit.json');
    const stintsData = loadJSON('prisma/seed/stints.json');
    const lapsData = loadJSON('prisma/seed/laps.json');
    const positionData = loadJSON('prisma/seed/position.json');
    const teamRadioData = loadJSON('prisma/seed/team-radio.json');
    
    // Seed the database with JSON data
    await prisma.weather.createMany({ data: weatherData });
    await prisma.car.createMany({ data: carData });
    await prisma.location.createMany({ data: locationData });
    await prisma.raceControl.createMany({ data: raceControlData });
    await prisma.drivers.createMany({ data: driversData });
    await prisma.meetings.createMany({ data: meetingsData });
    await prisma.sessions.createMany({ data: sessionData });
    await prisma.interval.createMany({ data: intervalsData });
    await prisma.pit.createMany({ data: pitData });
    await prisma.stints.createMany({ data: stintsData });
    await prisma.laps.createMany({ data: lapsData });
    await prisma.position.createMany({ data: positionData });
    await prisma.teamRadio.createMany({ data: teamRadioData });

    console.log("Database seeded successfully!");
  } catch (error) {
    console.error("Error seeding the database:", error);
  } finally {
    await prisma.$disconnect();
    process.exit();
  }
};

main();
