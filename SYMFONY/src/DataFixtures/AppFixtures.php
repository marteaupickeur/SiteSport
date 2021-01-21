<?php

namespace App\DataFixtures;

use App\Entity\Coache;
use App\Entity\Cours;
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load($manager)
    {
        $choixCours = ["fa fa-check","fa fa-times"];
        $coaches = new Coache();
        $COURS = array();

        for($i = 1 ; $i < 6 ; $i++){

            $cours  = new Cours();

            $cours->setNom("Cours".$i);
            $cours->setPrix(mt_rand(15,50));
            $cours->setDebutant($choixCours[mt_rand(0,1)]);
            $cours->setEntGeneral($choixCours[mt_rand(0,1)]);
            $cours->setEntPersonnel($choixCours[mt_rand(0,1)]);
            $cours->setFormBasique($choixCours[mt_rand(0,1)]);
            $cours->setMusculation($choixCours[mt_rand(0,1)]);

            array_push($COURS,$cours);
            //$COURS = $cours;

            $manager->persist($cours);
        }

        for($i = 1 ; $i < 11 ; $i++){

            $user = new User();

            $user->setUsername("user".$i);
            $user->setEmail("user".$i."@gmail.com");
            $user->setPassword("hjd");
            $user->setConfirmation("jhbv");
            $user->setRoles(["ROLE_USER"]);
            $user->setCours($COURS[mt_rand(0,5)]);

            $manager->persist($cours);
        }

        $manager->flush();
    }
}
