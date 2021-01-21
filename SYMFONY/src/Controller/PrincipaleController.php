<?php

namespace App\Controller;

use App\Entity\Coache;
use App\Entity\Cours;
use App\Entity\Materiel;
use App\Entity\Message;
use App\Entity\User;
use App\Form\MessageType;
use App\Form\signup;
use App\Form\UserType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class PrincipaleController extends AbstractController
{
    /**
     * @Route("/index", name="principale")
     */
    public function index(Request $request, UserPasswordEncoderInterface $passwordEncoder)
    {
        $em = $this->getDoctrine();
        $liste_cours = $em->getRepository(Cours::class)->findAll();
        $liste_coaches = $em->getRepository(Coache::class)->findAll();
        $liste_users = $em->getRepository(User::class)->findAll();
        $liste_matos = $em->getRepository(Materiel::class)->findAll();
      //  var_dump($liste_matos);


        $user = new User();
        $user->setRoles(["ROLE_USER"]);
        $form = $this->createForm(signup::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $password = $passwordEncoder->encodePassword($user, $user->getPassword());
            $user->setPassword($password);
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($user);
            $entityManager->flush();

            return $this->redirectToRoute('app_login');
        }

        $message = new Message();
        $messageForm = $this->createForm(MessageType::class,$message);

        return $this->render('principale/index.html.twig', [
            'liste_coaches'=>$liste_coaches,
            'liste_cours'=>$liste_cours,
            'liste_users'=>$liste_users,
            'liste_matos'=>$liste_matos,
            'messageForm' => $messageForm->createView(),
            'form'=>$form->createView()

        ]);



    }


}
