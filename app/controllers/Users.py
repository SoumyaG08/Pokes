"""
    Sample Controller File

    A Controller should be in charge of responding to a request.
    Load models to interact with the database and load views to render them to the client.

    Create a controller using this template
"""
from system.core.controller import *

class Users(Controller):
    def __init__(self, action):
        super(Users, self).__init__(action)
        """
        This is an example of loading a model.
        Every controller has access to the load_model method.
        """
        self.load_model('User')
        # self.load_model('Poke')
        self.db = self._app.db

        """
        
        This is an example of a controller method that will load a view for the client 

        """
   
    def index(self):
        """
        A loaded model is accessible through the models attribute 
        self.models['WelcomeModel'].get_users()
        
        self.models['WelcomeModel'].add_message()
        # messages = self.models['WelcomeModel'].grab_messages()
        # user = self.models['WelcomeModel'].get_user()
        # to pass information on to a view it's the same as it was with Flask
        
        # return self.load_view('index.html', messages=messages, user=user)
        """
        return self.load_view('index.html')

    def register(self):

        reg_valid = self.models['User'].create_user(request.form)
        #Check reg_valid for True or False and then the other dictionary based on it:
        if reg_valid['status'] == True:
            # session['id'] = reg_valid['user']['id']
            # session['name'] = reg_valid['user']['first_name']
            flash('You have successfully registered! Please login!!')
            return redirect('/')
        else:
            for message in reg_valid['errors']:
                flash(message)
            return redirect('/')

    def login(self):
        
        log_valid = self.models['User'].login_user(request.form)
        if log_valid['status'] == True:
            session['name'] = log_valid['user']['name']
            session['id'] = log_valid['user']['id']
            session['alias'] = log_valid['user']['alias']
            print "session[id]", session['id']
            return redirect('/pokes')
        else:
            for message in log_valid['errors']:
                print "Flashing a message"
                flash(message)
            return redirect('/')

    def logout(self):
        session.clear()
        return redirect('/')

