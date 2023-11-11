from django.contrib import admin
from .models import *


# Register your models here.


class ArticleCategoryAdmin(admin.ModelAdmin):
    list_display = ['article_category']


admin.site.register(ArticleCategory, ArticleCategoryAdmin)


class ArticleAdmin(admin.ModelAdmin):
    list_display = ['title', 'article_category', 'author_name', 'modify_date', 'create_date']


admin.site.register(Article, ArticleAdmin)
