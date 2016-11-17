d3.json('data/matches.json', function(json) {
  var matches = json._embedded.matches;

  var players = {};



  matches.forEach(function(match){
    var winner = match._links.winners.href[0];
    var loser = match._links.losers.href[0];

    players[winner] || (players[winner] = {matches: []});
    players[winner].matches.append(match);

    // players.append(/* ... */);
  });

  players.forEach(/* go off and fetch player data */);



  console.table(matches);
});
