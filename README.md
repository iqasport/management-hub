# 🤾‍♀️🏐 IQA Management Hub

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md) 

Management Hub is a IQA Web application built in Next.js and React.

Please note that this project is released with a Contributor Code of Conduct. By participating in this project you agree to abide by its [terms](CODE_OF_CONDUCT.md).

## Powered by Vercel

<p align="left">
  <a aria-label="Vercel logo" href="https://vercel.com/?utm_source=iqasport">
    <img src="public/images/powered-by-vercel.svg" width="212" height="44">
  </a>
</p>

---

## QuickStart Local Development

The following guide spins up a local environment for development, with an up-to-date Postgres database seeded with dummy data running in the background. Each step must be completed before moving on to the next one.

### Prequisites

This project assumes you already have a Node evironment setup and have yarn installed. We strongly recommend using a Node Version Manager like [nvm](https://github.com/nvm-sh/nvm). You will also need to have [Docker Desktop](https://www.docker.com/get-started)

You will need a `.env` file to set environment variables - duplicate `.env.example` and rename the copy to `.env` to get started.

### Steps

1. Start Docker Desktop - this can take a few minutes
2. In your terminal go in to the management-hub folder (where this file is) and run `yarn install`
3. In the same folder run `yarn db:setup` which will start the docker container with Postgres, run migrations and seed the database
4. Finally run `yarn dev` in the same folder

Open [http://localhost:3000](http://localhost:3000) with your browser to see the application.

To tear down the database run `yarn docker:down`. To reinitialise simply run steps 3 & 4 again.

---

## Key Technology and Documentation

- [Next.js](https://nextjs.org/docs)
- [React](https://reactjs.org/docs/getting-started.html)
- [Prisma](https://www.prisma.io/docs/getting-started)
- [ChakraUI](https://chakra-ui.com/docs/getting-started)
- [Emotion](https://emotion.sh/docs/introduction)
