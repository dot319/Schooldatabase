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
                <h1>Cijfers invoeren</h1>
                <form>
                    <p><div class="desc">StudentID:</div><input type="number" name="studentID" min="1" value="<?php echo $studentID; ?>"><span class="error"> * <?php echo $errorStudentID;?></span></p>
                    <p><div class="desc">LesID:</div><input type="number" name="lesID" min="1" value="<?php echo $lesID; ?>"><span class="error"> * <?php echo $errorLesID;?></span></p>
                    <p><div class="desc">Cijfer blok 1A:</div><input type="number" name="cijfer1A" min="1" max="10" step="0.01"></p>
                    <p><div class="desc">Cijfer blok 1B:</div><input type="number" name="cijfer1B" min="1" max="10" step="0.01"></p>
                    <p><div class="desc">Cijfer blok 2A:</div><input type="number" name="cijfer2A" min="1" max="10" step="0.01"></p>
                    <p><div class="desc">Cijfer blok 2B:</div><input type="number" name="cijfer2B" min="1" max="10" step="0.01"></p>
                    <p><input type="submit" value="Indienen"></p>
                </form>
            </section>
        </div>

    </body>
</html>
