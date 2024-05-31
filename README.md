Your database, named `universe`, is designed to model celestial bodies and their relationships. It currently consists of two tables: `galaxy` and `star`.

1. The `galaxy` table represents galaxies in the universe. Each row in the table represents a single galaxy. The columns in the `galaxy` table are:
   - `galaxy_id`: A unique identifier for each galaxy. This is the primary key of the table.
   - `name`: The name of the galaxy. This is a unique and non-nullable field.
   - `description`: A text description of the galaxy.
   - `age_in_millions_of_years`: The age of the galaxy in millions of years.
   - `is_spherical`: A boolean indicating whether the galaxy is spherical.
   - `distance_from_earth`: The distance of the galaxy from Earth.

2. The `star` table represents stars in the universe. Each row in the table represents a single star. The columns in the `star` table are:
   - `star_id`: A unique identifier for each star. This is the primary key of the table.
   - `name`: The name of the star. This is a unique and non-nullable field.
   - `galaxy_id`: The ID of the galaxy that the star belongs to. This is a foreign key referencing the `galaxy_id` in the `galaxy` table.
   - `age_in_millions_of_years`: The age of the star in millions of years.
   - `has_life`: A boolean indicating whether the star has life.

The `star` table has a foreign key relationship with the `galaxy` table through the `galaxy_id` column. This means that each star is associated with a galaxy in the `galaxy` table.
