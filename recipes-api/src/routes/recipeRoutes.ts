import { Router } from "express";
import { getRecipes } from "../controller/recipeController";

const router = Router();

router.get("/recipes", getRecipes);

export default router;