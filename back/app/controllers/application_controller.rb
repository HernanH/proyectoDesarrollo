class ApplicationController < ActionController::API
    include Response

    rescue_from ActiveRecord::RecordInvalid, with: :error_atributos
    rescue_from ActiveRecord::RecordNotFound, with: :no_encontrado

    def error_atributos(exception)
        render json: exception.record.errors, status: :unprocessable_entity
    end

    def no_encontrado(exception)
        render json: { error: exception.message }, status: :not_found
    end
end
