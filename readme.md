# Calculatrice JEE – Formulaire HTML + Servlet + JSP

## Description
Ce projet est une application web simple permettant de calculer la somme de deux nombres.  
Technologies utilisées : **HTML**, **Servlet (Java)**, **JSP**, **Tomcat**.  

L’application fait la validation des champs et affiche un message clair en cas d’erreur.

---

## Fonctionnalités

- Formulaire HTML avec deux champs numériques et un bouton **Calculer**.
<img width="841" height="595" alt="image" src="https://github.com/user-attachments/assets/f33084a4-2e86-4130-bf62-fbd909fc80a1" />

- Envoi des données à une **Servlet** via la méthode **POST**.
- La Servlet :
  - Vérifie que les champs sont remplis
  - Calcule la somme
  - Transfère les données vers une **JSP** avec `RequestDispatcher`.
- La JSP affiche :
  - Le résultat si les champs sont valides
  <img width="845" height="522" alt="image" src="https://github.com/user-attachments/assets/2b87d800-b780-48ad-a7e7-8c60343a9618" />

  - Un message d’erreur si un champ est vide ou invalide.
  <img width="804" height="507" alt="image" src="https://github.com/user-attachments/assets/f164c291-b4c7-4058-a864-08fe445af3fe" />


---



