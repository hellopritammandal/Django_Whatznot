from django.contrib import admin
from .models import FAQ, FAQCategory, Review,ServiceLocation,Portfolio,PortfolioCategory,Client,TeamMember





class TeamMemberAdmin(admin.ModelAdmin):
    list_display = ('team_image','name', 'designation' )
    search_fields = ('name', 'designation')
admin.site.register(TeamMember, TeamMemberAdmin)

class PartnerAdmin(admin.ModelAdmin):
    list_display = ('client_image','name')
    search_fields = ('name',)
    list_per_page = 10
admin.site.register(Client,PartnerAdmin)

admin.site.register(FAQCategory)

class FAQAdmin(admin.ModelAdmin):
    search_fields = ('question', 'answer')
    list_filter = ('category',)
    list_per_page = 100
admin.site.register(FAQ,FAQAdmin)



class PortfolioAdmin(admin.ModelAdmin):
    list_display = ('portfolio_image','portfolio_name', 'get_categories', 'client_name', 'team', 'service_name', 'date', 'overview')
    search_fields = ('portfolio_name', 'get_categories', 'client_name', 'team', 'service_name', 'overview')
    list_filter = ('category','date','is_featured',)
    list_per_page = 100

    def get_categories(self, obj):
        return ", ".join([category.name for category in obj.category.all()])

    get_categories.short_description = 'Categories'  # Set a custom column header

admin.site.register(Portfolio, PortfolioAdmin)

admin.site.register(PortfolioCategory)

class reviewAdmin(admin.ModelAdmin):
    list_display = ('Client_image','author_name','project_name')
    search_fields = ('author_name', 'project_name','review_details')
    list_filter = ('review_date','has_features')
    list_per_page = 10
admin.site.register(Review, reviewAdmin)




admin.site.register(ServiceLocation)


