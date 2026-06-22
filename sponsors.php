<?php
require_once('database.php');

$querySponsors = 'SELECT sponsors.sponsor_name, sponsors.country, teams.team_name FROM sponsors JOIN teams ON sponsors.team_id = teams.team_id GROUP BY sponsor_name ASC;';
$statement = $db->prepare($querySponsors);
$statement->execute();
$sponsors = $statement->fetchAll();
$statement->closeCursor();
?>
<!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>Formula 1 - Sponsors</title>
    <link rel="stylesheet" type="text/css" href="main.css" />
    <link rel = "icon" type = "image/png" href = "smallLogo.png">
</head>

<!-- the body section -->
<body>
<header>
    <nav>
          <a href="index.php"><button class="tabs">Home</button></a>
          <a href="drivers.php"><button class="tabs">Drivers</button></a>
          <a href="teams.php"><button class="tabs">Teams</button></a>
          <a href="sponsors.php"><button class="tabs" style="background-color: #9e0000">Sponsors</button></a>
          <a href="circuits.php"><button class="tabs">Circuits</button></a>
          <a href="races.php"><button class="tabs">Races</button></a>
          <a href="results.php"><button class="tabs">Results</button></a>
          <a href="championships.php"><button class="tabs">Championships</button></a>        
    </nav>
</header>
      <h1>Formula 1 - Sponsors</h1>
      <main>
          <br>
          <section>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Country</th>
                    <th>Team Sponsored</th>
                </tr>
    
                <?php foreach ($sponsors as $sponsor) : ?>
                <tr>
                    <td><?php echo $sponsor['sponsor_name']; ?></td>
                    <td><?php echo $sponsor['country']; ?></td>
                    <td><?php echo $sponsor['team_name']; ?></td>
                    </td>
                </tr>
                <?php endforeach; ?>
            </table>
          </section>
      </main>
<br>
<br>
<br>
<br>
<footer>
	<nav>
		<a href="teams.php"><button class="pg">Last Page</button><a/>
		<a href="circuits.php"><button class="pg">Next Page</button><a/>
	</nav>
</footer>
</body>
</html>