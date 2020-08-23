from backend.server import app

def test_thing():
    app.testing = True
    client = app.test_client()
    pass
