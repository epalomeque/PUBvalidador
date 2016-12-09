from django import template


register = template.Library()


def get_valor(value, arg):
    dicc = value.get(arg)
    return dicc.get('valor')


def get_esvalido(value, arg):
    dicc = value.get(arg)
    return dicc.get('esvalido')


def get_descrip(value, arg):
    dicc = value.get(arg)
    return dicc.get('descrip')


register.filter('get_valor', get_valor)
register.filter('get_esvalido', get_esvalido)
register.filter('get_descrip', get_descrip)