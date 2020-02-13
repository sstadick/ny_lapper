from ny_lapper import makeInterval, makeLapper, nyFind


def test_intervals():
    interval = makeInterval(0, 5, 10)
    assert interval["start"] == 0
    assert interval["stop"] == 5
    assert interval["val"] == 10


def test_lapper():
    ivs = [makeInterval(x, x + 5, -1) for x in range(0, 10, 2)]
    lapper = makeLapper(ivs)
    assert lapper is not None


def test_nyFind():
    ivs = [makeInterval(x, x + 5, -1) for x in range(0, 100, 10)]
    lapper = makeLapper(ivs)
    found = nyFind(lapper, 3, 7)
    assert len(found) == 1
    assert found[0]["start"] == 0
    assert found[0]["stop"] == 5
    assert found[0]["val"] == -1
