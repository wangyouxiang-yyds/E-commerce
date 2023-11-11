from django.shortcuts import render, get_object_or_404
from .models import *
# Create your views here.
# 分頁
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

def BlogView(request):
    all_article = Article.objects.all().order_by('-pk', 'create_date')
    article_news_three = Article.objects.all().order_by('-pk', 'create_date')[:4]  # -pk為降序 這邊說明為依照建立時間去排序 限制三筆
    article_category = ArticleCategory.objects.all()
    selected_category_id = request.GET.get('category_id')

    if selected_category_id:
        all_article = all_article.filter(article_category=selected_category_id)

    if 'search' in request.GET:
        search = request.GET['search']
        if len(search) > 0:
            all_article = Article.objects.filter(title__icontains=search, content__icontains=search).order_by('-pk', 'create_date')


    paginator = Paginator(all_article, 1)
    page = request.GET.get('page', 1)

    try:
        all_article = paginator.page(page)
    except PageNotAnInteger:
        all_article = paginator.page(1)
    except EmptyPage:
        all_article = paginator.page(paginator.num_pages)

    return render(request, 'blog-right-sidebar.html', locals())

# 文章內容
def blog_single(request, article_id):
    all_article = Article.objects.all().order_by('-pk', 'create_date')
    article_content = get_object_or_404(all_article, pk=article_id)

    return render(request, 'blog-single.html', locals())


