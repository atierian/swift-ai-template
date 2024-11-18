import { type ClientSchema, a, defineData } from '@aws-amplify/backend';

const schema = a.schema({
  generateRecipe: a.generation({
    aiModel: a.ai.model('Claude 3 Haiku'),
    systemPrompt: 'You are a helpful assistant that generates recipes.',
  })
    .arguments({ description: a.string() })
    .returns(
      a.customType({
        name: a.string().required(),
        ingredients: a.string().required().array().required(),
        instructions: a.string().required(),
      })
    )
    .authorization((allow) => allow.authenticated()),

  assistantChat: a.conversation({
    aiModel: a.ai.model('Claude 3 Haiku'),
    systemPrompt: `You are a helpful chatbot that assists the user in their tasks
    Respond in the poetic form of haiku.`,
  })
    .authorization((allow) => allow.owner()),
});

export type Schema = ClientSchema<typeof schema>;

export const data = defineData({
  schema,
  authorizationModes: {
    defaultAuthorizationMode: 'userPool',
  },
});
