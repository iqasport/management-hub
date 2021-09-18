import { PrismaClient } from '@prisma/client';
import bcrypt from 'bcrypt';

const prisma = new PrismaClient();

async function main() {
  await prisma.policy_manager_terms.create({
    data: {
      description: '# Privacy Policy',
      rule: 'privacy_terms',
      state: 'published',
      created_at: new Date(),
      updated_at: new Date(),
    },
  });

  const encrypted_password = await bcrypt.hash('password', 10);

  await prisma.users.create({
    data: {
      first_name: 'referee',
      email: 'referee@example.com',
      encrypted_password,
      created_at: new Date(),
      updated_at: new Date(),
      confirmed_at: new Date(),
      roles: {
        create: {
          access_type: 0,
          created_at: new Date(),
          updated_at: new Date(),
        },
      },
    },
  });

  await prisma.users.create({
    data: {
      first_name: 'iqa_admin',
      email: 'iqa_admin@example.com',
      admin: true,
      encrypted_password,
      created_at: new Date(),
      updated_at: new Date(),
      confirmed_at: new Date(),
      roles: {
        create: {
          access_type: 2,
          created_at: new Date(),
          updated_at: new Date(),
        },
      },
    },
  });

  await prisma.users.create({
    data: {
      first_name: 'ngb_admin',
      email: 'ngb_admin@example.com',
      encrypted_password,
      created_at: new Date(),
      updated_at: new Date(),
      confirmed_at: new Date(),
      roles: {
        create: {
          access_type: 1,
          created_at: new Date(),
          updated_at: new Date(),
        },
      },
    },
  });

  await prisma.national_governing_bodies.createMany({
    data: [
      {
        name: 'Argentina',
        website: 'https://www.facebook.com/asociaciondequidditch.arg/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Australia',
        website: 'http://www.quidditch.org.au/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Austria',
        website: 'https://quidditch.at/en/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Belgium',
        website: 'https://www.quidditchbelgium.be/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Brazil',
        website: 'https://abrquadribol.wordpress.com/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Canada',
        website: 'http://quidditchcanada.com/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Catalonia',
        website: 'https://www.facebook.com/QuidditchCatalunya/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Chile',
        website: 'http://www.iqasport.com/membership/member-ngbs',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Czech Republic',
        website: 'http://famfrpal.cz/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Denmark',
        website: 'http://www.iqasport.com/membership/member-ngbs',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'France',
        website: 'http://www.quidditch.fr/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Germany',
        website: 'http://www.deutscherquidditchbund.de/index.php/en/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Hungary',
        website: 'http://www.iqasport.com/membership/member-ngbs',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Iceland',
        website: 'http://www.iqasport.com/membership/member-ngbs',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'India',
        website: 'http://www.iqasport.com/membership/member-ngbs',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Indonesia',
        website: 'http://www.iqasport.com/membership/member-ngbs',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Ireland',
        website: 'https://www.facebook.com/QuidditchIreland/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Israel',
        website: 'http://www.iqasport.com/membership/member-ngbs',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Italy',
        website: 'http://www.italiaquidditch.com/index.php/it/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Japan',
        website: 'http://www.iqasport.com/membership/member-ngbs',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Mexico',
        website: 'https://www.qmxsport.org/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Netherlands',
        website: 'http://www.quidditchnederland.nl/nl/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'New Zealand',
        website: 'http://www.iqasport.com/membership/member-ngbs',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Norway',
        website: 'http://rumpeldunk.no/en/971-2/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Pakistan',
        website: 'http://www.iqasport.com/membership/member-ngbs',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Peru',
        website: 'https://www.facebook.com/QuidditchPeru/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Poland',
        website: 'https://www.facebook.com/PolskaLigaQuidditcha',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Portugal',
        website: 'http://www.iqasport.com/membership/member-ngbs',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Republic of Korea',
        website: 'https://www.facebook.com/quidditchkorea/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Romania',
        website: 'http://www.iqasport.com/membership/member-ngbs',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Serbia',
        website: 'http://www.iqasport.com/membership/member-ngbs',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Slovakia',
        website: 'https://www.facebook.com/slovakquidditch/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Slovenia',
        website: 'https://www.facebook.com/quidditch.ljubljana/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Spain',
        website: 'https://www.facebook.com/AsociacionQuidditchEspana/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Sweden',
        website: 'https://www.facebook.com/QuidditchSverige/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Switzerland',
        website: 'http://www.swissquidditch.ch/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Turkey',
        website: 'http://quidditchdernegi.org/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'Uganda',
        website: 'https://www.facebook.com/Quidditch-Uganda-1451741015090784/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'United Kingdom',
        website: 'https://www.quidditchuk.org/',
        created_at: new Date(),
        updated_at: new Date(),
      },
      {
        name: 'United States',
        website: 'https://www.usquidditch.org/',
        created_at: new Date(),
        updated_at: new Date(),
      },
    ],
  });

  await prisma.tests.create({
    data: {
      name: 'Snitch Referee Written Test 2018–20',
      created_at: new Date(),
      updated_at: new Date(),
      description:
        "You will have 20 minutes to complete this exam once started. You will not be able to save your progress if you exit this window. After you submit your answers your results will be emailed to you, and you'll be able to see the results on your referee profile. If you did not pass on this attempt you will have to wait 24 hours until your next attempt. You can not take this exam more than 6 times. If you have any questions before taking the exam please reach out to referees@iqasport.org",
      time_limit: 20,
      positive_feedback:
        'Congratulations!  You have passed the Snitch Referee exam! This means you are now a fully certified IQA Snitch Referee! Please ensure that you continue to develop your referee skills over time using the resources provided on the IQA Referees website!',
      negative_feedback:
        'Unfortunately, you have not passed the Snitch Referee exam. At this time, you will have to wait 24 hours before attempting this exam again. Study up!',
      active: true,
      testable_question_count: 20,
      level: 0,
    },
  });
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
