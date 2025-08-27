import { Request, Response } from "express";
import { recipes } from "../data/recipeMock";

export const getRecipes =(req: Request, res: Response) => {
    res.json(recipes)
}