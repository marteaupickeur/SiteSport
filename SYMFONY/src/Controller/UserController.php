<?php

namespace App\Controller;

use App\Entity\Coache;
use App\Entity\Cours;
use App\Entity\User;
use App\Form\UserType;
use App\Repository\UserRepository;
use PhpParser\Node\NullableType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;


class UserController extends AbstractController
{
    /**
     * @Route("/user", name="user_login")
     */

    public function user()
    {

        $em = $this->getDoctrine();
        $liste_cours = $em->getRepository(Cours::class)->findAll();
        //$liste_coaches = $em->getRepository(Coache::class)->findAll();

        return $this->render('principale/user.html.twig', [
            'liste_cours'=>$liste_cours,
           // 'liste_coaches'=>$liste_coaches,
        ]);

    }

    /**
     * @Route("/user/delete/{id}", name="coursdelete")
     */

    public function coursdelete($id = Null)
    {

        $em = $this->getDoctrine();
        $cours = $em->getRepository(Cours::class)->findOneById($id);
        $cours->removeUser($this->getUser());
        $em->getManager()->persist($cours);
        $em->getManager()->flush();
        $liste_cours = $em->getRepository(Cours::class)->findAll();
        $liste_coaches = $em->getRepository(Coache::class)->findAll();


        return $this->render('principale/user.html.twig', [
            'liste_cours'=>$liste_cours,
            'liste_coaches'=>$liste_coaches,
        ]);

    }

    /**
     * @Route("/user/update/{id}", name="coursupdate")
     */

    public function coursupdate($id)
    {

        $em = $this->getDoctrine();
        $cours = $em->getRepository(Cours::class)->find($id);
        $user = $this->getUser();
        $user->setCours($cours);
        $em->getManager()->persist($user);
        $em->getManager()->flush();
        $liste_cours = $em->getRepository(Cours::class)->findAll();
        $liste_coaches = $em->getRepository(Coache::class)->findAll();


        return $this->render('principale/user.html.twig', [
            'liste_cours'=>$liste_cours,
            'liste_coaches'=>$liste_coaches,
        ]);

    }




}
