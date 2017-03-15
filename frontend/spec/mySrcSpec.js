describe('jasmine', () => {
  it('works', () => {
    expect(true).toBeTruthy();
  });
});


/*

  - fetch stuff

    fetchMatches() {
      fetch(`/api/matches?team_id=${teamId}`)
    }

    [{id: 1, winner: []}]

    fetchCommunity() {
      fetch(`/api/users?team_id=...`)
    }
    

  - calculations
    bestSocializer(matches, communitySize) => {socializerName: 'Jonathan', numPlayersPlayed: 14, totalPlayersInCommunity: 17}

  - render stuff
    {socializerName: 'Jonathan'} => "The coolest socializer in the whole damn world is <strong>Jonathan</strong>"



  match1 between Jonathan and Shanfan
  match2 between Shanfan and Jonathan
  match3 between Shanfan and Jonathan
  match4 between Jonathan and Liam

  Jonathan - 4 matches, 2 unique opponents
  Shanfan - 3 matches, 1 unique opponent
  Liam - 1 match, 1 unique opponent

  ----
  forEach player {
    calculate # of matches
    calculate # of unique opponent
  }

  sort by # of unique oppoent
  sort by # of matches

*/