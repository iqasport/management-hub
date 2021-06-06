import prisma from 'modules/prisma';
import { NextApiRequest, NextApiResponse } from 'next';

// TODO remove once ids are CUIDs
BigInt.prototype.toJSON = function () {
  return this.toString();
};

export default async function (req: NextApiRequest, res: NextApiResponse) {
  switch (req.method) {
    case 'GET': {
      try {
        const referees = await prisma.users.findMany();
        res.status(200);
        res.json({ referees });
      } catch (error) {
        res.status(500);
        res.json({ error });
      }
      break;
    }
    case 'POST': {
      try {
        const referee = await prisma.users.create({
          data: req.body,
        });
        res.status(201);
        res.json({ referee });
      } catch (error) {
        res.status(500);
        res.json({ error });
      }
      break;
    }
    default: {
      res.status(404);
      res.json({});
    }
  }
}
