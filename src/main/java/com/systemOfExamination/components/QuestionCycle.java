package com.systemOfExamination.components;

import com.systemOfExamination.domain.Question;
import com.systemOfExamination.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Map;

public class QuestionCycle {

    private int count;
    private int correctAnswersAmount;

    @Autowired
    private QuestionService questionService;

    private Map<Integer, Question> randomQuestions;

    public void initialiseNewQuestionCycle() {
        count = 1;
        correctAnswersAmount = 0;
        randomQuestions = questionService.getRandomQuestions();
    }

    public Question getCurrentQuestion() {
        return randomQuestions.get(count);
    }

    public void switchToNextQuestion() {
        count++;
    }

    public int calculatePercentage() {
        return (100 / randomQuestions.size()) * correctAnswersAmount;
    }

    public void incrementCorrectAnswersAmount() {
        correctAnswersAmount++;
    }

    public int getCurrentQuestionNumber() {
        return count;
    }
}
