<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use ApiPlatform\Core\Annotation\ApiResource;

/**
 * @ORM\Entity(repositoryClass="App\Repository\CoursRepository")
 * @ApiResource
 */
class Cours
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $nom;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $prix;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $ent_general;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $debutant;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $ent_personnel;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $musculation;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $form_basique;

    /**
     * @ORM\OneToMany(targetEntity="App\Entity\User", mappedBy="cours", orphanRemoval=false)
     */
    private $users;

    public function __construct()
    {
        $this->users = new ArrayCollection();
    }


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getPrix(): ?int
    {
        return $this->prix;
    }

    public function setPrix(?int $prix): self
    {
        $this->prix = $prix;

        return $this;
    }

    public function getEntGeneral(): ?string
    {
        return $this->ent_general;
    }

    public function setEntGeneral(string $ent_general): self
    {
        $this->ent_general = $ent_general;

        return $this;
    }

    public function getDebutant(): ?string
    {
        return $this->debutant;
    }

    public function setDebutant(string $debutant): self
    {
        $this->debutant = $debutant;

        return $this;
    }

    public function getEntPersonnel(): ?string
    {
        return $this->ent_personnel;
    }

    public function setEntPersonnel(string $ent_personnel): self
    {
        $this->ent_personnel = $ent_personnel;

        return $this;
    }

    public function getMusculation(): ?string
    {
        return $this->musculation;
    }

    public function setMusculation(string $musculation): self
    {
        $this->musculation = $musculation;

        return $this;
    }

    public function getFormBasique(): ?string
    {
        return $this->form_basique;
    }

    public function setFormBasique(string $form_basique): self
    {
        $this->form_basique = $form_basique;

        return $this;
    }

    /**
     * @return Collection|User[]
     */
    public function getUsers(): Collection
    {
        return $this->users;
    }

    public function addUser(User $user): self
    {
        if (!$this->users->contains($user)) {
            $this->users[] = $user;
            $user->setCours($this);
        }

        return $this;
    }

    public function removeUser(User $user): self
    {
        if ($this->users->contains($user)) {
            $this->users->removeElement($user);
            // set the owning side to null (unless already changed)
            if ($user->getCours() === $this) {
                $user->setCours(null);
            }
        }

        return $this;
    }


    public function __toString()
    {
        return $this->getNom();
    }


}
