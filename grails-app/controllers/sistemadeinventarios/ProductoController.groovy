package sistemadeinventarios

import org.springframework.dao.DataIntegrityViolationException

class ProductoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [productoInstanceList: Producto.list(params), productoInstanceTotal: Producto.count()]
    }

    def create() {
        [productoInstance: new Producto(params)]
    }

    def save() {
        def institucion = Institucion.get(params.institucion?.id)
        def productoInstance = new Producto(params)
        productoInstance.institucion = institucion
        productoInstance.categoria = Categoria.get(params.categoria?.id)
        institucion.addToProductos(productoInstance)
        println "******* Institución: "+params.institucion.id+" *******"
        println "******* Categoria: "+params.categoria.id+" *******"
        if (!institucion.save(flush: true)) {
            render(view: "create", model: [productoInstance: productoInstance])
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'producto.label', default: 'Producto'), productoInstance.id])
        redirect(action: "show", id: productoInstance.id)
    }

    def showImage = {
        def producto = Producto.get(params.id)
        response.contentType  = 'image/jpeg'
        response.outputStream << producto.codigoBarras
        response.outputStream.flush()
    }

    def show() {
        def productoInstance = Producto.get(params.id)
        if (!productoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'producto.label', default: 'Producto'), params.id])
            redirect(action: "list")
            return
        }

        [productoInstance: productoInstance]
    }

    def edit() {
        def productoInstance = Producto.get(params.id)
        if (!productoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'producto.label', default: 'Producto'), params.id])
            redirect(action: "list")
            return
        }

        [productoInstance: productoInstance]
    }

    def update() {
        def productoInstance = Producto.get(params.id)
        if (!productoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'producto.label', default: 'Producto'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (productoInstance.version > version) {
                productoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'producto.label', default: 'Producto')] as Object[],
                        "Another user has updated this Producto while you were editing")
                render(view: "edit", model: [productoInstance: productoInstance])
                return
            }
        }

        productoInstance.properties = params

        if (!productoInstance.save(flush: true)) {
            render(view: "edit", model: [productoInstance: productoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'producto.label', default: 'Producto'), productoInstance.id])
        redirect(action: "show", id: productoInstance.id)
    }

    def delete() {
        def productoInstance = Producto.get(params.id)
        if (!productoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'producto.label', default: 'Producto'), params.id])
            redirect(action: "list")
            return
        }

        try {
            productoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'producto.label', default: 'Producto'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'producto.label', default: 'Producto'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
