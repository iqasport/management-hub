import { objectType, mutationType, nonNull, stringArg, queryType } from 'nexus';
import { TestResults } from './test_results';

export const Users = objectType({
  name: 'users',
  definition(t) {
    t.nonNull.id('uuid', { description: 'UUID of the user' });
    t.nonNull.string('email');
    t.string('first_name');
    t.string('last_name');
    t.string('bio');
    t.string('pronouns');
    t.boolean('show_pronouns');
    t.boolean('admin');
    t.boolean('export_name');
    t.string('reset_password_token');
    t.string('stripe_customer_id');
    t.list.field('test_results', {
      type: TestResults,
      resolve: async (root, args, ctx) => {
        const { test_results } = await ctx.db.users.findUnique({
          where: { uuid: root.uuid },
          include: { test_results: true },
        });

        return test_results;
      },
    });
  },
});

// const Mutation = mutationType({
//   definition(t) {
//     // your mutations will go here
//   },
// });

export const Query = queryType({
  definition(t) {
    t.field('userByUuid', {
      type: Users,
      args: {
        uuid: nonNull(stringArg()),
      },
      resolve: async (_, { uuid }, ctx) => {
        try {
          return ctx.db.users.findUnique({
            where: { uuid },
          });
        } catch (error) {
          throw new Error(`${error}`);
        }
      },
    });
  },
});
