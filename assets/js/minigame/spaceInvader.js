var ship;
var targets = [];
var shots = [];

function setup() {
    createCanvas(600, 400);
    ship = new Ship();
    for (var i=0; i<6; i++) {
        targets[i] = new Target(i*80+80, 60);
    }
}

function draw() {
    background(51);
    ship.show();
    ship.move();
    for (var i=0; i<shots.length; i++) {
        shots[i].show();
        shots[i].move();
        for (var j=0; j<targets.length; j++) {
            if(shots[i].hits(targets[j])){
                targets[j].reduce();
                shots[i].end();
            }
        }
    }

    var edge = false;
    for (var i=0; i<targets.length; i++) {
        targets[i].show();
        targets[i].move();

        if(targets[i].x + targets[i].r > width || targets[i].x - targets[i].r < 0) {
            edge = true;
        }
    }

    if(edge) {
        for (var i=0; i<targets.length; i++) {
            targets[i].shiftDown();
        }
    }
    for (var i=0; i<shots.length; i++) {
        if(shots[i].delete) {
            shots.splice(i, 1);
        }
    }
}

function keyPressed() {
    if (keyCode === RIGHT_ARROW) {
        ship.setDir(1);
    } else if (keyCode === LEFT_ARROW) {
        ship.setDir(-1);
    } else if (key === ' ') {
        var shot = new Shot(ship.x + 10, height-20);
        shots.push(shot)
    }
}

function keyReleased() {
    if (keyCode === RIGHT_ARROW || keyCode === LEFT_ARROW) {
        ship.setDir(0);
    }
}

function Ship() {
    this.x = width/2;
    this.xdir = 0;

    this.show = function() {
        fill(255);
        // rectMode(CENTER);
        rect(this.x, height-20, 20, 20);
    }

    this.move = function() {
        this.x += this.xdir*5;
    }

    this.setDir = function(dir) {
        this.xdir = dir;
    }
}

function Target(x, y) {
    this.x = x;
    this.y = y;
    this.r = 30;
    this.originalr = 30;
    this.xdir = 1;

    this.show = function() {
        fill(255, 0, 200);
        ellipse(this.x, this.y, this.r*2, this.r*2);
    }

    this.reduce = function() {
        this.r = this.r - 1;
    }

    this.move = function() {
        this.x = this.x + this.xdir;
    }

    this.shiftDown = function() {
        this.xdir *= -1;
        this.y += this.originalr;
    }
}

function Shot(x, y) {
    this.x = x;
    this.y = y;
    this.r = 8;
    this.delete = false;

    this.show = function() {
        noStroke();
        fill(150, 0, 200);
        ellipse(this.x, this.y, this.r*2, this.r*2);
    }

    this.move = function() {
        this.y = this.y - 1;
    }

    this.hits = function(target) {
        var d = dist(this.x, this.y, target.x, target.y);
        if(d < target.r) {
            return true;
        }
        return false;
    }

    this.end = function() {
        this.delete = true;
    }
}