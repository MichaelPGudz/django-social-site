from django.contrib import admin
from . import models
# Register your models here.

class PostAdmin(admin.ModelAdmin):
    # model = models.Post
    list_display = ('message', 'user', 'created_at', 'group')


admin.site.register(models.Post, PostAdmin)