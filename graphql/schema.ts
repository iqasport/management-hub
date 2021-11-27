import { asNexusMethod, makeSchema } from 'nexus';
import { DateTimeResolver, TimeResolver } from 'graphql-scalars';
import * as path from 'path';

import { Query } from './schema/users';

const DateTime = asNexusMethod(DateTimeResolver, 'DateTime');
const Time = asNexusMethod(TimeResolver, 'Time');

export const schema = makeSchema({
  types: [DateTime, Time, Query],
  outputs: {
    schema: path.join(process.cwd(), 'graphql/schema.graphql'),
    typegen: path.join(process.cwd(), 'graphql/generated/nexus.d.ts'),
  },
  contextType: {
    module: path.join(process.cwd(), 'graphql/context.ts'),
    export: 'Context',
  },
  sourceTypes: {
    modules: [
      {
        module: '@prisma/client',
        alias: 'db',
      },
    ],
  },
});
