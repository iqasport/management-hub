import { createClient } from 'graphql/generated/genql';

export const client = createClient({
  url: `${process.env.BASE_URL}/api/graphql`,
});

export default client;
