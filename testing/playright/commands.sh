LOCATION === tests/e2e/
CONFIG == playright.config.ts

npm init playwright@latest

npx playwright test

npx playwright show-report

npx playwright test --ui

npx playwright --version


npx playwright test --workers=1 --ui
