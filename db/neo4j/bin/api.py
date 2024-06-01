from wsgiref.simple_server import make_server

from pyramid.config import Configurator
from pyramid.response import Response
from pyramid.view import view_config

import logging
from model import DbModel

logging.basicConfig(level=logging.INFO)

neo = DbModel()

@view_config(renderer='json')
def smoke_test(request):
    cipher = 'UNWIND range(1, 3) AS n RETURN n, n * n as n_sq'
    d = neo.connect().run(cipher).data()
    return {'results': d}

@view_config(renderer='json')
def get_all(request):
    return neo.get_all()

@view_config(renderer='json')
def filter_by_name(request):
    name  = request.matchdict['name']
    return neo.filter_by_name(name)

@view_config(renderer='json')
def filter_by_breed(request):
    breed  = request.matchdict['breed']
    return neo.filter_by_breed(breed)

@view_config(renderer='json')
def filter_by_color(request):
    color  = request.matchdict['color']
    return neo.filter_by_color(color)

if __name__ == '__main__':
    with Configurator() as config:
        config.add_route('smoke_test', '/')
        config.add_route('get', '/dog')
        config.add_route('filter_by_name', '/dog/name/{name}')
        config.add_route('filter_by_breed', '/dog/breed/{breed}')
        config.add_route('filter_by_color', '/dog/color/{color}')
        config.add_view(smoke_test, route_name='smoke_test', renderer='json')
        config.add_view(get_all, route_name='get', renderer='json')
        config.add_view(filter_by_name, route_name='filter_by_name', renderer='json')
        config.add_view(filter_by_breed, route_name='filter_by_breed', renderer='json')
        config.add_view(filter_by_color, route_name='filter_by_color', renderer='json')
        config.scan('model')
        app = config.make_wsgi_app()
    server = make_server('0.0.0.0', 6543, app)
    server.serve_forever()
