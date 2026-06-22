<?php
require_once('database.php');

$queryChampionships = 'SELECT championships.year, drivers.driver_surname, drivers.driver_name, championships.driver_points, teams.team_name, championships.team_point 
FROM `championships` JOIN drivers ON championships.Driver_Driver_ID = drivers.driver_id JOIN teams ON championships.Teams_team_id = teams.team_id;';
$statement = $db->prepare($queryChampionships);
$statement->execute();
$championships = $statement->fetchAll();
$statement->closeCursor();
?>
<!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>Formula 1 - Championships </title>
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
		<a href="sponsors.php"><button class="tabs">Sponsors</button></a>
		<a href="circuits.php"><button class="tabs">Circuits</button></a>
		<a href="races.php"><button class="tabs">Races</button></a>
		<a href="results.php"><button class="tabs">Results</button></a>
		<a href="championships.php"><button class="tabs" style="background-color: #9e0000">Championships</button></a>        
  </nav>
</header>
<h1>Formula 1 - Championships</h1>
<main>
    <br>
    <section>       
    <table>
            <tr>
                <th>Year</th>
                <th colspan="2">Driver</th>
                <th>Driver Points</th>
                <th>Team</th>
                <th>Team Points</th>
            </tr>

            <?php foreach ($championships as $championship) : ?>
            <tr>
                <td class="right"><?php echo $championship['year']; ?></td>
                <td><?php echo $championship['driver_surname']; ?></td>
                <td><?php echo $championship['driver_name']; ?></td>
                <td class="right"><?php echo $championship['driver_points']; ?></td>
                <td><?php echo $championship['team_name']; ?></td>
                <td class="right"><?php echo $championship['team_point']; ?></td>
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
		<a href="results.php"><button class="pg">Last Page</button><a/>
	</nav>
</footer>
</body>
</html>