const{Given, When, Then} = require('@cucumber/cucumber')
const {assert, expect} = require ('chai')

let results = [ ]
let testdata =[ ]
 Given('I have the following books in the store', function (table) {
   testdata= table.hashes()
  });

  When('I search book by author {string}', function (author) {
   results= testdata.filter(book => book.author== author)
     console.log(results)  
       
  });

  Then('I find {int} books', function (output) {
    expect(results.length).to.equal(output)
  })
