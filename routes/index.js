var express = require('express');
var router = express.Router();
const passport = require('passport')
const userDB = require('../models/user')
const util = require('../helpers/helper')

router.get('/me', passport.authenticate('jwt', { session: false }), (req, res) => {
  delete req.user['password']
  res.status(200).send({
    code: 200,
    message: {
      iat: (new Date()).getTime(),
      ...req.user,
    }
  })
})

router.post('/user/update-profile', passport.authenticate('jwt', { session: false }), (req, res) => {
  var user = req.body
  console.log(user)
  var username = user.username
  if (username) {
    userDB.findByUsername(username).then(value => {
      if (value) {
        value.name = user.name
        value.email = user.email
        value.password = util.hash_password(user.password)
        userDB.updateUser(value).then(rs => {
          res.status(200).json({
            code: 200,
            message: 'Update user success'
          })
        }).catch(err => {
          console.error(err)
          throw err
        })
      }
    }).catch(err => {
      console.error(err)
      throw error
    })
  }
  else {
    res.status(400).json({
      code: 400,
      status: "Bad request"
    })
  }

})

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
