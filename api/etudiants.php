<?php
    // Connexion à la BDD
    include("db_connect.php");
    $method = $_SERVER["REQUEST_METHOD"];

    function getEtudiants() {
        global $conn;
        // Accès aux données
        $requete = "SELECT * FROM etudiant";
        $result = mysqli_query($conn, $requete);
        $etudiants = array();
        if (mysqli_num_rows($result) >0) {
            while($row = mysqli_fetch_assoc($result)) {
                $etudiant = array();
                $etudiant['id'] = $row['idEtudiant'];
                $etudiant['nom'] = $row['nom'];
                $etudiant['prenom'] = $row['prenom'];
                $etudiant['tel'] = $row['tel'];
                $etudiant['pseudo'] = $row['pseudo'];
                array_push($etudiants, $etudiant);
            }
            echo json_encode($etudiants);
        }
    }

    function getEtudiant($id=0) {
        global $conn;
        $requete = "SELECT * FROM etudiant WHERE idEtudiant = ".$id;
        $result = mysqli_query($conn, $requete);
        $etudiant = array();
        if (mysqli_num_rows($result) >0) {
            while($row = mysqli_fetch_assoc($result)) {
                $etudiant = array();
                $etudiant['id'] = $row['idEtudiant'];
                $etudiant['nom'] = $row['nom'];
                $etudiant['prenom'] = $row['prenom'];
                $etudiant['tel'] = $row['tel'];
                $etudiant['pseudo'] = $row['pseudo'];
            }
            echo json_encode($etudiant);
        }
    }

    function addEtudiant() {
        global $conn;
        // echo 'Fonction addEtudiant';
        $nom = $_POST['nom'];
        $prenom = $_POST['prenom'];
        $tel = $_POST['telephone'];
        $pseudo = $_POST['pseudo'];
        $requete = "INSERT INTO `etudiant` (`idEtudiant`, `nom`, `prenom`, `tel`, `pseudo`) 
            VALUES (NULL, '.$nom.', '.$prenom.', '.$tel.', '.$pseudo.');";
        $result = mysqli_query($conn, $requete);
    }

    switch($method) {
        case 'GET' :
            if (empty($_GET["id"])) {
                getEtudiants();
            }
            else {
                $id = intval($_GET["id"]);
                getEtudiant($id);
            }
            break;
        case 'POST' :
            addEtudiant();
            break;
    }
?>