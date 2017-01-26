/**
 * Challenge: https://www.hackerrank.com/challenges/runningtime
 */

function processData(input) {
    var inputs = input.split('\n');
    var n = inputs[0];
    var array = inputs[1].split(' ');

    // converts all elements from the array to int before sorting it :P
    array = array.map(function(x){ return 1*x });

    var algo = new InsertionSort();

    algo.sort(array);
} 

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input);
});


var Comparable = {
  lessOrEqual: function(a, b){
    return a <= b;
  },
  less: function(a, b){
    return a < b;
  }
};

var Swapable = {
  swap: function(a, i, j){
    var temp = a[i];
    a[i] = a[j];
    a[j] = temp;
  }
};

function InsertionSort() {}

InsertionSort.prototype.sort = function(a){
  var n = a.length;
  var swaps = 0;

  for(var i = 1; i < n; i++) {
    for(var j = i; j > 0 && Comparable.less(a[j], a[j-1]); j--) {
      Swapable.swap(a, j-1, j);
      swaps++;
    }
  }

  console.log(swaps);
};