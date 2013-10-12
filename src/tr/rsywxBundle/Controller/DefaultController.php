<?php

namespace tr\rsywxBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('trrsywxBundle:Default:index.html.twig', array('name' => $name));
    }
}
