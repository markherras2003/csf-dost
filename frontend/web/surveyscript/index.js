jQuery(document).ready(function ($) {

var mainurl = '';
//localStorage["myJson"]="";
if (window.location.host == "localhost")
{
    mainurl = '';
}else{
   mainurl =  '';
}

Survey.Survey.cssType = "bootstrap";
Survey.showQuestionNumbers = "off";
Survey.defaultBootstrapCss.navigationButton = "btn btn-green";
alert(localStorage["myJson"]);
if (localStorage["myJson"]=="HUMAN RESOURCES")


var json = {
   goNextPageAutomatic: false,
   showNavigationButtons: false,
   showQuestionNumbers: "",
   requiredText: "",
   
   pages: [
   
{
    c1: localStorage["myJson"],
},
   
       {
           questions: [
               
               {
                   "type": "imagepicker",
                   "name": "q1",
                   "isRequired": true,
                   "title": "Quality of Human Resource Unit Services",
                   "choices": [
                       {
                           "value": "1",
                           "imageLink": "../surveyscript/images/Scale_01_Edited.png",
                       }, {
                           "value": "2",
                           "imageLink": "../surveyscript/images/Scale_02_Edited.png"
                       }, {
                           "value": "3",
                           "imageLink": "../surveyscript/images/Scale_03_Edited.png"
                      }, {
                           "value": "4",
                           "imageLink": "../surveyscript/images/Scale_04_Edited.png"
                     }, {
                           "value": "5",
                           "imageLink": "../surveyscript/images/Scale_05_Edited.png"
                    },
                   ]
               },

           ],

       },
        {  
       questions : [

        {
            "type": "imagepicker",
            "name": "q2",
            "isRequired": true,
               "title": "Efficiency of the Human Resource Unit Service",
            "choices": [
                {
                    "value": "1",
                    "imageLink": "../surveyscript/images/Scale_01_Edited.png",
                }, {
                    "value": "2",
                    "imageLink": "../surveyscript/images/Scale_02_Edited.png"
                }, {
                    "value": "3",
                    "imageLink": "../surveyscript/images/Scale_03_Edited.png"
               }, {
                    "value": "4",
                    "imageLink": "../surveyscript/images/Scale_04_Edited.png"
              }, {
                    "value": "5",
                    "imageLink": "../surveyscript/images/Scale_05_Edited.png"
             },
            ]
        },

       ]
    },
       {
         questions: [
   
            {
               "type": "imagepicker",
               "name": "q3",
               "isRequired": true,
               "title": "Timeliness of Delivery of services",
               "choices": [
                   {
                       "value": "1",
                       "imageLink": "../surveyscript/images/Scale_01_Edited.png",
                   }, {
                       "value": "2",
                       "imageLink": "../surveyscript/images/Scale_02_Edited.png"
                   }, {
                       "value": "3",
                       "imageLink": "../surveyscript/images/Scale_03_Edited.png"
                  }, {
                       "value": "4",
                       "imageLink": "../surveyscript/images/Scale_04_Edited.png"
                 }, {
                       "value": "5",
                       "imageLink": "../surveyscript/images/Scale_05_Edited.png"
                },
               ]
           },

     ]
 },
       {
         questions: [
   
            {
               "type": "imagepicker",
               "name": "q4",
               "isRequired": true,
               "title": "Attitude of staff handling your needs",
               "choices": [
                   {
                       "value": "1",
                       "imageLink": "../surveyscript/images/Scale_01_Edited.png",
                   }, {
                       "value": "2",
                       "imageLink": "../surveyscript/images/Scale_02_Edited.png"
                   }, {
                       "value": "3",
                       "imageLink": "../surveyscript/images/Scale_03_Edited.png"
                  }, {
                       "value": "4",
                       "imageLink": "../surveyscript/images/Scale_04_Edited.png"
                 }, {
                       "value": "5",
                       "imageLink": "../surveyscript/images/Scale_05_Edited.png"
                },
               ]
           },
     ]
 },
 {
    questions: [

       {
          "type": "imagepicker",
          "name": "q5",
          "isRequired": true,
          "title": "Over-all Satisfaction",
          "choices": [
              {
                  "value": "1",
                  "imageLink": "../surveyscript/images/Scale_01_Edited.png",
              }, {
                  "value": "2",
                  "imageLink": "../surveyscript/images/Scale_02_Edited.png"
              }, {
                  "value": "3",
                  "imageLink": "../surveyscript/images/Scale_03_Edited.png"
             }, {
                  "value": "4",
                  "imageLink": "../surveyscript/images/Scale_04_Edited.png"
            }, {
                  "value": "5",
                  "imageLink": "../surveyscript/images/Scale_05_Edited.png"
           },
          ]
      },
]


 },

 {
    questions: [

     {
        "type":"text",
        "name":"Name",
        "value":"ddada",
        
     },
     {
        "type":"comment",
        "name":"Remarks",
        "value":"dadad",
     }

]
},

 {
         questions: [
   
            {
                type: "html",
                name: "info",
                html: "<a id='surveyComplete2' href='#' onclick='survey.completeLastPage();' class='ui-link' style='display: inline;'><img src='../surveyscript/images/survey_button.png' height='100' width='100' alt=''></a>"

            },

     ]
 },

   ]
};











window.survey = new Survey.Model (json);

survey.showQuestionNumbers = 'on';
survey.onComplete.add(function(result) {

//document.querySelector('#surveyResult').innerHTML = JSON.stringify(result.data);
//"<h1 style='text-align:center;text-decoratation:uppercase;'>Thank you for completing the survey</h1>";

//result: " + JSON.stringify(result.data) + "

   localStorage["mdata"] =  JSON.stringify(result.data);
   alert(localStorage["mdata"]);
   var datas = localStorage["mdata"];
   var obj = JSON.parse(datas);
   $.ajax({
      type: "POST",
      url: mainurl + "insertrecord",
      data: { jsondata: datas },
      dataType: "text",
      beforeSend: function() {
      },
      success: function (data) {
                  document.querySelector('#surveyResult').innerHTML = "<div style='text-align: center;padding-bottom: 15px;'>Redirecting in few seconds or Click <a href='index.html'>here</a></div>";  
                  setTimeout(() => {
                     window.location.href  = 'survey';
                  }, 5000);
      }
   });
});

//Example of adding new locale into the library.
var mycustomSurveyStrings = {
pagePrevText: "Previous",
pageNextText: "Next",
completeText: "Submit",
otherItemText: "Other (describe)",
progressText: "Page {0} of {1}",
emptySurvey: "There is no visible page or question in the survey.",
completingSurvey: "Thenk you for Completeting the Customer Feedback",
loadingSurvey: "Survey is loading...",
optionsCaption: "Choose...",
requiredError: "Please answer the question.",
requiredInAllRowsError: "Please answer questions in all rows.",
numericError: "The value should be numeric.",
textMinLength: "Please enter at least {0} symbols.",
textMaxLength: "Please enter less than {0} symbols.",
textMinMaxLength: "Please enter more than {0} and less than {1} symbols.",
minRowCountError: "Please fill in at least {0} rows.",
minSelectError: "Please select at least {0} variants.",
maxSelectError: "Please select no more than {0} variants.",
numericMinMax: "The '{0}' should be equal or more than {1} and equal or less than {2}",
numericMin: "The '{0}' should be equal or more than {1}",
numericMax: "The '{0}' should be equal or less than {1}",
invalidEmail: "Please enter a valid e-mail address.",
urlRequestError: "The request returned error '{0}'. {1}",
urlGetChoicesError: "The request returned empty data or the 'path' property is incorrect",
exceedMaxSize: "The file size should not exceed {0}.",
otherRequiredError: "Please enter the other value.",
uploadingFile: "Your file is uploading. Please wait several seconds and try again.",
addRow: "Add row",
removeRow: "Remove",
choices_Item: "item",
matrix_column: "Column",
matrix_row: "Row",
savingData: "The results are saving on the server...",
savingDataError: "An error occurred and we could not save the results.",
savingDataSuccess: "The results were saved successfully!",
saveAgainButton: "Try again"
};
Survey.surveyLocalization.locales["my"] = mycustomSurveyStrings;
survey.locale = "my";

$("#surveyElement").Survey({model:survey});

var footer = document.querySelector(".panel-footer")
var cancelBtn = document.createElement("button");

cancelBtn.onclick = function() {
   Swal.fire({
      title: 'Are you sure',
      text: "Are you sure you want to cancel Survey?",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: 'Yes'
   
    }).then((result) => {
      if (result.value) {
         
         window.location.href = 'survey';
   
      }
    });
}

cancelBtn.innerHTML = "Cancel";
cancelBtn.className = "btn btn-red"

footer.appendChild(cancelBtn);



});




$( document ).on( "click", ".openmode", function () {
var mdata = $( this ).data( 'id' );
Swal.fire({
   title: 'Are you sure?',
   text: "You Selected :" + mdata,
   icon: 'info',
   showCancelButton: true,
   confirmButtonColor: '#3085d6',
   cancelButtonColor: '#d33',
   confirmButtonText: 'Yes'

 }).then((result) => {
   if (result.value) {
      alert(mdata);
      localStorage["myJson"]=mdata; 
      window.location.href = 'startsurvey';

   }
 });

});




survey.data = {
    c1:localStorage["myJson"],
};
$("#surveyElement").Survey({model: survey, onValueChanged: surveyValueChanged});
//$("#surveyElement").Survey({ model: survey, onCurrentPageChanged: doOnCurrentPageChanged});

$('body').on('click', '#surveyNext', function () {
    //var y = document.getElementById('surveyPageNo').value;
   // alert('tesrt');
    $('.wrapper').hide(0);
    $('#surveyElement').hide();
});
$('body').on('click', '#surveyPrev', function () {
    $('#surveyElement').show(500);
});

    
$(function(){
    // Bind the swipeleftHandler callback function to the swipe event on div.box
    $( ".wrapper" ).on( "swipeleft", swipeleftHandler );
   
    // Callback function references the event target and adds the 'swipeleft' class to it
    function swipeleftHandler( event ){
        //$(event.target).addClass("swipeleft");
   
        
        //$("#surveyComplete").click();
    }

     // Bind the swipeleftHandler callback function to the swipe event on div.box
     $( ".wrapper" ).on( "swiperight", swiperightHandler );
   
     // Callback function references the event target and adds the 'swipeleft' class to it
     function swiperightHandler( event ){
         //$(event.target).addClass("swipeleft");
            $("#surveyPrev").click();
     }
  });

  $('body').on('click', '#nextDestination', function () {
    $("#surveyNext").click();
  });   
  doOnCurrentPageChanged(survey);