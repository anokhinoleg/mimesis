<?php
/**
 * Created by PhpStorm.
 * User: olegyurievich
 * Date: 05.07.17
 * Time: 15:57
 */

namespace AppBundle\Controller\Admin;

use AppBundle\Entity\Genre;
use AppBundle\Entity\Post;
use AppBundle\Form\PostFormType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\ExpressionLanguage\Expression;
use Symfony\Component\HttpFoundation\Request;

class PostAdminController extends Controller
{
    public function postAdminAction()
    {
        //$this->denyAccessUnlessGranted(["ROLE_ADMIN"], null, 'Unable to access this page!');
        $posts = $this->getDoctrine()->getManager()
            ->getRepository('AppBundle:Post')
            ->findAll();
        return $this->render('admin/post/list.html.twig', [
            'posts' => $posts
        ]);
    }

    public function newAction(Request $request)
    {
        $form = $this->createForm(PostFormType::class);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $post = $form->getData();
            $em = $this->getDoctrine()->getManager();
            $em->persist($post);
            $em->flush();
            $this->addFlash(
                'success',
                sprintf('Well done, (%s), my friend', $this->getUser()->getEmail())
                );
            return $this->redirectToRoute('admin_post');
        }

        return $this->render('admin/post/new.html.twig', [
            'postForm' => $form->createView()
        ]);
    }

    public function editAction(Request $request, Post $post)
    {
        $form = $this->createForm(PostFormType::class, $post);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $post = $form->getData();
            $em = $this->getDoctrine()->getManager();
            $em->persist($post);
            $em->flush();
            $this->addFlash(
                'success',
                'Successfully updated'
            );
            return $this->redirectToRoute('admin_post');
        }

        return $this->render('admin/post/edit.html.twig', [
            'postForm' => $form->createView()
        ]);
    }
}