<?php
/**
 * Created by PhpStorm.
 * User: olegyurievich
 * Date: 26.05.17
 * Time: 9:50
 */

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class HomeController extends Controller
{
    public function homeAction()
    {
        return $this->render('home/home.html.twig');
    }
}