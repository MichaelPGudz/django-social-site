# GIT_REPOSITORY_URL
PROJECT_GIT_URL='https://github.com/MichaelPGudz/django-social-site.git'

# CLONING REPOSITORY
git clone $PROJECT_GIT_URL

#PYTHON ANYWHERE Virtaulenv initiation
echo '' >> ~/.bashrc && echo 'source virtualenvwrapper.sh' >> ~/.bashrc
source virtualenvwrapper.sh

echo "Installing dependencies..."
mkvirtualenv --python=python3.6 myproj

# INSTALLING LIBRARIES
cd django-social-site
pip install -r requirements.txt

# MAKING MIGRATIONS
cd django-social-site
python manage.py migrate
python manage.py makemigrations accounts
python manage.py makemigrations groups
python manage.py makemigrations posts
python manage.py migrate

echo "DONE! :)"