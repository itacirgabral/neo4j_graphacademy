CREATE (u:User {
  userId: randomUuid(),
  email: "authenticated@neo4j.com",
  password: "AuthenticateM3! SALT SALT SALT SALT SALT",
  name: "Authenticated User"
})
RETURN u

MATCH (u:User {email: "authenticated@neo4j.com"})
SET u.authenticatedAt = datetime()

MATCH (u:User {email: "authenticated@neo4j.com"})
RETURN u