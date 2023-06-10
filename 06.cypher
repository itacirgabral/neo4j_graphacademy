MATCH (u:User {userId: $userId})
MATCH (m:Movie {tmdbId: $movieId})
MERGE (u)-[r:RATED]->(m)
SET r.rating = $rating,
    r.timestamp = timestamp()
RETURN m {
  .*,
  rating: r.rating
} AS movie