<?php
require_once('database.php');

$queryCircuits = 'SELECT * FROM circuits';
$statement = $db->prepare($queryCircuits);
$statement->execute();
$circuits = $statement->fetchAll();
$statement->closeCursor();
?><!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>Formula 1 - Circuits</title>
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
          <a href="circuits.php"><button class="tabs" style="background-color: #9e0000">Circuits</button></a>
          <a href="races.php"><button class="tabs">Races</button></a>
          <a href="results.php"><button class="tabs">Results</button></a>
          <a href="championships.php"><button class="tabs">Championships</button></a>        
    </nav>
</header>
<h1>Formula 1 - Circuits </h1>
<main>
    <br>
    <section>
        <table>
            <tr>
                <th>Circuit Name</th>
                <th>Circuit ID</th>
                <th>Country</th>
                <th>Length (km)</th>
                <th>Turns</th>

            </tr>

            <?php foreach ($circuits as $circuit) : ?>
            <tr>
                <td><?php echo $circuit['circuit_name']; ?></td>
                <td class="right"><?php echo $circuit['circuit_id']; ?></td>
                <td><?php echo $circuit['country']; ?></td>
                <td><?php echo $circuit['lenght']; ?></td>
                <td><?php echo $circuit['turns']; ?></td>
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
		<a href="sponsors.php"><button class="pg">Last Page</button><a/>
		<a href="races.php"><button class="pg">Next Page</button><a/>
	</nav>
</footer>
</body>
</html>