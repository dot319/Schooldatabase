<?php
include "scripts.php";
?>
<!DOCTYPE html>
<html>
    <head>
        <title>UI voor schooldatabase</title>
        <link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    <body>

        <div id="narrow">
            <section>
                <h1>Inschrijven voor studenten</h1>
                <div>
                    <form class="form" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                        <p><div class="desc">Achternaam:</div><input type="text" name="stuAchternaam" placeholder="Achternaam" value="<?php echo $stuAchternaam; ?>"><span class="error"> * <?php echo $errorStuAchternaam;?></span></p>
                        <p><div class="desc">Voornaam:</div><input type="text" name="stuVoornaam" placeholder="Voornaam" value="<?php echo $stuVoornaam; ?>"><span class="error"> * <?php echo $errorStuVoornaam;?></span></p>
                        <p><div class="desc">Geboortedatum:</div><input type="text" name="stuGeboortedatum" placeholder="jjjj-mm-dd" value="<?php echo $stuGeboortedatum; ?>"><span class="error"> * <?php echo $errorStuGeboortedatum;?></span></p>
                        <p><div class="desc">Adres:</div><input type="text" name="stuAdres" placeholder="Straat [huisnummer], Plaatsnaam" value="<?php echo $stuAdres; ?>"><span class="error"> * <?php echo $errorStuAdres;?></span></p>
                        <p><div class="desc">E-mail:</div><input type="email" name="stuEmail" placeholder="naam@voorbeeld.iets" value="<?php echo $stuEmail; ?>"><span class="error"> * <?php echo $errorStuEmail;?></span></p>
                        <p><div class="desc">Telefoonnummer:</div><input name="stuTelefoonnummer" placeholder="1234567890" value="<?php echo $stuTelefoonnummer; ?>"><span class="error"> * <?php echo $errorStuTelefoonnummer;?></span></p>
                        <p><input type="submit" value="Inschrijven"></p>
                    </form>                
                </div>
            </section>
<?php            
if ($submitStudents == true) { 
?>    

<div>Form successfully submitted.</div>

<?php
}
?>

        </div>

    </body>
</html>
