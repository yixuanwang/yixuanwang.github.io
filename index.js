var express = require('express');

var app = express();

// setting up handlebars as my view engine
var handlebars = require('express3-handlebars')
		.create({ defaultLayout:'main' });
app.engine('handlebars', handlebars.engine);
app.set('view engine', 'handlebars');

app.set('port', process.env.PORT || 3000);

// routes
app.get('/', function(req, res){
	res.render('home');
});

app.get('/about', function(req, res){
	res.render('about');
});

//error pages
app.use(function(req, res){
	res.status(404);
	res.render('404');
});

app.use(function(err, req, res, next){
	console.error(err.stack);
	res.status(500);
	res.render('500');
});

// set up public files
app.use(express.static(__dirname + '/public'));

app.listen(app.get('port'), function(){
	console.log('Express started :) http://localhost:' + 
		app.get('port') + ' Ctrl-C to end ^^');
});

