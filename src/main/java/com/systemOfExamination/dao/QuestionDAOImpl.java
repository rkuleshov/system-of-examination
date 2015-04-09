package com.systemOfExamination.dao;

import com.systemOfExamination.domain.Question;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Qualifier("questionDAO")
public class QuestionDAOImpl implements QuestionDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @SuppressWarnings("unchecked")
    public List<Question> getAll() {
        Query query = sessionFactory.getCurrentSession().createQuery("from Question");
        List<Question> questions = query.list();
        for (Question question : questions) {
            question.getAnswers();
        }
        return questions;
    }
}


