<?php

$stuAchternaam = "";
$stuVoornaam = "";
$stuGeboortedatum = "";
$stuAdres = "";
$stuEmail = "";
$stuTelefoonnummer = "";

$errorStuAchternaam = "";
$errorStuVoornaam = "";
$errorStuGeboortedatum = "";
$errorStuAdres = "";
$errorStuEmail = "";
$errorStuTelefoonnummer = "";

$submitStudents = false;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $tempState = true;
    if (empty($_POST["stuAchternaam"])) {
        $errorStuAchternaam = "Je hebt geen achternaam ingevuld";
        $tempState = false;
    } else {
        $stuAchternaam = checkInput($_POST["stuAchternaam"]);       
        if (!preg_match("/^[a-zA-Z ]*$/",$stuAchternaam)) {
            $errorStuAchternaam = "Alleen letters en spaties toegestaan";
            $tempState = false; 
          }
    }
    if (empty($_POST["stuVoornaam"])) {
        $errorStuVoornaam = "Je hebt geen voornaam ingevuld";
        $tempState = false;
    } else {
        $stuVoornaam = checkInput($_POST["stuVoornaam"]);
        if (!preg_match("/^[a-zA-Z ]*$/",$stuVoornaam)) {
            $errorStuVoornaam = "Alleen letters en spaties toegestaan"; 
            $tempState = false;
          }
    }
    if (empty($_POST["stuGeboortedatum"])) {
        $errorStuGeboortedatum = "Je hebt geen geboortedatum ingevuld";
        $tempState = false;
    } else {
        $stuGeboortedatum = checkInput($_POST["stuGeboortedatum"]);
        if (validateDate($stuGeboortedatum) == false) {
            $errorStuGeboortedatum = "Ongeldige geboortedatum, voer in als JJJJ-MM-DD";
            $tempState = false;
        }
    }
    if (empty($_POST["stuAdres"])) {
        $errorStuAdres = "Je hebt geen adres ingevuld";
        $tempState = false;
    } else {
        $stuAdres = checkInput($_POST["stuAdres"]);
        $stringSearch = ', ';
        if (!preg_match('/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/', $stuAdres) || strpos($stuAdres, $stringSearch) == false) {
            $errorStuAdres = "Ongeldig adres, vul in als: Straatnaam [huisnummer], Plaats";
            $tempState = false;
        }
    }
    if (empty($_POST["stuEmail"])) {
        $errorStuEmail = "Je hebt geen emailadres ingevuld";
        $tempState = false;
    } else {
        $stuEmail = checkInput($_POST["stuEmail"]);
        if (!filter_var($stuEmail, FILTER_VALIDATE_EMAIL)) {
            $errorStuEmail = "Ongeldig e-mailadres";
            $tempState = false;
        } 
    }
    if (empty($_POST["stuTelefoonnummer"])) {
        $errorStuTelefoonnummer = "Je hebt geen telefoonnummer ingevuld";
        $tempState = false;
    } else {
        $stuTelefoonnummer = checkInput($_POST["stuTelefoonnummer"]);
        if (!ctype_digit($stuTelefoonnummer)) {
            $errorStuTelefoonnummer = "Je telefoonnummer mag alleen cijfers bevatten, geen - of andere karakters.";
            $tempState = false;
        } elseif (strlen($stuTelefoonnummer) != 10) {
            $errorStuTelefoonnummer = "Je telefoonnummer moet uit 10 cijfers bestaan.";
            $tempState = false;
        }
    }
    if ($tempState == true) {
        $submitStudents = true;
    }
}

$docAchternaam = "";
$docVoornaam = "";
$docGeboortedatum = "";
$docAdres = "";
$docEmail = "";
$docTelefoonnummer = "";

$errorDocAchternaam = "";
$errorDocVoornaam = "";
$errorDocGeboortedatum = "";
$errorDocAdres = "";
$errorDocEmail = "";
$errorDocTelefoonnummer = "";

$submitTeachers = false;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $tempState = true;
    if (empty($_POST["docAchternaam"])) {
        $errorDocAchternaam = "Je hebt geen achternaam ingevuld";
        $tempState = false;
    } else {
        $docAchternaam = checkInput($_POST["docAchternaam"]);
        if (!preg_match("/^[a-zA-Z ]*$/",$docAchternaam)) {
            $errorDocAchternaam = "Alleen letters en spaties toegestaan";
            $tempState = false; 
          }
    }
    if (empty($_POST["docVoornaam"])) {
        $errorDocVoornaam = "Je hebt geen voornaam ingevuld";
        $tempState = false;
    } else {
        $docVoornaam = checkInput($_POST["docVoornaam"]);
        if (!preg_match("/^[a-zA-Z ]*$/",$docVoornaam)) {
            $errorDocVoornaam = "Alleen letters en spaties toegestaan";
            $tempState = false; 
          }
    }
    if (empty($_POST["docGeboortedatum"])) {
        $errorDocGeboortedatum = "Je hebt geen geboortedatum ingevuld";
        $tempState = false;
    } else {
        $docGeboortedatum = checkInput($_POST["docGeboortedatum"]);
        if (validateDate($docGeboortedatum) == false) {
            $errorDocGeboortedatum = "Ongeldige geboortedatum, voer in als JJJJ-MM-DD";
            $tempState = false;
        }
    }
    if (empty($_POST["docAdres"])) {
        $errorDocAdres = "Je hebt geen adres ingevuld";
        $tempState = false;
    } else {
        $docAdres = checkInput($_POST["docAdres"]);
        $stringSearch = ', ';
        if (!preg_match('/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/', $docAdres) || strpos($docAdres, $stringSearch) == false) {
            $errorDocAdres = "Ongeldig adres, vul in als: Straatnaam [huisnummer], Plaats";
            $tempState = false;
        }
    }
    if (empty($_POST["docEmail"])) {
        $errorDocEmail = "Je hebt geen emailadres ingevuld";
        $tempState = false;
    } else {
        $docEmail = checkInput($_POST["docEmail"]);
        if (!filter_var($docEmail, FILTER_VALIDATE_EMAIL)) {
            $errorDocEmail = "Ongeldig e-mailadres";
            $tempState = false;
        } 
    }
    if (empty($_POST["docTelefoonnummer"])) {
        $errorDocTelefoonnummer = "Je hebt geen telefoonnummer ingevuld";
        $tempState = false;
    } else {
        $docTelefoonnummer = checkInput($_POST["docTelefoonnummer"]);
        if (!ctype_digit($docTelefoonnummer)) {
            $errorDocTelefoonnummer = "Je telefoonnummer mag alleen cijfers bevatten, geen - of andere karakters.";
            $tempState = false;
        } elseif (strlen($docTelefoonnummer) != 10) {
            $errorDocTelefoonnummer = "Je telefoonnummer moet uit 10 cijfers bestaan.";
            $tempState = false;
        }
    }
    if ($tempState == true) {
        $submitTeachers = true;
    }
}

$studentID = "";
$lesID = "";
$cijfer1A = "";
$cijfer1B = "";
$cijfer2A = "";
$cijfer2B = "";

$errorStudentID = "";
$errorLesID = "";
$errorCijfer1A = "";
$errorCijfer1B = "";
$errorCijfer2A = "";
$errorCijfer2B = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (empty($_POST["studentID"])) {
        $errorStudentID = "Je hebt geen StudentID ingevoerd.";
    } else {
        $studentID = checkInput($_POST["studentID"]);
        if ($studentID > 30) { //in de uiteindelijke code komt hier een check hoeveel entries de Les-table heeft.
            $errorStudentId = "Die student bestaat niet.";
        }
    }
    if (empty($_POST["lesID"])) {
        $errorLesID = "Je hebt geen LesID ingevoerd.";
    } else {
        $lesID = checkInput($_POST["lesID"]);
        if ($lesID > 30) { //in de uiteindelijke code komt hier een check hoeveel entries de Les-table heeft.
            $errorLesId = "Die Les bestaat niet.";
        }
    }
    if ($cijfer1A < 1 || $cijfer1A > 10) {
        $errorCijfer1A = "Ongeldig cijfer, cijfer moet tussen 1 en 10 zijn.";
    }
    if ($cijfer1B < 1 || $cijfer1B > 10) {
        $errorCijfer1B = "Ongeldig cijfer, cijfer moet tussen 1 en 10 zijn.";
    }
    if ($cijfer2A < 1 || $cijfer2A > 10) {
        $errorCijfer2A = "Ongeldig cijfer, cijfer moet tussen 1 en 10 zijn.";
    }
    if ($cijfer2B < 1 || $cijfer2B > 10) {
        $errorCijfer2B = "Ongeldig cijfer, cijfer moet tussen 1 en 10 zijn.";
    }
}

function checkInput($input) {
    $input = trim($input);
    $input = stripslashes($input);
    $input = htmlspecialchars($input);
    return $input;
}

function validateDate($date, $format = 'Y-m-d') {
    $d = DateTime::createFromFormat($format, $date);
    return $d && $d->format($format) === $date;
}
?>