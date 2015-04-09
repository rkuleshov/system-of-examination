package com.systemOfExamination.dao;

import com.systemOfExamination.domain.Question;

import java.util.List;

public interface QuestionDAO {

    List<Question> getAll();
}