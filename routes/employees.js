const router = require("express").Router();
const upload = require("../middleware/uploadImages");
// const createEmployee = require("../controllers/employees");
const fs = require("fs");
const conn = require("../Db/dbConnection");
const { body, validationResult } = require("express-validator");
const util = require("util");

const EmployeeController = require("../controllers/employeeController");
const EmployeeService = require("../services/employeesServices");
const EmployeeValidator = require("../validator/employeesValidator");

const employeeService = new EmployeeService(conn);
const employeeController = new EmployeeController(employeeService);
const employeeValidator = EmployeeValidator.validate();


router.post(
  "/create",
  upload.single("image"),
  employeeValidator,
  employeeController.createEmployee.bind(employeeController)
);


router.put(
  "/update/:id",
  upload.single("image"),
  employeeValidator,
  employeeController.updateEmployee.bind(employeeController)
);


router.delete(
  "/delete/:id",
  employeeValidator,
  employeeController.deleteEmployee.bind(employeeController)
);


router.get(
  "/showEmployees",
  employeeValidator,
  employeeController.showEmployees.bind(employeeController)
);

router.get(
  "/showEmployee/:id",
  employeeValidator,
  employeeController.showEmployee.bind(employeeController)
);

router.get(
  "/showSpecificEmpys/:job",
  employeeValidator,
  employeeController.showSpecificEmpys.bind(employeeController)
);

module.exports = router;
