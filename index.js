console.log('Starting server');

//require modules
const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const massive = require('massive');
const session = require('express-session');

//changed to a hosted database
const connectionString = 	'postgres://jkvkigfj:t4PnoYZB9Me3aHj4WA3mOcsxBJ9b9_9g@pellefant.db.elephantsql.com:5432/jkvkigfj';

const db = massive.connectSync({
    connectionString,
});

//create session
app.use(session({
    secret: 'asdfasdfasdfasdf',
    resave: true,
    saveUninitialized: true
}));

//set port for app to listen
const port = 3001;

app.use(bodyParser.json());

app.use(express.static(__dirname));

app.post('/register_user/', (req, res) => {
    db.check_email_avail([req.body.email], (err, response) => {
        if (response.data) {
            res.status(500).json(err)
        }
        else {
            db.register_user([req.body.name, req.body.email, req.body.password], (err, response) => {
                err ?
                res.status(500).json(err) :
                res.status(200).json(response)
            })    
        }
    })
})

app.post('/get_user/', (req, res) => {
    let email = req.body.email;
    let password = req.body.password;
    db.get_user([req.body.email, req.body.password], (err, response) => {
        if(err) {
            res.status(500).json(err)
        }
        else {
            req.session.user = response[0]
            res.status(200).json(response)
        }
    })
})

app.get('/get_friends/', (req, res) => {
    db.get_friends([req.session.user.id], (err, response) => {
        if(err) res.status(500).json(err)
        else res.status(200).json(response)
    })
})

app.get('/get_conversations/', (req, res) => {
    db.get_conversations([req.session.user.id], (err, response) => {
        if(err) res.status(500).json(err)
        else res.status(200).json(response)
    })
})

app.post('/get_conversation_content/', (req, res) => {
    db.get_conversation_content([req.body.id], (err, response) => {
        if (err) res.status(500).json(err)
        else {
            res.status(200).json(response)
        }
    })
})
app.post('/get_conversation_members/', (req, res) => {
    db.get_conversation_members([req.body.id], (err, response) => {
        if (err) res.status(500).json(err)
        else {
            res.status(200).json(response)
        }
    })
})

app.post('/get_friend_friends/', (req, res) => {
    db.get_friends([req.body.id], (err, response) => {
        if (err) res.status(500).json(err);
        else {
            res.status(200).json(response)
        }
    })
})





app.listen(port, () => {
    console.log('Listening on port ' + port)
})

