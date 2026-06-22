<?php
require_once('database.php');

$queryTeams = 'SELECT team_name, base, year_founded, manager_surname, manager_name, championships_won FROM `teams`GROUP BY team_name ASC;';
$statement = $db->prepare($queryTeams);
$statement->execute();
$teams = $statement->fetchAll();
$statement->closeCursor();
?>
<!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>Formula 1 - Teams</title>
    <link rel="stylesheet" type="text/css" href="main.css" />
    <link rel = "icon" type = "image/png" href = "smallLogo.png">
</head>

<!-- the body section -->
<body>
<header>
    <nav>
          <a href="index.php"><button class="tabs">Home</button></a>
          <a href="drivers.php"><button class="tabs">Drivers</button></a>
          <a href="teams.php"><button class="tabs" style="background-color: #9e0000">Teams</button></a>
          <a href="sponsors.php"><button class="tabs">Sponsors</button></a>
          <a href="circuits.php"><button class="tabs">Circuits</button></a>
          <a href="races.php"><button class="tabs">Races</button></a>
          <a href="results.php"><button class="tabs">Results</button></a>
          <a href="championships.php"><button class="tabs">Championships</button></a>        
    </nav>
</header>
<h1>Formula 1 - Teams</h1>
<main>
    <br>
    <section>       
        <table>
            <tr>
                <th>Team Name</th>
                <th>Base</th>
                <th>Year Founded</th>
                <th colspan="2">Manager</th>
                <th>Championships Won</th>
            </tr>

            <?php foreach ($teams as $team) : ?>
            <tr>
                <td><?php echo $team['team_name']; ?></td>
                <td><?php echo $team['base']; ?></td>
                <td class="right"><?php echo $team['year_founded']; ?></td>
                <td><?php echo $team['manager_surname']; ?></td>
                <td><?php echo $team['manager_name']; ?></td>
                <td><?php echo $team['championships_won']; ?></td>
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
		<a href="drivers.php"><button class="pg">Last Page</button><a/>
		<a href="sponsors.php"><button class="pg">Next Page</button><a/>
	</nav>
</footer>
</body>
</html>