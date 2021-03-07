/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author diego
 */
//@WebServlet(urlPatterns = {"/VingadorResultado"})
public class VingadorResultado extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String q1, q2, q3, q4, q5, q6, q7, q8;
        int r1, r2, r3, r4, r5, r6, r7, r8, result;

        r1 = 0;
        r2 = 0;
        r3 = 0;
        r4 = 0;
        r5 = 0;
        r6 = 0;
        r7 = 0;
        r8 = 0;

        q1 = String.valueOf(request.getParameter("answer1"));
        q2 = String.valueOf(request.getParameter("answer2"));
        q3 = String.valueOf(request.getParameter("answer3"));
        q4 = String.valueOf(request.getParameter("answer4"));
        q5 = String.valueOf(request.getParameter("answer5"));
        q6 = String.valueOf(request.getParameter("answer6"));
        q7 = String.valueOf(request.getParameter("answer7"));
        q8 = String.valueOf(request.getParameter("answer8"));

        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
                out.println("<head>");
                    out.println("<title>Veja qual vingador você é:</title>");
                    out.println("<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css\">");
                out.println("</head>");
                out.println("<body>");
                    out.println("<section class='hero is-dark bold'>");
                        out.println("<div class='hero-body'>");
                            out.println("<div class='container'>");
                                out.println("<h1 class='title is-1'>");
                                    out.println("Veja qual vingador você é");
                                out.println("</h1>");
                                out.println("<h3 class='subtitle is-3'>");
                                    out.println("De acordo com as sua escolhas, você é:</strong>");
                                out.println("</h3>");
                            out.println("</div>");
                        out.println("</div>");
                    out.println("</section>");
            try {
                switch (q1) {
                    case "1-a":
                        r1 = 4;
                        break;
                    case "1-b":
                        r1 = 2;
                        break;
                    case "1-c":
                        r1 = 3;
                        break;
                    case "1-d":
                        r1 = 1;
                        break;
                    default:
                        break;
                }
                switch (q2) {
                    case "2-a":
                        r2 = 4;
                        break;
                    case "2-b":
                        r2 = 3;
                        break;
                    case "2-c":
                        r2 = 2;
                        break;
                    case "2-d":
                        r2 = 1;
                        break;
                    default:
                        break;
                }
                switch (q3) {
                    case "3-a":
                        r3 = 3;
                        break;
                    case "3-b":
                        r3 = 4;
                        break;
                    case "3-c":
                        r3 = 1;
                        break;
                    case "3-d":
                        r3 = 2;
                        break;
                    default:
                        break;
                }
                switch (q4) {
                    case "4-a":
                        r4 = 1;
                        break;
                    case "4-b":
                        r4 = 4;
                        break;
                    case "4-c":
                        r4 = 2;
                        break;
                    case "4-d":
                        r4 = 3;
                        break;
                    default:
                        break;
                }
                switch (q5) {
                    case "5-a":
                        r5 = 1;
                        break;
                    case "5-b":
                        r5 = 2;
                        break;
                    case "5-c":
                        r5 = 3;
                        break;
                    case "5-d":
                        r5 = 4;
                        break;
                    default:
                        break;
                }
                switch (q6) {
                    case "6-a":
                        r6 = 2;
                        break;
                    case "6-b":
                        r6 = 1;
                        break;
                    case "6-c":
                        r6 = 4;
                        break;
                    case "6-d":
                        r6 = 3;
                        break;
                    default:
                        break;
                }
                switch (q7) {
                    case "7-a":
                        r7 = 3;
                        break;
                    case "7-b":
                        r7 = 1;
                        break;
                    case "7-c":
                        r7 = 2;
                        break;
                    case "7-d":
                        r7 = 4;
                        break;
                    default:
                        break;
                }
                switch (q8) {
                    case "8-a":
                        r8 = 2;
                        break;
                    case "8-b":
                        r8 = 1;
                        break;
                    case "8-c":
                        r8 = 3;
                        break;
                    case "8-d":
                        r8 = 4;
                        break;
                    default:
                        break;
                }
            } catch (Exception e) {
                out.println("Algo deu errado");
            }

                    out.println("<div class=\"container is-fluid\">");
                        out.println("<form>");
                            out.println("<table class=\'table is-bordered'>");
                                out.println("<thead>");
                                    out.println("<tr>");

            result = r1 + r2 + r3 + r4 + r5 + r6 + r7 + r8;

            if (result >= 8 && result <= 10) {
                out.println("<th>Homem-Aranha</th>");
            } else if (result >= 11 && result <= 13) {
                out.println("<th>Doutor Estranho</th>");
            } else if (result >= 14 && result <= 16) {
                out.println("<th>Feiticeira Escarlate</th>");
            } else if (result >= 17 && result <= 19) {
                out.println("<th>Thor</th>");
            } else if (result >= 20 && result <= 22) {
                out.println("<th>Hulk</th>");
            } else if (result >= 23 && result <= 25) {
                out.println("<th>Viúva Negra</th>");
            } else if (result >= 26 && result <= 28) {
                out.println("<th>Homem de Ferro</th>");
            } else if (result >= 29 && result <= 32) {
                out.println("<th>Capitão América</th>");
            }
                                    out.println("</tr>");
                                out.println("</thead>");
                            out.println("</table>");
            

                            out.println("<p class='buttons'>");
                                out.println("<button class='button is-link is-light'>");
                                    out.println("<span>");
                                        out.println("<a href='/Mapa'>Voltar</a>");
                                    out.println("</span>");
                                out.println("</button>");
                            out.println("</p>");
                        out.println("</form>");
                    out.println("</div>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}