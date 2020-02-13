import ny_lapper


def test_intervals():
    interval = makeInterval(0, 5, 10)
    assert interval["start"] == 0
    assert interval["stop"] == 5
    assert interval["val"] == 10
