import { objectType } from 'nexus';

export const TestResults = objectType({
  name: 'test_results',
  definition(t) {
    t.nonNull.id('uuid');
    t.nonNull.string('user_uuid');
    t.string('test_uuid');
    t.int('test_level');
    t.boolean('passed');
    t.int('test_level');
    t.field('created_at', { type: 'DateTime' });
    t.string('duration');
    t.int('percentage');
    t.field('time_started', { type: 'Time' });
    t.field('time_finished', { type: 'Time' });
  },
});
