// import { SeedPrisma } from "@snaplet/seed/adapter-prisma";
// import { defineConfig } from "@snaplet/seed/config";
// import { PrismaClient } from "@prisma/client";

// export default defineConfig({
//   adapter: () => {
//     const client = new PrismaClient();
//     return new SeedPrisma(client);
//   },
//   select: ["!*_prisma_migrations"],
// });

import { SeedPrisma } from "@snaplet/seed/adapter-prisma";
import { defineConfig } from "@snaplet/seed/config";
import { PrismaClient } from "@prisma/client";

const connectionString = "postgres://default:5JeKkyzpESR6@ep-wandering-dew-a49a3g9k.us-east-1.aws.neon.tech:5432/verceldb?sslmode=require";

export default defineConfig({
  adapter: () => {
    const client = new PrismaClient({
      datasources: {
        db: {
          url: connectionString,
        },
      },
    });
    return new SeedPrisma(client);
  },
  select: ["!*_prisma_migrations"],
});
