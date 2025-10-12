<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Résultat du Calcul</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            width: 100%;
        }

        h1 {
            color: #333;
            margin-bottom: 30px;
            text-align: center;
            font-size: 28px;
        }

        .result-box {
            background: #f8f9fa;
            padding: 25px;
            border-radius: 8px;
            margin-bottom: 20px;
            border-left: 4px solid #667eea;
        }

        .result-box.success {
            border-left-color: #28a745;
            background: #d4edda;
        }

        .result-box.error {
            border-left-color: #dc3545;
            background: #f8d7da;
        }

        .calculation {
            font-size: 20px;
            color: #333;
            margin-bottom: 15px;
            text-align: center;
        }

        .result {
            font-size: 32px;
            font-weight: bold;
            color: #667eea;
            text-align: center;
            margin-top: 15px;
        }

        .result.success-text {
            color: #28a745;
        }

        .error-message {
            color: #dc3545;
            font-size: 18px;
            text-align: center;
            font-weight: 500;
        }

        .back-button {
            display: block;
            width: 100%;
            padding: 14px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .back-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 20px rgba(102, 126, 234, 0.4);
        }

        .details {
            font-size: 16px;
            color: #666;
            text-align: center;
            margin: 10px 0;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Résultat du Calcul</h1>

    <% if (request.getAttribute("error") != null) { %>

    <div class="result-box error">
        <p class="error-message">
            <%= request.getAttribute("error") %>
        </p>
    </div>
    <% } else if (request.getAttribute("success") != null) { %>

    <div class="result-box success">
        <p class="calculation">
            <%= request.getAttribute("number1") %> + <%= request.getAttribute("number2") %>
        </p>
        <div class="result success-text">
            = <%= request.getAttribute("sum") %>
        </div>
    </div>
    <p class="details">
        La somme de <strong><%= request.getAttribute("number1") %></strong>
        et <strong><%= request.getAttribute("number2") %></strong>
        est égale à <strong><%= request.getAttribute("sum") %></strong>
    </p>
    <% } %>

    <a href="<%= request.getContextPath() %>/index.html" class="back-button">
        ← Nouveau Calcul
    </a>
</div>
</body>
</html>
</html>