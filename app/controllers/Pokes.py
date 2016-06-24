"""
    Sample Controller File

    A Controller should be in charge of responding to a request.
    Load models to interact with the database and load views to render them to the client.

    Create a controller using this template
"""
from system.core.controller import *

class Pokes(Controller):
    def __init__(self, action):
        super(Pokes, self).__init__(action)
        """
        This is an example of loading a model.
        Every controller has access to the load_model method.
        """
        self.load_model('Poke')
        self.load_model('User')
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

    def show(self):
        count = self.models['Poke'].poke_count(session['id'])
        pokes = self.models['Poke'].poke_number(session['id'])
        other = self.models['Poke'].get_other_pokes(session['id'])
        print 'This', count
        print 'Pokes:', pokes
        print "other: ", other
        return self.load_view('poke.html',count=count[0],pokes=pokes,others=other)

    def action(self, id):
        insert = self.models['Poke'].add_poke(id,session['id'])
        return redirect('/pokes')


