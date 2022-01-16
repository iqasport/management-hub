/**
 * This file was generated by Nexus Schema
 * Do not make changes to this file directly
 */

import type { Context } from './../context';
import type { core } from 'nexus';
declare global {
  interface NexusGenCustomInputMethods<TypeName extends string> {
    /**
     * A date-time string at UTC, such as 2007-12-03T10:15:30Z, compliant with the `date-time` format outlined in section 5.6 of the RFC 3339 profile of the ISO 8601 standard for representation of dates and times using the Gregorian calendar.
     */
    DateTime<FieldName extends string>(
      fieldName: FieldName,
      opts?: core.CommonInputFieldConfig<TypeName, FieldName>
    ): void; // "DateTime";
    /**
     * A time string at UTC, such as 10:15:30Z, compliant with the `full-time` format outlined in section 5.6 of the RFC 3339profile of the ISO 8601 standard for representation of dates and times using the Gregorian calendar.
     */
    Time<FieldName extends string>(
      fieldName: FieldName,
      opts?: core.CommonInputFieldConfig<TypeName, FieldName>
    ): void; // "Time";
  }
}
declare global {
  interface NexusGenCustomOutputMethods<TypeName extends string> {
    /**
     * A date-time string at UTC, such as 2007-12-03T10:15:30Z, compliant with the `date-time` format outlined in section 5.6 of the RFC 3339 profile of the ISO 8601 standard for representation of dates and times using the Gregorian calendar.
     */
    DateTime<FieldName extends string>(
      fieldName: FieldName,
      ...opts: core.ScalarOutSpread<TypeName, FieldName>
    ): void; // "DateTime";
    /**
     * A time string at UTC, such as 10:15:30Z, compliant with the `full-time` format outlined in section 5.6 of the RFC 3339profile of the ISO 8601 standard for representation of dates and times using the Gregorian calendar.
     */
    Time<FieldName extends string>(
      fieldName: FieldName,
      ...opts: core.ScalarOutSpread<TypeName, FieldName>
    ): void; // "Time";
  }
}

declare global {
  interface NexusGen extends NexusGenTypes {}
}

export interface NexusGenInputs {}

export interface NexusGenEnums {}

export interface NexusGenScalars {
  String: string;
  Int: number;
  Float: number;
  Boolean: boolean;
  ID: string;
  DateTime: any;
  Time: any;
}

export interface NexusGenObjects {
  Query: {};
  test_results: {
    // root type
    created_at?: NexusGenScalars['DateTime'] | null; // DateTime
    duration?: string | null; // String
    passed?: boolean | null; // Boolean
    percentage?: number | null; // Int
    test_level?: number | null; // Int
    test_uuid?: string | null; // String
    time_finished?: NexusGenScalars['Time'] | null; // Time
    time_started?: NexusGenScalars['Time'] | null; // Time
    user_uuid: string; // String!
    uuid: string; // ID!
  };
  users: {
    // root type
    admin?: boolean | null; // Boolean
    bio?: string | null; // String
    email: string; // String!
    export_name?: boolean | null; // Boolean
    first_name?: string | null; // String
    last_name?: string | null; // String
    pronouns?: string | null; // String
    reset_password_token?: string | null; // String
    show_pronouns?: boolean | null; // Boolean
    stripe_customer_id?: string | null; // String
    uuid: string; // ID!
  };
}

export interface NexusGenInterfaces {}

export interface NexusGenUnions {}

export type NexusGenRootTypes = NexusGenObjects;

export type NexusGenAllTypes = NexusGenRootTypes & NexusGenScalars;

export interface NexusGenFieldTypes {
  Query: {
    // field return type
    userByUuid: NexusGenRootTypes['users'] | null; // users
  };
  test_results: {
    // field return type
    created_at: NexusGenScalars['DateTime'] | null; // DateTime
    duration: string | null; // String
    passed: boolean | null; // Boolean
    percentage: number | null; // Int
    test_level: number | null; // Int
    test_uuid: string | null; // String
    time_finished: NexusGenScalars['Time'] | null; // Time
    time_started: NexusGenScalars['Time'] | null; // Time
    user_uuid: string; // String!
    uuid: string; // ID!
  };
  users: {
    // field return type
    admin: boolean | null; // Boolean
    bio: string | null; // String
    email: string; // String!
    export_name: boolean | null; // Boolean
    first_name: string | null; // String
    last_name: string | null; // String
    pronouns: string | null; // String
    reset_password_token: string | null; // String
    show_pronouns: boolean | null; // Boolean
    stripe_customer_id: string | null; // String
    test_results: Array<NexusGenRootTypes['test_results'] | null> | null; // [test_results]
    uuid: string; // ID!
  };
}

export interface NexusGenFieldTypeNames {
  Query: {
    // field return type name
    userByUuid: 'users';
  };
  test_results: {
    // field return type name
    created_at: 'DateTime';
    duration: 'String';
    passed: 'Boolean';
    percentage: 'Int';
    test_level: 'Int';
    test_uuid: 'String';
    time_finished: 'Time';
    time_started: 'Time';
    user_uuid: 'String';
    uuid: 'ID';
  };
  users: {
    // field return type name
    admin: 'Boolean';
    bio: 'String';
    email: 'String';
    export_name: 'Boolean';
    first_name: 'String';
    last_name: 'String';
    pronouns: 'String';
    reset_password_token: 'String';
    show_pronouns: 'Boolean';
    stripe_customer_id: 'String';
    test_results: 'test_results';
    uuid: 'ID';
  };
}

export interface NexusGenArgTypes {
  Query: {
    userByUuid: {
      // args
      uuid: string; // String!
    };
  };
}

export interface NexusGenAbstractTypeMembers {}

export interface NexusGenTypeInterfaces {}

export type NexusGenObjectNames = keyof NexusGenObjects;

export type NexusGenInputNames = never;

export type NexusGenEnumNames = never;

export type NexusGenInterfaceNames = never;

export type NexusGenScalarNames = keyof NexusGenScalars;

export type NexusGenUnionNames = never;

export type NexusGenObjectsUsingAbstractStrategyIsTypeOf = never;

export type NexusGenAbstractsUsingStrategyResolveType = never;

export type NexusGenFeaturesConfig = {
  abstractTypeStrategies: {
    isTypeOf: false;
    resolveType: true;
    __typename: false;
  };
};

export interface NexusGenTypes {
  context: Context;
  inputTypes: NexusGenInputs;
  rootTypes: NexusGenRootTypes;
  inputTypeShapes: NexusGenInputs & NexusGenEnums & NexusGenScalars;
  argTypes: NexusGenArgTypes;
  fieldTypes: NexusGenFieldTypes;
  fieldTypeNames: NexusGenFieldTypeNames;
  allTypes: NexusGenAllTypes;
  typeInterfaces: NexusGenTypeInterfaces;
  objectNames: NexusGenObjectNames;
  inputNames: NexusGenInputNames;
  enumNames: NexusGenEnumNames;
  interfaceNames: NexusGenInterfaceNames;
  scalarNames: NexusGenScalarNames;
  unionNames: NexusGenUnionNames;
  allInputTypes:
    | NexusGenTypes['inputNames']
    | NexusGenTypes['enumNames']
    | NexusGenTypes['scalarNames'];
  allOutputTypes:
    | NexusGenTypes['objectNames']
    | NexusGenTypes['enumNames']
    | NexusGenTypes['unionNames']
    | NexusGenTypes['interfaceNames']
    | NexusGenTypes['scalarNames'];
  allNamedTypes:
    | NexusGenTypes['allInputTypes']
    | NexusGenTypes['allOutputTypes'];
  abstractTypes: NexusGenTypes['interfaceNames'] | NexusGenTypes['unionNames'];
  abstractTypeMembers: NexusGenAbstractTypeMembers;
  objectsUsingAbstractStrategyIsTypeOf: NexusGenObjectsUsingAbstractStrategyIsTypeOf;
  abstractsUsingStrategyResolveType: NexusGenAbstractsUsingStrategyResolveType;
  features: NexusGenFeaturesConfig;
}

declare global {
  interface NexusGenPluginTypeConfig<TypeName extends string> {}
  interface NexusGenPluginInputTypeConfig<TypeName extends string> {}
  interface NexusGenPluginFieldConfig<
    TypeName extends string,
    FieldName extends string
  > {}
  interface NexusGenPluginInputFieldConfig<
    TypeName extends string,
    FieldName extends string
  > {}
  interface NexusGenPluginSchemaConfig {}
  interface NexusGenPluginArgConfig {}
}