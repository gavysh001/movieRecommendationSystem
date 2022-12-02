from django.contrib import admin
from .models import *


# Register your models here.
admin.AdminSite.site_header = 'Movie Recommendation System'
admin.AdminSite.site_title = 'Admin'

# admin.AdminSite.

class VisitorAdmin(admin.ModelAdmin):
    class Media:
        css = {
            'all': ('admin/css/mynewcss.css',)
        }


admin.site.register(Visitors, VisitorAdmin)
admin.site.register(Genres)

class MoviesAdmin(admin.ModelAdmin):
    list_display = ('id','__str__','director','release_date','show_image')
    list_display_links = ()
    list_filter = ()
    list_select_related = False
    list_per_page = 100
    list_max_show_all = 200
    list_editable = ()
    search_fields = ()
    date_hierarchy = None
    save_as = False
    save_as_continue = True
    save_on_top = False
    preserve_filters = True
    inlines = []
    # Actions
    actions = []
    actions_on_top = True
    actions_on_bottom = False
    actions_selection_counter = True

admin.site.register(Movies, MoviesAdmin)

admin.site.register(Artists)