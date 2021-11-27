import { FieldsSelection, Observable } from '@genql/runtime';

export type Scalars = {
  DateTime: any;
  String: string;
  Time: any;
  Boolean: boolean;
  Int: number;
  ID: string;
};

export interface Query {
  users?: users;
  __typename: 'Query';
}

export interface test_results {
  created_at?: Scalars['DateTime'];
  duration?: Scalars['String'];
  passed?: Scalars['Boolean'];
  percentage?: Scalars['Int'];
  test_level?: Scalars['Int'];
  test_uuid?: Scalars['String'];
  time_finished?: Scalars['Time'];
  time_started?: Scalars['Time'];
  user_uuid: Scalars['String'];
  uuid: Scalars['ID'];
  __typename: 'test_results';
}

export interface users {
  admin?: Scalars['Boolean'];
  bio?: Scalars['String'];
  email: Scalars['String'];
  export_name?: Scalars['Boolean'];
  first_name?: Scalars['String'];
  last_name?: Scalars['String'];
  pronouns?: Scalars['String'];
  reset_password_token?: Scalars['String'];
  show_pronouns?: Scalars['Boolean'];
  stripe_customer_id?: Scalars['String'];
  test_results?: (test_results | undefined)[];
  /** UUID of the user */
  uuid: Scalars['ID'];
  __typename: 'users';
}

export interface QueryRequest {
  users?: [{ uuid: Scalars['String'] }, usersRequest];
  __typename?: boolean | number;
  __scalar?: boolean | number;
}

export interface test_resultsRequest {
  created_at?: boolean | number;
  duration?: boolean | number;
  passed?: boolean | number;
  percentage?: boolean | number;
  test_level?: boolean | number;
  test_uuid?: boolean | number;
  time_finished?: boolean | number;
  time_started?: boolean | number;
  user_uuid?: boolean | number;
  uuid?: boolean | number;
  __typename?: boolean | number;
  __scalar?: boolean | number;
}

export interface usersRequest {
  admin?: boolean | number;
  bio?: boolean | number;
  email?: boolean | number;
  export_name?: boolean | number;
  first_name?: boolean | number;
  last_name?: boolean | number;
  pronouns?: boolean | number;
  reset_password_token?: boolean | number;
  show_pronouns?: boolean | number;
  stripe_customer_id?: boolean | number;
  test_results?: test_resultsRequest;
  /** UUID of the user */
  uuid?: boolean | number;
  __typename?: boolean | number;
  __scalar?: boolean | number;
}

const Query_possibleTypes = ['Query'];
export const isQuery = (obj?: { __typename?: any } | null): obj is Query => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isQuery"');
  return Query_possibleTypes.includes(obj.__typename);
};

const test_results_possibleTypes = ['test_results'];
export const istest_results = (
  obj?: { __typename?: any } | null
): obj is test_results => {
  if (!obj?.__typename)
    throw new Error('__typename is missing in "istest_results"');
  return test_results_possibleTypes.includes(obj.__typename);
};

const users_possibleTypes = ['users'];
export const isusers = (obj?: { __typename?: any } | null): obj is users => {
  if (!obj?.__typename) throw new Error('__typename is missing in "isusers"');
  return users_possibleTypes.includes(obj.__typename);
};

export interface QueryPromiseChain {
  users: (args: { uuid: Scalars['String'] }) => usersPromiseChain & {
    get: <R extends usersRequest>(
      request: R,
      defaultValue?: FieldsSelection<users, R> | undefined
    ) => Promise<FieldsSelection<users, R> | undefined>;
  };
}

export interface QueryObservableChain {
  users: (args: { uuid: Scalars['String'] }) => usersObservableChain & {
    get: <R extends usersRequest>(
      request: R,
      defaultValue?: FieldsSelection<users, R> | undefined
    ) => Observable<FieldsSelection<users, R> | undefined>;
  };
}

export interface test_resultsPromiseChain {
  created_at: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['DateTime'] | undefined
    ) => Promise<Scalars['DateTime'] | undefined>;
  };
  duration: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Promise<Scalars['String'] | undefined>;
  };
  passed: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Boolean'] | undefined
    ) => Promise<Scalars['Boolean'] | undefined>;
  };
  percentage: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Int'] | undefined
    ) => Promise<Scalars['Int'] | undefined>;
  };
  test_level: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Int'] | undefined
    ) => Promise<Scalars['Int'] | undefined>;
  };
  test_uuid: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Promise<Scalars['String'] | undefined>;
  };
  time_finished: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Time'] | undefined
    ) => Promise<Scalars['Time'] | undefined>;
  };
  time_started: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Time'] | undefined
    ) => Promise<Scalars['Time'] | undefined>;
  };
  user_uuid: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String']
    ) => Promise<Scalars['String']>;
  };
  uuid: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['ID']
    ) => Promise<Scalars['ID']>;
  };
}

export interface test_resultsObservableChain {
  created_at: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['DateTime'] | undefined
    ) => Observable<Scalars['DateTime'] | undefined>;
  };
  duration: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Observable<Scalars['String'] | undefined>;
  };
  passed: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Boolean'] | undefined
    ) => Observable<Scalars['Boolean'] | undefined>;
  };
  percentage: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Int'] | undefined
    ) => Observable<Scalars['Int'] | undefined>;
  };
  test_level: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Int'] | undefined
    ) => Observable<Scalars['Int'] | undefined>;
  };
  test_uuid: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Observable<Scalars['String'] | undefined>;
  };
  time_finished: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Time'] | undefined
    ) => Observable<Scalars['Time'] | undefined>;
  };
  time_started: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Time'] | undefined
    ) => Observable<Scalars['Time'] | undefined>;
  };
  user_uuid: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String']
    ) => Observable<Scalars['String']>;
  };
  uuid: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['ID']
    ) => Observable<Scalars['ID']>;
  };
}

export interface usersPromiseChain {
  admin: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Boolean'] | undefined
    ) => Promise<Scalars['Boolean'] | undefined>;
  };
  bio: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Promise<Scalars['String'] | undefined>;
  };
  email: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String']
    ) => Promise<Scalars['String']>;
  };
  export_name: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Boolean'] | undefined
    ) => Promise<Scalars['Boolean'] | undefined>;
  };
  first_name: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Promise<Scalars['String'] | undefined>;
  };
  last_name: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Promise<Scalars['String'] | undefined>;
  };
  pronouns: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Promise<Scalars['String'] | undefined>;
  };
  reset_password_token: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Promise<Scalars['String'] | undefined>;
  };
  show_pronouns: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Boolean'] | undefined
    ) => Promise<Scalars['Boolean'] | undefined>;
  };
  stripe_customer_id: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Promise<Scalars['String'] | undefined>;
  };
  test_results: {
    get: <R extends test_resultsRequest>(
      request: R,
      defaultValue?:
        | (FieldsSelection<test_results, R> | undefined)[]
        | undefined
    ) => Promise<(FieldsSelection<test_results, R> | undefined)[] | undefined>;
  };

  /** UUID of the user */
  uuid: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['ID']
    ) => Promise<Scalars['ID']>;
  };
}

export interface usersObservableChain {
  admin: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Boolean'] | undefined
    ) => Observable<Scalars['Boolean'] | undefined>;
  };
  bio: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Observable<Scalars['String'] | undefined>;
  };
  email: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String']
    ) => Observable<Scalars['String']>;
  };
  export_name: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Boolean'] | undefined
    ) => Observable<Scalars['Boolean'] | undefined>;
  };
  first_name: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Observable<Scalars['String'] | undefined>;
  };
  last_name: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Observable<Scalars['String'] | undefined>;
  };
  pronouns: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Observable<Scalars['String'] | undefined>;
  };
  reset_password_token: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Observable<Scalars['String'] | undefined>;
  };
  show_pronouns: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['Boolean'] | undefined
    ) => Observable<Scalars['Boolean'] | undefined>;
  };
  stripe_customer_id: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['String'] | undefined
    ) => Observable<Scalars['String'] | undefined>;
  };
  test_results: {
    get: <R extends test_resultsRequest>(
      request: R,
      defaultValue?:
        | (FieldsSelection<test_results, R> | undefined)[]
        | undefined
    ) => Observable<
      (FieldsSelection<test_results, R> | undefined)[] | undefined
    >;
  };

  /** UUID of the user */
  uuid: {
    get: (
      request?: boolean | number,
      defaultValue?: Scalars['ID']
    ) => Observable<Scalars['ID']>;
  };
}
