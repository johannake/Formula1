<?php
require_once('database.php');

$queryDrivers = 'SELECT drivers.driver_surname, drivers.driver_name, teams.team_name, drivers.driver_number, drivers.date_of_birth, drivers.nationality,drivers.points 
                FROM drivers JOIN teams ON drivers.Teams_team_id = teams.team_id GROUP BY driver_surname ASC;';
$statement = $db->prepare($queryDrivers);
$statement->execute();
$drivers = $statement->fetchAll();
$statement->closeCursor();
?>
<!DOCTYPE html>
<html>

<!-- the head section -->
<head>
    <title>Formula 1 - Drivers</title>
    <link rel="stylesheet" type="text/css" href="main.css" />
    <link rel = "icon" type = "image/png" href = "smallLogo.png">
</head>

<!-- the body section -->
<body>

<header>
    <nav>
		<a href="index.php"><button class="tabs">Home</button></a>
		<a href="drivers.php"><button class="tabs" style="background-color: #9e0000">Drivers</button></a>
		<a href="teams.php"><button class="tabs">Teams</button></a>
		<a href="sponsors.php"><button class="tabs">Sponsors</button></a>
		<a href="circuits.php"><button class="tabs">Circuits</button></a>
		<a href="races.php"><button class="tabs">Races</button></a>
		<a href="results.php"><button class="tabs">Results</button></a>
		<a href="championships.php"><button class="tabs">Championships</button></a>        
  </nav>
	
</header>

<h1>Formula 1 - Drivers</h1>
<main>
	
    <section>
		
    <table>
            <tr>
                <th>Last name</th>
                <th>First name</th>
                <th>Team</th>
                <th>Driver Number</th>
                <th>Birthday</th>
                <th>Nationality</th>
                <th>Poits</th>
                

            </tr>

            <?php foreach ($drivers as $driver) : ?>
            <tr>
                <td><?php echo $driver['driver_surname']; ?></td>
                <td><?php echo $driver['driver_name']; ?></td>
                <td><?php echo $driver['team_name']; ?></td>
                <td class="right"><?php echo $driver['driver_number']; ?></td>
                <td class="right"><?php echo $driver['date_of_birth']; ?></td>
                <td><?php echo $driver['nationality']; ?></td>
                <td class="right"><?php echo $driver['points']; ?></td>
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
		<a href="index.php"><button class="pg">Last Page</button><a/>
		<a href="teams.php"><button class="pg">Next Page</button><a/>
	</nav>
</footer>
</div></body>
</html>