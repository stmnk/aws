from libs.stuff import (message, number_ten)

def test_number_ten():
    assert number_ten() == 10

def test_message():
    assert "!!!" in message()