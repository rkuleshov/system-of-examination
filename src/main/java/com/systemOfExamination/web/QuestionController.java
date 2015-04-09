package com.systemOfExamination.web;

import com.systemOfExamination.components.QuestionCycle;
import com.systemOfExamination.domain.Answer;
import com.systemOfExamination.domain.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class QuestionController {

    private static final int endCycleId = -1;

    @Autowired
    private QuestionCycle questionCycle;

    @Value("${questionsQuantity}")
    private Integer questionsQuantity;

    @RequestMapping("/index")
    public String displayQuestion(Map<String, Object> map) {
        questionCycle.initialiseNewQuestionCycle();
        Question question = questionCycle.getCurrentQuestion();
        map.put("question", question);
        map.put("answers", question.getAnswers());
        return "exam";
    }

    @RequestMapping("/nextQuestion")
    @ResponseBody
    public Map<String, Object> nextQuestion(@RequestParam Integer answerId) {

        Question question = null;
        Map<String, Object> data = new HashMap<String, Object>();
        boolean isNewCycle = false;

        if (answerId.equals(endCycleId)) {
            questionCycle.initialiseNewQuestionCycle();
            isNewCycle = true;
        } else {
            question = questionCycle.getCurrentQuestion();
            Answer usersAnswer = question.findAnswerById(answerId);
            if (usersAnswer != null && usersAnswer.isTrue()) {
                questionCycle.incrementCorrectAnswersAmount();
            }
        }

        if (questionCycle.getCurrentQuestionNumber() < questionsQuantity) {
            if (!isNewCycle) {
                questionCycle.switchToNextQuestion();
            }
            question = questionCycle.getCurrentQuestion();
            data.put("question", question);
            data.put("isCycleFinished", false);
            return data;
        } else {
            int percentage = questionCycle.calculatePercentage();
            data.put("percentageMessage", "Percentage of correct answers: " + percentage);
            data.put("isCycleFinished", true);
            return data;
        }
    }

    @RequestMapping("/onceAgain")
    public String results() {
        questionCycle.initialiseNewQuestionCycle();
        return "redirect:/index";
    }

    @RequestMapping("/")
    public String home() {
        return "redirect:/index";
    }
}