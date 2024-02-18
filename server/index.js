import {startApp} from "./app/factories/app-factory.js";
import configure from "./app/app-config.js";
import moduleLoad from "./app/app-loader.js";
/*
* NOTICE: KEEP THIS FILE CLEAN AND SMALL
*
* The purpose of this file is to make the top level calls
* and boot the app! Nothing else really!
*
* Especially, avoid making any module inside the app directory
* to become dependant of this file, it's opposite!
**/
/**
 * The responsibility of app-loader is to make sure that controllers
 * are loaded upon the boot, and also any potential custom module
 * loading logic can be included in its default export!
 *
 * Therefore,
 * make sure each controller module is imported inside `app-loader.js`
 */
await moduleLoad();
/**
 * Configure function should include calls to middlewares setup
 * Example
 *      app.use(foo)
 */
await configure();
/**
 * Now that we are sure modules are loaded and our app
 * is configured we can proceed with appStart!
 */
await startApp(3000);
