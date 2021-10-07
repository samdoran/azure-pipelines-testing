import prog


def test_run():
    assert prog.run()


def test_greeting():
    assert prog.greeting() == "Hello there"
