<?php
require_once('database.php');

$queryResults = 'SELECT races.date, drivers.driver_name, drivers.driver_surname, teams.team_name, results.grid_position, results.final_position, results.fastest_lap 
FROM results JOIN races on results.race_id = races.race_id JOIN drivers ON results.Drivers_driver_id = drivers.driver_id JOIN teams ON results.Teams_team_id = teams.team_id
GROUP BY races.date DESC';
$statement = $db->prepare($queryResults);
$statement->execute();
$results = $statement->fetchAll();
$statement->closeCursor();
?>
<!D<!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>Formula 1 - Results</title>
    <link rel="stylesheet" type="text/css" href="main.css" />
    <link rel = "icon" type = "image/png" href = "smallLogo.png">
</head>

<!-- the body section -->
<body>
<header>
    <nav>
          <a href="index.php"><button class="tabs"s>Home</button></a>
          <a href="drivers.php"><button class="tabs">Drivers</button></a>
          <a href="teams.php"><button class="tabs">Teams</button></a>
          <a href="sponsors.php"><button class="tabs">Sponsors</button></a>
          <a href="circuits.php"><button class="tabs">Circuits</button></a>
          <a href="races.php"><button class="tabs">Races</button></a>
          <a href="results.php"><button class="tabs" style="background-color: #9e0000">Results</button></a>
          <a href="championships.php"><button class="tabs">Championships</button></a>        
    </nav>
</header>
<h1>Formula 1 - Results </h1>
<main>
    <br>
    <section>      
        <table>
            <tr>
                <th>Race</th>
                <th colspan="2">Winner</th>
                <th>Winning Team</th>
                <th>Grid position</th>
                <th>Final Position</th>
                <th>Fastest_lap</th>
            </tr>

            <?php foreach ($results as $result) : ?>
            <tr>
                <td><?php echo $result['date']; ?></td>
                <td><?php echo $result['driver_surname']; ?></td>
                <td><?php echo $result['driver_name']; ?></td>
                <td><?php echo $result['team_name']; ?></td>
                <td><?php echo $result['grid_position']; ?></td>
                <td><?php echo $result['final_position']; ?></td>
                <td><?php echo $result['fastest_lap']; ?></td>
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
		<a href="races.php"><button class="pg">Last Page</button><a/>
		<a href="championships.php"><button class="pg">Next Page</button><a/>
	</nav>
</footer>
</body>
</html>