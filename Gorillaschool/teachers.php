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
                <h1>Inschrijven voor docenten</h1>
                <div>
                    <form class="form" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                        <p><div class="desc">Achternaam:</div><input type="text" name="docAchternaam" placeholder="Achternaam" value="<?php echo $docAchternaam; ?>"><span class="error"> * <?php echo $errorDocAchternaam;?></span></p>
                        <p><div class="desc">Voornaam:</div><input type="text" name="docVoornaam" placeholder="Voornaam" value="<?php echo $docVoornaam; ?>"><span class="error"> * <?php echo $errorDocVoornaam;?></span></p>
                        <p><div class="desc">Geboortedatum:</div><input type="text" name="docGeboortedatum" placeholder="jjjj-mm-dd" value="<?php echo $docGeboortedatum; ?>"><span class="error"> * <?php echo $errorDocGeboortedatum;?></span></p>
                        <p><div class="desc">Adres:</div><input type="text" name="docAdres" placeholder="Straat [huisnummer], Plaatsnaam" value="<?php echo $docAdres; ?>"><span class="error"> * <?php echo $errorDocAdres;?></span></p>
                        <p><div class="desc">E-mail:</div><input type="email" name="docEmail" placeholder="naam@voorbeeld.iets" value="<?php echo $docEmail; ?>"><span class="error"> * <?php echo $errorDocEmail;?></span></p>
                        <p><div class="desc">Telefoonnummer:</div><input name="docTelefoonnummer" placeholder="1234567890" value="<?php echo $docTelefoonnummer; ?>"><span class="error"> * <?php echo $errorDocTelefoonnummer;?></span></p>
                        <p><input type="submit" value="Inschrijven"></p>
                    </form>                
                </div>
            </section>

<?php            
if ($submitTeachers == true) { 
?>    

<div>Form successfully submitted.</div>

<?php
}
?>
        </div>
    </body>
</html>