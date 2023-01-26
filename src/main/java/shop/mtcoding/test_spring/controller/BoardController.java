package shop.mtcoding.test_spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import shop.mtcoding.test_spring.model.Board;
import shop.mtcoding.test_spring.model.BoardRepository;
import shop.mtcoding.test_spring.model.User;

@Controller
public class BoardController {

    @Autowired
    BoardRepository boardRepository;

    @Autowired
    private HttpSession session;

    @GetMapping("/list")
    public String List(Model model) {
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/loginForm";
        }
        List<Board> boardList = boardRepository.findByuserId(principal.getId());
        model.addAttribute("boardList", boardList);
        return "board/list";
    }

}
