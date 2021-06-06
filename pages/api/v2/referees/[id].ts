import prisma from 'modules/prisma';
import { NextApiRequest, NextApiResponse } from 'next';

// TODO remove once ids are CUIDs
BigInt.prototype.toJSON = function () {
  return this.toString();
};

const getReferee = async (req: NextApiRequest, res: NextApiResponse) => {
  try {
    const referee = await prisma.users.findUnique({
      where: {
        id: Number(req.query.id),
      },
    });
    res.status(200);
    res.json({ referee });
  } catch (error) {
    res.status(500);
    res.json({ error });
  }
};

const updateReferee = async (req: NextApiRequest, res: NextApiResponse) => {
  try {
    const referee = await prisma.users.update({
      where: {
        id: Number(req.query.id),
      },
      data: req.body,
    });
    res.status(200);
    res.json({ referee });
  } catch (error) {
    res.status(500);
    res.json({ error });
  }
};

const deleteReferee = async (req: NextApiRequest, res: NextApiResponse) => {
  try {
    await prisma.users.delete({
      where: {
        id: Number(req.query.id),
      },
    });

    res.status(204);
  } catch (error) {
    res.status(500);
    res.json({ error });
  }
};

export default async function (req: NextApiRequest, res: NextApiResponse) {
  switch (req.method) {
    case 'GET':
      getReferee(req, res);
      break;
    case 'PUT':
      updateReferee(req, res);
      break;
    case 'DELETE':
      deleteReferee(req, res);
      break;
    default: {
      res.status(404);
      res.send({});
    }
  }
}
