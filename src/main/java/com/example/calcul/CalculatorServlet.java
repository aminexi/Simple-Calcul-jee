package com.example.calcul;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/calculator")
public class CalculatorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Récupération des paramètres
        String number1Str = request.getParameter("number1");
        String number2Str = request.getParameter("number2");

        // Validation des champs
        if (number1Str == null || number1Str.trim().isEmpty() ||
                number2Str == null || number2Str.trim().isEmpty()) {

            // En cas d'erreur, envoyer un message d'erreur
            request.setAttribute("error", "Erreur : Les deux champs doivent être remplis !");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
            dispatcher.forward(request, response);
            return;
        }

        try {
            // Conversion et calcul
            double number1 = Double.parseDouble(number1Str);
            double number2 = Double.parseDouble(number2Str);
            double sum = number1 + number2;

            // Stockage des résultats dans les attributs de la requête
            request.setAttribute("number1", number1);
            request.setAttribute("number2", number2);
            request.setAttribute("sum", sum);
            request.setAttribute("success", true);

        } catch (NumberFormatException e) {
            // Gestion des erreurs de format
            request.setAttribute("error", "Erreur : Veuillez entrer des nombres valides !");
        }

        // Transfert vers la JSP avec RequestDispatcher
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/result.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Redirection vers la page d'accueil si accès direct
        response.sendRedirect(request.getContextPath() + "/index.html");
    }
}