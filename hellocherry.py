import cherrypy


class HelloWorld(object):
    def index(self):
        return "Hello World!"
    index.exposed = True


cherrypy.config.update(
    {'server.socket_host': '0.0.0.0', 'server.socket_port': 80})
cherrypy.quickstart(HelloWorld())
