# Generated with RailsBricks
# Initial seed file to use with Devise User Model

# Temporary admin account

u = User.new(
    username: "admin",
    email: "admin@urleaders.com",
    password: "url1024",
    password_confirmation: "url1024",
    admin: true
)
u.skip_confirmation!
u.save!

geo_type = GeoType.new
geo_type.name = "Point"
geo_type.save!

geo_type = GeoType.new
geo_type.name = "LineString"
geo_type.save!

geo_type = GeoType.new
geo_type.name = "Polygon"
geo_type.save!

geo_type = GeoType.new
geo_type.name = "MultiPoint"
geo_type.save!

geo_type = GeoType.new
geo_type.name = "MultiLineString"
geo_type.save!

geo_type = GeoType.new
geo_type.name = "MultiPolygon"
geo_type.save!

electoral_area_type = ElectoralAreaType.new
electoral_area_type.name = "Parliamentary Constituency"
electoral_area_type.save!

electoral_area_type = ElectoralAreaType.new
electoral_area_type.name = "Assembly Constituency"
electoral_area_type.save!

state_type = StateType.new
state_type.name = "State"
state_type.save!

state_type = StateType.new
state_type.name = "Union Territory"
state_type.save!

election_type = ElectionType.new
election_type.name = "Normal"
election_type.save!

election_type = ElectionType.new
election_type.name = "By Election"
election_type.save!

party_type = PartyType.new
party_type.name = "Party"
party_type.save!

party_type = PartyType.new
party_type.name = "Independent"
party_type.save!

