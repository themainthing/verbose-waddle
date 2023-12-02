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
import java.util.List;

@WebServlet(urlPatterns = {"/index", "/"})
public class GetUserServlet extends HttpServlet {
    private UserRepository userRepository = new UserRepositoryImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> userList = userRepository.getAllUsers();
        RequestDispatcher dispatcher = req.getRequestDispatcher("users.jsp");
        req.setAttribute("userList", userList);
        dispatcher.forward(req, resp);
    }
}
