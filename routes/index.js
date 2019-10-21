var express = require('express');
var router = express.Router();
const ExtractJwt = require('passport-jwt').ExtractJwt

router.use('/user/', require(__dirname + '/user'))

router.post('/logout', (req, res) => {
  if (req.user) {
    req.logOut();
    res.status(200).json({
      status: 200,
      message: 'Logout success'
    })
  }
  else {
    res.status(502).json({
      status: 502,
      message: 'Bad request'
    })
  }
});

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: 'Express' });
});

module.exports = router;
