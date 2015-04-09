package com.systemOfExamination.service;

import com.systemOfExamination.dao.QuestionDAO;
import com.systemOfExamination.domain.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

@Service
public class QuestionServiceImpl implements QuestionService {

    @Value("${questionsQuantity}")
    private Integer questionsQuantity;

    @Autowired
    private QuestionDAO questionDAO;

    @Transactional
    public Map<Integer, Question> getRandomQuestions() {
        List<Question> allQuestions = questionDAO.getAll();
        Map<Integer, Question> randomQuestions = new HashMap<Integer, Question>();

        while (randomQuestions.size() < questionsQuantity) {
            int currentNumber = randomQuestions.size() + 1;
            Question randomQuestion = getRandomQuestion(allQuestions);
            if (!randomQuestions.containsValue(randomQuestion)) {
                randomQuestions.put(currentNumber, randomQuestion);
            }
        }
        return randomQuestions;
    }

    private Question getRandomQuestion(List<Question> allQuestions) {
        Random random = new Random();
        int index = random.nextInt(allQuestions.size());
        return allQuestions.get(index);
    }
}