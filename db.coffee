polls = exports.polls =
    1:
        question: "quel age as-tu ?"
        answers:
            0: '0-17'
            1: '18-25'
            2: '26-52'
            3: '52-142'
        private: true
        secret: 'salut'
    2:
        question: "quel est votre projet prefere ?"
        dateEnd: Date.now() + 10000
        registeredUserOnly: true
        allowedUsers: ['azerty', 'bidule', 'salut']
        answers:
            0: "bah votejs..."
            1: "ya d'autres projets ?"
            2: "Une pomme"
            3: "Touche a ton cul"
            4: "Sens ton doigt"
            5: "La reponse D"
    3:
        question: "pile ou face ?"
        answers:
            0: "pile"
            1: "face"

for key, poll of polls
    poll.private          ?= false
    poll.id               ?= parseInt key
    poll.dateEnd          ?= null
    poll.canChangeVote    ?= true
    poll.canViewResults   ?= true
    poll.canUnvote        ?= false
    poll.registeredUserOnly ?= false

cache = exports.cache =
    1:
        2: 42
        0: 46

votes = exports.votes =
    1:
        poll: 2
        date: Date(345678914)
        answer: 0
        userId: 1
    2:
        poll: 2
        answer: 0
        userId: 2
        date: Date(1232435)
    3:
        poll: 2
        answer: 2
        userId: 3
        date: Date(1232435)
    4:
        poll: 2
        answer: 2
        userId: 4
        date: Date(1232435)
    5:
        poll: 3
        answer: 0
        userId: 1
        date: Date(1232435)
