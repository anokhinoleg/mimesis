<?php
/**
 * Created by PhpStorm.
 * User: olegyurievich
 * Date: 17.08.17
 * Time: 10:32
 */

namespace AppBundle\Controller;


use AppBundle\Form\LoginForm;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class SecurityController extends Controller
{

    public function loginAction()
    {
        $authUtils = $this->get('security.authentication_utils');
        $error = $authUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authUtils->getLastUsername();
        $form = $this->createForm(LoginForm::class, [
           '_username' => $lastUsername,
        ]);

        return $this->render('security/login.html.twig', array(
            'form' => $form->createView(),
            'error'         => $error,
        ));
    }

    public function logoutAction()
    {
        throw new \Exception('This should not be reached.');
    }

}