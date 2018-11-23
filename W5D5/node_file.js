const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdou
})

reader.question('Would you like some tea?', (res) => {
  if (res === 'yes') {
    reader.question('Would you like some biscuits?', (res) => {
      console.log((`Your reply was ${res}`));
    });
  }
  console.log(` Your reply was ${res}`);
});

reader.close();
