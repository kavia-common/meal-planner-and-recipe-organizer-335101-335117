#!/bin/bash
cd /home/kavia/workspace/code-generation/meal-planner-and-recipe-organizer-335101-335117/recipe_app_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

