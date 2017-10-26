<?php
/**
 * Created by PhpStorm.
 * User: olegyurievich
 * Date: 01.06.17
 * Time: 17:03
 */

namespace AppBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use AppBundle\Entity\Post;
use Nelmio\Alice\Fixtures;

class LoadFixtures implements FixtureInterface
{
    public function load(ObjectManager $manager)
    {
       Fixtures::load(__DIR__.'/fixtures.yml', $manager);
    }
}