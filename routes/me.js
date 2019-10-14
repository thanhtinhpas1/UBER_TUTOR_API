const express = require('express')
const router = express.Router();

router.get('/', (req, res) => {
    res.status(200).send({
        code: 200,
        message: req.user
    })
})
module.exports = router;