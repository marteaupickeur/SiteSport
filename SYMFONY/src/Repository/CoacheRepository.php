<?php

namespace App\Repository;

use App\Entity\Coache;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Common\Persistence\ManagerRegistry;

/**
 * @method Coache|null find($id, $lockMode = null, $lockVersion = null)
 * @method Coache|null findOneBy(array $criteria, array $orderBy = null)
 * @method Coache[]    findAll()
 * @method Coache[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CoacheRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Coache::class);
    }

    // /**
    //  * @return Coache[] Returns an array of Coache objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Coache
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
