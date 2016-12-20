from django import template


register = template.Library()

# Filtros para el registro de un valor
def get_valor(value, arg):
    dicc = value.get(arg)
    return dicc.get('valor')


def get_esvalido(value, arg):
    dicc = value.get(arg)
    return dicc.get('esvalido')


def get_descrip(value, arg):
    dicc = value.get(arg)
    return dicc.get('descrip')


def siselectedno(value, arg):
    dicc = value.get(arg)
    if dicc.get('valor') == 'NO':
        return 'selected=selected'
    else:
        return ''


def siselectedsi(value, arg):
    dicc = value.get(arg)
    if dicc.get('valor') == 'SI':
        return 'selected=selected'
    else:
        return ''


def addcss(value, arg):
    #css_classes = value.field.widget.attrs.get('class')
    #print '--*'+ str(css_classes)
    #if css_classes and arg not in css_classes:
    #    css_classes = '%s %s' % (css_classes, arg)
    return value.as_widget(attrs={'class': arg})

register.filter('get_valor', get_valor)
register.filter('get_esvalido', get_esvalido)
register.filter('get_descrip', get_descrip)
register.filter('siselectedno', siselectedno)
register.filter('siselectedsi', siselectedsi)
register.filter('addcss', addcss)
