import os

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': os.environ.get('DATABASE_NAME', 'botsdb'),
        'USER': os.environ.get('DATABASE_USER', 'bots'),
        'PASSWORD': os.environ.get('DATABASE_PASSWORD', 'bots123'),
        'HOST': os.environ.get('DATABASE_HOST', 'localhost'),
        'PORT': os.environ.get('DATABASE_PORT', '5432'),
    }
}
