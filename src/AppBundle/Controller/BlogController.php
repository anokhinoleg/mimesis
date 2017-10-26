<?php
/**
 * Created by PhpStorm.
 * User: olegyurievich
 * Date: 25.05.17
 * Time: 18:56
 */

namespace AppBundle\Controller;


use AppBundle\Entity\Post;
use AppBundle\Entity\PostComment;
use AppBundle\Service\MarkdownTransformer;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class BlogController extends Controller
{
    public function blogAction()
    {
        $posts = $this->getDoctrine()->getManager()
            ->getRepository('AppBundle:Post')
            ->findAllPublished();

        $genres = [];
        foreach ($posts as $post) {
            foreach ($post->getGenre() as $genre) {
                $genres[] = [
                    'id' => $genre->getId(),
                    'name' => $genre->getName()
                ];
            }
        }

        return $this->render('blog/blog.html.twig',
            [
                'posts'=>$posts,
            ]
        );
    }

    public function postAction(Post $post)
    {
        $em = $this->getDoctrine()->getManager();

        if (!$post) {
            throw new NotFoundHttpException('The post does not exist');
        }

        $transformer = $this->get('app.markdown_transformer');
        $author = $transformer->parse($post->getAuthor());

        $comments = [];
        foreach ($post->getComments() as $comment) {
            $comments[] = [
                'id' => $comment->getId(),
                'author' => $comment->getAuthor(),
                'authorAvatarFilename' => $comment->getAuthorAvatarFilename(),
                'comment' => $comment->getComment(),
                'date' => $comment->getCreatedAt()->format('M d, Y')
            ];
        }
        $recentComments = $em->getRepository('AppBundle:PostComment')
            ->findAllRecentComments($post);

        return $this->render('blog/post.html.twig',
                [
                    'post' => $post,
                    'comments' => $comments,
                    'recentComments' => count($recentComments),
                    'author'=>$author
                ]
            );
    }
}