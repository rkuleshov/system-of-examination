package com.systemOfExamination.service;

import com.systemOfExamination.domain.Question;

import java.util.Map;

public interface QuestionService {

    Map<Integer, Question> getRandomQuestions();
}