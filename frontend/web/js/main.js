/*
 * Project Name: fais *
 * Copyright(C)2018 Department of Science & Technology -IX *
 * Developer: Larry Mark B. Somocor , Aris Moratalla  *
 * 04 16, 2018 , 10:10:00 AM *
 * Module: main *
 */


jQuery(document).ready(function ($) {
    
    // --- Create Button
    $('#modalButton').click(function(){
        $('#modal').modal('show')
            .find('#modalContent')
            .load($(this).attr('value'));
        $('#modalHeader').html($(this).attr('header'));
    });
    
    // --- Delete action (bootbox) ---
    yii.confirm = function (message, ok, cancel) {
        var title = $(this).data("title");
        var confirm_label = $(this).data("ok");
        var cancel_label = $(this).data("cancel");

        bootbox.confirm(
            {
                title: title,
                message: message,
                buttons: {
                    cancel: {
                        label: cancel_label,
                        className: 'btn-default btn-flat'
                    },
                    confirm: {
                        label: confirm_label,
                        className: 'btn-danger btn-flat'
                    }
                },
                callback: function (confirmed) {
                    if (confirmed) {
                        !ok || ok();
                    } else {
                        !cancel || cancel();
                    }
                }
            }
        );
        // confirm will always return false on the first call
        // to cancel click handler
        return false;
    }


    // This JS file is exclusively for CRUD Method

    $('body').on('click','.myAdd' , function() {
        $(".loadpartial").fadeIn(300);
        $(".loadpartial").show();
      jQuery.ajax( {
            type: "POST",
            url: "create?id=''&view=add",
            dataType: "text",
            success: function ( response ) {
                $("#mycreate").html(response);
                $(".loadpartial").hide();
            },
            error: function ( xhr, ajaxOptions, thrownError ) {
                alert( thrownError );
            }
        } );
    });

    $('body').on('click','.myEdit' , function() {
        $(".loadpartial").fadeIn(300);
        $(".loadpartial").show();
        var x = $(this).data('id');
        jQuery.ajax( {
            type: "POST",
            url: "update?id=" + x + "&view=edit",
            dataType: "text",
            success: function ( response ) {
                $("#mycontent").html(response);
                $(".loadpartial").hide();
            },
            error: function ( xhr, ajaxOptions, thrownError ) {
                alert( thrownError );
            }
        } );
    });

    $('body').on('click','.myView' , function() {
        $(".loadpartial").fadeIn(300);
        $(".loadpartial").show();
        var x = $(this).data('id');
        jQuery.ajax( {
            type: "POST",
            url:  "view?id=" + x + "&view=views",
            dataType: "text",
            success: function ( response ) {
                //console.log(response);
                $("#mycontentview").html(response);
                $(".loadpartial").hide();
            },
            error: function ( xhr, ajaxOptions, thrownError ) {
                alert( thrownError );
            }
        } );
    });
    $('#myAdd').on('hidden.bs.modal', function () {
        location.reload();
    });
    $('#Update').on('hidden.bs.modal', function () {
        //alert('tst');
        location.reload();
    });
    $('#myView').on('hidden.bs.modal', function () {
        //alert('tst');
        location.reload();
    });
    // Closing of Custom Function for CRUD Method
});

