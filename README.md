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

For local development a database is required, so the following spins up a Postgres Docker Container which runs in the background and seeds it with dummy data.

You will need a `.env` file to set environment variables - use `.env.example` as a template.

1. Start [Docker Desktop](https://www.docker.com/get-started)
2. Run `yarn db:setup` which will start the docker container with Postgres, run migrations and seed the database
3. `yarn install`
4. `yarn dev`

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

To tear down the database run `yarn docker:down`

---

## Key Technology and Documentation

- [Next.js](https://nextjs.org/docs)
- [React](https://reactjs.org/docs/getting-started.html)
- [Prisma](https://www.prisma.io/docs/getting-started)
- [ChakraUI](https://chakra-ui.com/docs/getting-started)
- [Emotion](https://emotion.sh/docs/introduction)
