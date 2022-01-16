module.exports = {
  scalars: [0, 2, 3, 5, 6, 7],
  types: {
    DateTime: {},
    Query: {
      userByUuid: [
        8,
        {
          uuid: [2, 'String!'],
        },
      ],
      __typename: [2],
    },
    String: {},
    Time: {},
    test_results: {
      created_at: [0],
      duration: [2],
      passed: [5],
      percentage: [6],
      test_level: [6],
      test_uuid: [2],
      time_finished: [3],
      time_started: [3],
      user_uuid: [2],
      uuid: [7],
      __typename: [2],
    },
    Boolean: {},
    Int: {},
    ID: {},
    users: {
      admin: [5],
      bio: [2],
      email: [2],
      export_name: [5],
      first_name: [2],
      last_name: [2],
      pronouns: [2],
      reset_password_token: [2],
      show_pronouns: [5],
      stripe_customer_id: [2],
      test_results: [4],
      uuid: [7],
      __typename: [2],
    },
  },
};
