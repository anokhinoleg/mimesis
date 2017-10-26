<?php

namespace AppBundle\Form;


use AppBundle\Entity\Genre;
use AppBundle\Entity\Post;
use AppBundle\Repository\GenreRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class PostFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title')
            ->add('text')
            ->add('author')
            ->add('isPublished', ChoiceType::class, [
                'choices' => [
                    'yes' => true,
                    'no' => false
                ]
            ])
            ->add('createdAt', DateType::class, [
                'widget' => 'single_text',
                'attr' => [
                    'class' => 'js-datepicker',
                ],
                'html5' => false,
            ])
            ->add('genre', EntityType::class, [
                'class' => Genre::class,
                'placeholder' => 'Choose genres',
                'required' => true,

                'multiple' => true,
                'query_builder' => function(GenreRepository $repo) {
                    return $repo->alphabeticalQueryBuilder();
                },
            ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Post::class
        ]);
    }

    public function getBlockPrefix()
    {
        return 'app_bundle_post_form_type';
    }
}
