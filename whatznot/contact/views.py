from django.core.mail import send_mail
from django.shortcuts import render, redirect
from .models import ContactFormSubmission
from django.utils import timezone


def contact_view(request):
    if request.method == 'POST':



        name = request.POST['name']
        email = request.POST['email']
        phone_number = request.POST['phone_number']
        project_summary = request.POST['project_summary']
        budget = request.POST['budget']

        # Create and save a new ContactFormSubmission object
        submission = ContactFormSubmission(
            name=name,
            email=email,
            phone_number=phone_number,
            project_summary=project_summary,
            budget=budget,
            submission_date=timezone.now()  # Use the current date and time
        )
        submission.save()

        subject = 'New Contact Form Submission'
        message = f'''
                Name: {name}
                Email: {email}
                Phone Number: {phone_number}
                Project Summary: {project_summary}
                Budget: {budget}
                Submission Date: {submission.submission_date}
                '''
        from_email = 'whatznotall@gmail.com'  # Use the same email address as in your settings
        recipient_list = ['whatznotall@gmail.com']  # Replace with your recipient email address
        send_mail(subject, message, from_email, recipient_list)

        # Redirect to a thank you page or any other page as needed
        return redirect('thankyou')
    current_page = 'contact'
    context = {
        'current_page': current_page,
    }

    return render(request, 'contact/contact.html',context )

def thankyou_view(request):
    current_page = 'contact'

    context = {
        'current_page': current_page,
    }
    return render(request, 'contact/thankyou.html',context)
