var express = require('express');
var router = express.Router();
const { getHome } = require('../controllers/homeController.js');
const { getAll, getMarketing, getBusiness, getDevelopment, getArt, postProject, updateProject, deleteProject } = require('../controllers/projectsController.js');

/* GET home page. */
router.get('/', getHome);

/* GET latest picks */
router.get('/all', getAll);
router.get('/markting', getMarketing);
router.get('/business', getBusiness);
router.get('/development', getDevelopment);
router.get('/art', getArt);

/* CREATE latest picks */
router.post('/latest_picks', postProject);

/* UPDATE latest picks */
router.put('/latest_picks/:id', updateProject); //by given object ID

/* DELETE latest picks */
router.delete('/latest_picks/:id', deleteProject);//by given object ID


module.exports = router;
