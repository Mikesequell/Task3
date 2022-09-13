package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class MainPageServlet extends HttpServlet {

    public static final String index = "/WEB-INF/view/monika.jsp";
    public static final String accessDenied = "/WEB-INF/view/accessDenied.jsp";
    private boolean isLogin = false;

//    @Override
//    public void init() throws ServletException {
//        Object name = getServletContext().getAttribute("name");
//        if (name != null) {
//            String password = (String) getServletContext().getAttribute("password");
//            if (password.equals("JustMonika")) {
//                isLogin = true;
//            }
//        }
//    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Object name = session.getAttribute("name");

        Object password = session.getAttribute("password");
        if (name != null) {
            if (password.equals("JustMonika")) {
                isLogin = true;
//                req.setAttribute("loginName", name);

            }
        }
        if (isLogin) {
            req.getRequestDispatcher(index).forward(req, resp);
        }
        else {
            req.getRequestDispatcher(accessDenied).forward(req, resp);
        }

    }
}
