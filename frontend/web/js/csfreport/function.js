$("body").on("click","#btnGenerate",function () {

    var sdate = $("#txtstart").val(); 
    var edate = $("#txtend").val(); 


    jQuery.ajax( {
        type: "POST",
        url: frontendURI + "csf/csfreport/generatecsf",
        data: {sd : sdate , ed: edate},
        dataType: "text",
        success: function ( result ) {
            //console.log(result);
            $.pjax.reload({container:'#kv-grid-data'});
        },
        error: function ( xhr, ajaxOptions, thrownError ) {
            alert( thrownError );
        }
    } );




});