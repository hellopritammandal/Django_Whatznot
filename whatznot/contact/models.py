from django.db import models


class ContactFormSubmission(models.Model):
    name = models.CharField(max_length=100, verbose_name="Name")
    email = models.EmailField(max_length=100, verbose_name="Email")
    phone_number = models.CharField(max_length=15, verbose_name="Phone Number")
    project_summary = models.TextField(max_length=2000, verbose_name="Project Summary")

    BUDGET_CHOICES = [
        ('NoIdea', "I Don't Have Any Idea"),
        ('3000-10000', '₹ 3000 - ₹ 10000'),
        ('10000-40000', '₹ 10000 - ₹ 400000'),
        ('40000-100000', '₹ 40000 - ₹ 100000'),
        ('100000up', '₹ 100000 And More'),
    ]
    budget = models.CharField(
        max_length=20,
        choices=BUDGET_CHOICES,
        verbose_name="Budget"
    )

    newsletter_subscription = models.BooleanField(
        default=False,
        verbose_name="Newsletter Subscription"
    )
    submission_date = models.DateTimeField(auto_now_add=True, verbose_name="Submission Date")

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = "Contact Form Submissions"
