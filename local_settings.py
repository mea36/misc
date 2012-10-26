import os
import os.path
		
DEBUG = True
TEMPLATE_DEBUG = DEBUG
PROJECT_DIR = os.path.dirname(__file__)
SITE_ID = 4
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2', # Add 'postgresql_psycopg2', 'postgresql', 'mysql', 'sqlite3' or 'oracle'.
        'NAME': 'coupedout',
        'USER': 'onmeprot_test',                      # Not used with sqlite3.
        'PASSWORD': 'onme123',               # Not used with sqlite3.
        'HOST': '',                           # Set to empty string for localhost. Not used with sqlite3.
        'PORT': '5432',                           # Set to empty string for default. Not used with sqlite3.
    }
}
        #'NAME': 'onmeprot_test',                      # Or path to database file if using sqlite3.
        #'NAME': 'coupedout',                      # Or path to database file if using sqlite3.
        #master branch = coupedout_master
        #develop branch = coupedout
        #celery = onmeprot

#STATIC_ROOT = PROJECT_DIR+'/../assets'
STATIC_URL = '/assets'
#STATICFILES_DIRS = ('/static',)
#STATIC_ROOT = '/home/housepage/Projects/FastTable-OnMe-hmishmashabration/service/static'
SITE_URL = 'http://localhost:8000'
#MEDIA_ROOT = os.path.join(PROJECT_DIR, '../assets')

INTERNAL_IPS = ('127.0.0.1',)

DEBUG_TOOLBAR_CONFIG= {'INTERCEPT_REDIRECTS':False}

DEBUG_TOOLBAR_PANELS = (
    'debug_toolbar.panels.version.VersionDebugPanel',
    'debug_toolbar.panels.timer.TimerDebugPanel',
    'debug_toolbar.panels.settings_vars.SettingsVarsDebugPanel',
    'debug_toolbar.panels.headers.HeaderDebugPanel',
    'debug_toolbar.panels.request_vars.RequestVarsDebugPanel',
    'debug_toolbar.panels.template.TemplateDebugPanel',
    'debug_toolbar.panels.sql.SQLDebugPanel',
    'debug_toolbar.panels.signals.SignalDebugPanel',
    'debug_toolbar.panels.logger.LoggingPanel',
    )

'''
EMAIL_HOST='localhost'
EMAIL_PORT=2525
EMAIL_HOST_USER=''
EMAIL_HOST_PASSWORD=''
EMAIL_USE_TLS = False
'''


#LOGGING Settings
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'formatters': {
        'verbose': {
            'format': '%(levelname)s %(asctime)s %(module)s %(process)d %(thread)d %(message)s'
            },
        'simple': {
            'format': '%(levelname)s %(message)s'
            },
        },
    'handlers': {
        # Include the default Django email handler for errors
        # This is what you'd get without configuring logging at all.
        'mail_admins': {
            'class': 'django.utils.log.AdminEmailHandler',
            'level': 'ERROR',
            # But the emails are plain text by default - HTML is nicer
            'include_html': True,
            },
        # Log to a text file that can be rotated by logrotate
        'logfile': {
            'class': 'logging.handlers.WatchedFileHandler',
            'filename': os.path.join(PROJECT_DIR, '../coupedout.log'),
            },
        'console':{
            'level':'DEBUG',
            'class':'logging.StreamHandler',
            'formatter': 'verbose'
            },
        },
    'loggers': {
        # Again, default Django configuration to email unhandled exceptions
        'django.request': {
            'handlers': ['console', 'mail_admins'],
            'level': 'DEBUG',
            'propagate': True,
            },
        # Might as well log any errors anywhere else in Django
        'django': {
            'handlers': ['console'],
            'level': 'ERROR',
            'propagate': False,
            },
        # Your own app - this assumes all your logger names start with "myapp."
        'myapp': {
            'handlers': ['console'],
            'level': 'DEBUG', # Or maybe INFO or DEBUG or WARNING
            'propogate': False
            },
        'coupedout.friends': {
            'handlers': ['console','logfile'],
            'level': 'DEBUG', # Or maybe INFO or DEBUG
            'propogate': False
            },
        'django.db.backends': {
            'handlers': ['logfile'],
            'level': 'ERROR', # make this DEBUG so it prints all sql
            'propagate': True,
            },
    },
}


# Local time zone for this installation. Choices can be found here:
# http://en.wikipedia.org/wiki/List_of_tz_zones_by_name
# although not all choices may be available on all operating systems.
# On Unix systems, a value of None will cause Django to use the same
# timezone as the operating system.
# If running in a Windows environment this must be set to the same as your
# system time zone.
TIME_ZONE = 'UTC'
SITE_URL = 'http://localhost:8000/'
# Language code for this installation. All choices can be found here:
# http://www.i18nguy.com/unicode/language-identifiers.html
LANGUAGE_CODE = 'en-us'

SOUTH_TESTS_MIGRATE = False
#DEBUG = False

#to immitate htaccess
BASIC_WWW_AUTHENTICATION_USERNAME = "demo"
BASIC_WWW_AUTHENTICATION_PASSWORD = "demo"
BASIC_WWW_AUTHENTICATION = True

# If you set this to False, Django will make some optimizations so as not
# to load the internationalization machinery.
USE_I18N = True

# If you set this to False, Django will not format dates, numbers and
# calendars according to the current locale
USE_L10N = True

# Absolute path to the directory that holds media.
# Example: "/home/media/media.lawrence.com/"
#MEDIA_ROOT = '/home/onmeprot/webapps/testing/media/'

AWS_STORAGE_BUCKET_NAME = 'coupedout-assets-dev'
AWS_CF_DISTRIBUTION_ID = 'E1AFXXLQL3GXZO'

#SITE_URL = 'http://coupedout.com/'

# URL that handles the media served from MEDIA_ROOT. Make sure to use a
# trailing slash if there is a path component (optional in other cases).
# Examples: "http://media.lawrence.com", "http://example.com/media/"
MEDIA_URL = '/assets/'

# URL prefix for static files.
# Example: "http://media.lawrence.com/static/"
#to go from cdn use this and comment out thing in urls
#STATIC_URL = 'http://assets-dev.coupedout.com'

# URL prefix for admin media -- CSS, JavaScript and images. Make sure to use a
# trailing slash.
# Examples: "http://foo.com/media/", "/media/".
ADMIN_MEDIA_PREFIX = '%s/admin/' % STATIC_URL
