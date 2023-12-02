package servlet;

import entity.User;
import repository.UserRepository;
import repository.UserRepositoryImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/edit")
public class EditUserServlet extends HttpServlet {
    private UserRepository userRepository = new UserRepositoryImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("userId"));
        User existingUser = userRepository.findUserById(id);
        RequestDispatcher dispatcher = req.getRequestDispatcher("add.jsp");
        req.setAttribute("user", existingUser);
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        userRepository.updateUser(new User(Integer.parseInt(req.getParameter("id")), req.getParameter("name"),
                req.getParameter("email"), req.getParameter("country")));
        resp.sendRedirect("/index");
    }
}
