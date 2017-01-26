/**
 * Challenge: https://www.hackerrank.com/challenges/insertionsort1
 */

function processData(input) {
    var inputs = input.split('\n');
    var n = inputs[0];
    var array = inputs[1].split(' ');
    var to_be_inserted = array.pop();  
    var algo = new InsertionSort();

    algo.insert(array, to_be_inserted);
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
  },
  copy: function(a, i, j){
    a[j] = a[i];
  }
};

function InsertionSort() {}

InsertionSort.prototype.insert = function(a, to_be_inserted){
  var n = a.length;

  for(var j = n; j >= 0; j--){
    Swapable.copy(a, j-1, j);
    
    if(Comparable.less(to_be_inserted, a[j-1])) {
      console.log(a.join(' '));
    } else {
      a[j] = to_be_inserted;
      break;
    }
  }

  console.log(a.join(' '));

  return 0;
};