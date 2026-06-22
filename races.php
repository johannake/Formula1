<?php
require_once('database.php');

$queryRaces = 'SELECT race_id, races.date, circuits.country FROM `races` JOIN circuits WHERE races.Circuits_circuit_id = circuits.circuit_id';
$statement = $db->prepare($queryRaces);
$statement->execute();
$races = $statement->fetchAll();
$statement->closeCursor();
?>
<!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>Formula 1 - Races</title>
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
          <a href="races.php"><button class="tabs" style="background-color: #9e0000">Races</button></a>
          <a href="results.php"><button class="tabs">Results</button></a>
          <a href="championships.php"><button class="tabs">Championships</button></a>        
    </nav>
</header>
<h1>Formula 1 - Races</h1>
<main>
    <br>
    <section>
        <table>
            <tr>
                <th>Race Id</th>
                <th>Date</th>
                <th>Country</th>
            </tr>

            <?php foreach ($races as $race) : ?>
            <tr>
                <td class="right"><?php echo $race['race_id']; ?></td>
                <td class="right"><?php echo $race['date']; ?></td>
                <td><?php echo $race['country']; ?></td>
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
		<a href="circuits.php"><button class="pg">Last Page</button><a/>
		<a href="results.php"><button class="pg">Next Page</button><a/>
	</nav>
</footer>
</body>
</html>