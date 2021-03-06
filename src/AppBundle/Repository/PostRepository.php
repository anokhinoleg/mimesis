<?php

namespace AppBundle\Repository;

use AppBundle\Entity\Post;
use Doctrine\ORM\EntityRepository;

class PostRepository extends EntityRepository
{
    /**
     * @return Post[]
     */
    public function findAllPublished()
    {
        return $this->createQueryBuilder('post')
            ->andWhere('post.isPublished = :isPublished')
            ->setParameter('isPublished', true)
            ->leftJoin('post.comments', 'post_comment')
            ->orderBy('post_comment.createdAt', 'DESC')
            ->getQuery()
            ->execute();
    }
}
