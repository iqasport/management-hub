import prisma from 'modules/prisma';
import { NextApiRequest, NextApiResponse } from 'next';

const getUser = async (req: NextApiRequest, res: NextApiResponse) => {
  try {
    const user = await prisma.users.findUnique({
      where: {
        // uuid: req?.query?.uuid?.toString(),
        email: 'referee@example.com',
      },
    });
    res.status(200);
    res.json({ user });
  } catch (error) {
    res.status(500);
    res.json({ error });
  }
};

const updateUser = async (req: NextApiRequest, res: NextApiResponse) => {
  try {
    const user = await prisma.users.update({
      where: {
        uuid: req?.query?.uuid?.toString(),
      },
      data: req.body,
    });
    res.status(200);
    res.json({ user });
  } catch (error) {
    res.status(500);
    res.json({ error });
  }
};

const deleteUser = async (req: NextApiRequest, res: NextApiResponse) => {
  try {
    await prisma.users.delete({
      where: {
        uuid: req?.query?.uuid?.toString(),
      },
    });

    res.status(204);
  } catch (error) {
    res.status(500);
    res.json({ error });
  }
};

export default async function User(req: NextApiRequest, res: NextApiResponse) {
  switch (req.method) {
    case 'GET':
      return getUser(req, res);
    case 'PUT':
      return updateUser(req, res);
    case 'DELETE':
      return deleteUser(req, res);
    default: {
      res.status(404);
      res.send({});
    }
  }
}
