$(document).ready(function () {
    $('#formularioProceso').bootstrapValidator({
        //        live: 'disabled',
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            ctl00$ContentPlaceHolder1$DropDownList_ACTIVO: {
                
                row:'.dtBasicos',
                message: 'El ESTADO de la empresa es requerido',
                validators: {
                    notEmpty: {
                        enabled: true,
                        message: 'El ESTADO de la empresa es requerido'
                    }
                    
                    
                }
            },
            ctl00$ContentPlaceHolder1$TextBox_DESCRIPCION_HISTORIAL_ACT: {
                enabled: true,
                row:'.dtBasicos',
                message: 'El ESTADO de la empresa es requerido',
                validators: {
                    notEmpty: {
                        enabled: true,
                        message: 'El ESTADO de la empresa es requerido'
                    }
                    
                    
                }
            },
            ctl00$ContentPlaceHolder1$TextBox_FCH_INGRESO: {
                enabled: true,
                row:'.dtBasicos',
                message: 'La FECHA DE INGRESO es requerida.',
                validators: {
                    notEmpty: {
                        enabled: true,
                        message: 'La FECHA DE INGRESO es requerida.'
                    }
                    
                    
                }
            }

            
            
           
        }
    });
});

