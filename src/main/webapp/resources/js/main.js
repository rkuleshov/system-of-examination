var timer;

function changeQuestion() {

    var answerId = $("input[name='answerId']:checked").val();
    var buttonNext = $('#buttonNext');

    var isCycleFinished = $('#isCycleFinished');

    if (isCycleFinished.attr('value') == "true") {
        buttonNext.attr('value', 'Next');
        isCycleFinished.attr('value', 'false');

// if the questions are over, set answerId = -1;
        answerId = -1;

    }

    if (answerId == null) {
// if user didn't choose any option, set answerId = -2;
        answerId = -2;
    }

    $.ajax({
            type: "GET",
            data: {answerId: answerId},
            url: "/nextQuestion",
            dataType: "json",
            success: function (data) {

                var question = $("#question");
                var answersContainer = $('#answers');
                var percentageMessage = $("#percentageMessage");

                if (data.isCycleFinished) {
                    percentageMessage.html(data.percentageMessage);
                    $('#buttonNext').attr('value', 'Once again');
                    $('#isCycleFinished').attr('value', 'true');

                    clearInterval(timer);
                    answersContainer.html("");
                    question.html("");

                } else {
                    if (isCycleFinished.attr('value') != "false") {
                        buttonNext.attr('value', 'Next');
                        isCycleFinished.attr('value', 'false');
                    }

                    percentageMessage.html("");
                    question.html(data.question.questionDescription);
                    var answers = data.question.answers;

                    answersContainer.html("");
                    for (var key in answers) {
                        var answer = answers[key];
                        answersContainer.append("<tr><td><input type='radio' name='answerId' " +
                            "value=" + answer.answerId + ">" + answer.answerDescription + "</td></tr>");
                    }
                }
            }
        }
    )
}

function
    changeQuestionsByTimer() {

    timer = startTimer();

    $("#buttonNext").click(function () {
        clearInterval(timer);
        changeQuestion();
        timer = startTimer();
    });
}

function startTimer() {
    return setInterval(function () {
        changeQuestion();
    }, 30000);
}

