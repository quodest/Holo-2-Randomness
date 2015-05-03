class Edge {
  Point a;
  Point b;

  Edge(Point a_, Point b_) {
    a = a_;
    b = b_;
  }

  boolean equals(Edge other) {
    return (a == other.a && b == other.b) || (a == other.b && b == other.a);
  }

  boolean alsoIn(Triangle t) {
    for (int i = 0; i < t.edges.length; i++) {
      if (this.equals(t.edges[i])) {
        return true;
      }
    }
    return false;
  }
  
  void display() {
    stroke(255,150);
    strokeWeight(1);
    line(a.x,a.y,b.x,b.y);
  }
  
  String toString() {
    return a.toString() + " : " + b.toString(); 
  }
}