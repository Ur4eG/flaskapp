maden: linux an python 3.5+
---------------------------
run locally:

git clone <this>

cd flaskapp

virtualenv ./

source bin/activate

pip install -r requirements.txt

export FLASK_APP=app/routes.py

flask run

---------------------
run via Docker (see Dockerfile)

docker build -t <name> .
docker run -p 5000:5000 <name> [--host=<if needed another>] # by default --host=0.0.0.0 (127.0.0.1 only for local even if port mapped)
