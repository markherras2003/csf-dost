jQuery(document).ready(function ($) {

var mainurl = '';

Survey.Survey.cssType = "bootstrap";
Survey.defaultBootstrapCss.navigationButton = "btn btn-green";

window.survey = new Survey.Model ( {
   "pages":[
      {
         "name":"page1",
         "elements":[
            {
               "type":"dropdown",
               "name":"c1",
               "title":"Choose Unit",
               "isRequired":"true",
               "colCount":"0",
               "choices":[
                  "HUMAN RESOURCES",
                  "CASHIERING",
                  "ACCOUNTING & BUDGETING",
                  "S&T SCHOLARSHIP",
                  "MAINTENANCE",
                  "PURCHASING",
                  "S&T INFORMATION CENTER",
                  "PSTC-ZDS",
                  "PSTC-ZDN",
                  "PSTC-ZS",
                  "FOS/ZC/Isabela",

               ]
            }
         ]
      },
      {
         "name":"page2",
         "elements":[
            {
               "type":"matrix",
               "name":"q1",
               "visibleIf":"{c1} = 'HUMAN RESOURCES'",
               "title":"{c1}",
               "isRequired":"true",
               "columns":[
                  {
                     "value":"5",
                     "text":"Outstanding"
                  },
                  {
                     "value":"4",
                     "text":"Very Satisfactory"
                  },
                  {
                     "value":"3",
                     "text":"Satisfactory"
                  },
                  {
                     "value":"2",
                     "text":"Unsatisfactory"
                  },
                  {
                     "value":"1",
                     "text":"Poor"
                  }
               ],
               "rows":[
                  {
                     "value":"one",
                     "text":"Quality of Human Resource Unit Services"
                  },
                  {
                     "value":"two",
                     "text":"Efficiency of the Human Resource Unit services"
                  },
                  {
                     "value":"three",
                     "text":"Timeliness of delivery of services"
                  },
                  {
                     "value":"four",
                     "text":"Attitude of staff handling your needs"
                  },
                  {
                     "value":"five",
                     "text":"Over-all Satisfaction"
                  }
               ]
            },
            {
               "type":"matrix",
               "name":"q1",
               "visibleIf":"{c1} = 'CASHIERING'",
               "title":"{c1}",
               "isRequired":"true",
               "columns":[
                  {
                     "value":"5",
                     "text":"Outstanding"
                  },
                  {
                     "value":"4",
                     "text":"Very Satisfactory"
                  },
                  {
                     "value":"3",
                     "text":"Satisfactory"
                  },
                  {
                     "value":"2",
                     "text":"Unsatisfactory"
                  },
                  {
                     "value":"1",
                     "text":"Poor"
                  }
               ],
               "rows":[
                  {
                     "value":"one",
                     "text":"Quality of Service"
                  },
                  {
                     "value":"two",
                     "text":"Efficiency of Service"
                  },
                  {
                     "value":"three",
                     "text":"Timeliness of Delivery"
                  },
                  {
                     "value":"four",
                     "text":"Attitude of staff providing services"
                  },
                  {
                     "value":"five",
                     "text":"Over-all Satisfaction"
                  }
               ]
            },
            {
               "type":"matrix",
               "name":"q1",
               "visibleIf":"{c1} = 'ACCOUNTING & BUDGETING'",
               "title":"{c1}",
               "isRequired":"true",
               "columns":[
                  {
                     "value":"5",
                     "text":"Outstanding"
                  },
                  {
                     "value":"4",
                     "text":"Very Satisfactory"
                  },
                  {
                     "value":"3",
                     "text":"Satisfactory"
                  },
                  {
                     "value":"2",
                     "text":"Unsatisfactory"
                  },
                  {
                     "value":"1",
                     "text":"Poor"
                  }
               ],
               "rows":[
                  {
                     "value":"one",
                     "text":"Quality of Service"
                  },
                  {
                     "value":"two",
                     "text":"Efficiency of Service"
                  },
                  {
                     "value":"three",
                     "text":"Timeliness of Delivery"
                  },
                  {
                     "value":"four",
                     "text":"Attitude of staff providing services"
                  },
                  {
                     "value":"five",
                     "text":"Over-all Satisfaction"
                  }
               ]
            },
            {
               "type":"matrix",
               "name":"q1",
               "visibleIf":"{c1} = 'S&T SCHOLARSHIP'",
               "title":"{c1}",
               "isRequired":"true",
               "columns":[
                  {
                     "value":"5",
                     "text":"Outstanding"
                  },
                  {
                     "value":"4",
                     "text":"Very Satisfactory"
                  },
                  {
                     "value":"3",
                     "text":"Satisfactory"
                  },
                  {
                     "value":"2",
                     "text":"Unsatisfactory"
                  },
                  {
                     "value":"1",
                     "text":"Poor"
                  }
               ],
               "rows":[
                  {
                     "value":"one",
                     "text":"Relevance of the Scholarship Policies to you"
                  },
                  {
                     "value":"two",
                     "text":"Efficiency of the S&T Scholarship services"
                  },
                  {
                     "value":"three",
                     "text":"Timeliness of delivery of the services"
                  },
                  {
                     "value":"four",
                     "text":"Attitude of staff attending your needs"
                  },
                  {
                     "value":"five",
                     "text":"Over-all Satisfaction"
                  }
               ]
            },
            {
               "type":"matrix",
               "name":"q1",
               "visibleIf":"{c1} = 'MAINTENANCE'",
               "title":"{c1}",
               "isRequired":"true",
               "columns":[
                  {
                     "value":"5",
                     "text":"Outstanding"
                  },
                  {
                     "value":"4",
                     "text":"Very Satisfactory"
                  },
                  {
                     "value":"3",
                     "text":"Satisfactory"
                  },
                  {
                     "value":"2",
                     "text":"Unsatisfactory"
                  },
                  {
                     "value":"1",
                     "text":"Poor"
                  }
               ],
               "rows":[
                  {
                     "value":"one",
                     "text":"Quality of maintenance service"
                  },
                  {
                     "value":"two",
                     "text":"Safety of equipment and users"
                  },
                  {
                     "value":"three",
                     "text":"Timeliness of delivery"
                  },
                  {
                     "value":"four",
                     "text":"Attitude of staff providing maintenance service"
                  },
                  {
                     "value":"five",
                     "text":"Over-all Satisfaction"
                  }
               ]
            },
            {
               "type":"matrix",
               "name":"q1",
               "visibleIf":"{c1} = 'PURCHASING'",
               "title":"{c1}",
               "isRequired":"true",
               "columns":[
                  {
                     "value":"5",
                     "text":"Outstanding"
                  },
                  {
                     "value":"4",
                     "text":"Very Satisfactory"
                  },
                  {
                     "value":"3",
                     "text":"Satisfactory"
                  },
                  {
                     "value":"2",
                     "text":"Unsatisfactory"
                  },
                  {
                     "value":"1",
                     "text":"Poor"
                  }
               ],
               "rows":[
                  {
                     "value":"one",
                     "text":"Quality Supplies / Materials / Equipments / Services"
                  },
                  {
                     "value":"two",
                     "text":"Conformance to Specifications"
                  },
                  {
                     "value":"three",
                     "text":"Timeliness of delivery"
                  },
                  {
                     "value":"four",
                     "text":"Attitude of Procurement Staff/Officer"
                  },
                  {
                     "value":"five",
                     "text":"Over-all Satisfaction"
                  }
               ]
            },
            {
               "type":"matrix",
               "name":"q1",
               "visibleIf":"{c1} = 'S&T INFORMATION CENTER'",
               "title":"{c1}",
               "isRequired":"true",
               "columns":[
                  {
                     "value":"5",
                     "text":"Outstanding"
                  },
                  {
                     "value":"4",
                     "text":"Very Satisfactory"
                  },
                  {
                     "value":"3",
                     "text":"Satisfactory"
                  },
                  {
                     "value":"2",
                     "text":"Unsatisfactory"
                  },
                  {
                     "value":"1",
                     "text":"Poor"
                  }
               ],
               "rows":[
                  {
                     "value":"one",
                     "text":"Relevance of Library collections"
                  },
                  {
                     "value":"two",
                     "text":"Rate of retrieval of Library materials"
                  },
                  {
                     "value":"three",
                     "text":"Conduciveness of Library Facilities"
                  },
                  {
                     "value":"four",
                     "text":"Attitude of staff attending rendering the services"
                  },
                  {
                     "value":"five",
                     "text":"Over-all Satisfaction"
                  }
               ]
            },
            {
               "type":"matrix",
               "name":"q1",
               "visibleIf":"{c1} = 'PSTC-ZDS'",
               "title":"{c1}",
               "isRequired":"true",
               "columns":[
                  {
                     "value":"5",
                     "text":"Outstanding"
                  },
                  {
                     "value":"4",
                     "text":"Very Satisfactory"
                  },
                  {
                     "value":"3",
                     "text":"Satisfactory"
                  },
                  {
                     "value":"2",
                     "text":"Unsatisfactory"
                  },
                  {
                     "value":"1",
                     "text":"Poor"
                  }
               ],
               "rows":[
                  {
                     "value":"one",
                     "text":"Applicability of the Intervention Rendered"
                  },
                  {
                     "value":"two",
                     "text":"Innovativeness of the Intervention"
                  },
                  {
                     "value":"three",
                     "text":"Timeliness of Delivery of the service "
                  },
                  {
                     "value":"four",
                     "text":"Attitude of staff attending rendering the services"
                  },
                  {
                     "value":"five",
                     "text":"Over-all Satisfaction"
                  }
               ]
            },
            {
               "type":"matrix",
               "name":"q1",
               "visibleIf":"{c1} = 'PSTC-ZDN'",
               "title":"{c1}",
               "isRequired":"true",
               "columns":[
                  {
                     "value":"5",
                     "text":"Outstanding"
                  },
                  {
                     "value":"4",
                     "text":"Very Satisfactory"
                  },
                  {
                     "value":"3",
                     "text":"Satisfactory"
                  },
                  {
                     "value":"2",
                     "text":"Unsatisfactory"
                  },
                  {
                     "value":"1",
                     "text":"Poor"
                  }
               ],
               "rows":[
                  {
                     "value":"one",
                     "text":"Applicability of the Intervention Rendered"
                  },
                  {
                     "value":"two",
                     "text":"Innovativeness of the Intervention"
                  },
                  {
                     "value":"three",
                     "text":"Timeliness of Delivery of the service "
                  },
                  {
                     "value":"four",
                     "text":"Attitude of staff attending rendering the services"
                  },
                  {
                     "value":"five",
                     "text":"Over-all Satisfaction"
                  }
               ]
            },
            {
               "type":"matrix",
               "name":"q1",
               "visibleIf":"{c1} = 'PSTC-ZS'",
               "title":"{c1}",
               "isRequired":"true",
               "columns":[
                  {
                     "value":"5",
                     "text":"Outstanding"
                  },
                  {
                     "value":"4",
                     "text":"Very Satisfactory"
                  },
                  {
                     "value":"3",
                     "text":"Satisfactory"
                  },
                  {
                     "value":"2",
                     "text":"Unsatisfactory"
                  },
                  {
                     "value":"1",
                     "text":"Poor"
                  }
               ],
               "rows":[
                  {
                     "value":"one",
                     "text":"Applicability of the Intervention Rendered"
                  },
                  {
                     "value":"two",
                     "text":"Innovativeness of the Intervention"
                  },
                  {
                     "value":"three",
                     "text":"Timeliness of Delivery of the service "
                  },
                  {
                     "value":"four",
                     "text":"Attitude of staff attending rendering the services"
                  },
                  {
                     "value":"five",
                     "text":"Over-all Satisfaction"
                  }
               ]
            },
            {
               "type":"matrix",
               "name":"q1",
               "visibleIf":"{c1} = 'FOS/ZC/Isabela'",
               "title":"{c1}",
               "isRequired":"true",
               "columns":[
                  {
                     "value":"5",
                     "text":"Outstanding"
                  },
                  {
                     "value":"4",
                     "text":"Very Satisfactory"
                  },
                  {
                     "value":"3",
                     "text":"Satisfactory"
                  },
                  {
                     "value":"2",
                     "text":"Unsatisfactory"
                  },
                  {
                     "value":"1",
                     "text":"Poor"
                  }
               ],
               "rows":[
                  {
                     "value":"one",
                     "text":"Efficieny of the Training"
                  },
                  {
                     "value":"two",
                     "text":"Relevance of the Training"
                  },
                  {
                     "value":"three",
                     "text":"Timeliness of Delivery of the training"
                  },
                  {
                     "value":"four",
                     "text":"Attitude of staff attending rendering the services"
                  },
                  {
                     "value":"five",
                     "text":"Over-all Satisfaction"
                  }
               ]
            },

         ]
      },
      {
         "name":"page3",
         "elements":[
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

   ]
}
);

survey.showQuestionNumbers = 'on';
survey.onComplete.add(function(result) {

//document.querySelector('#surveyResult').innerHTML = JSON.stringify(result.data);
//"<h1 style='text-align:center;text-decoratation:uppercase;'>Thank you for completing the survey</h1>";

//result: " + JSON.stringify(result.data) + "

   localStorage["mdata"] =  JSON.stringify(result.data);
   var datas = localStorage["mdata"];
   var obj = JSON.parse(datas);
   $.ajax({
      type: "POST",
      url: mainurl + "insertrecord",
      data: { jsondata: datas },
      dataType: "text",
      beforeSend: function() {
         //$("#insert").val('Connecting...');
      },
      success: function (data) {
       //  alert(data);
       //  if (data == 'success1') {
                  document.querySelector('#surveyResult').innerHTML = "<div style='text-align: center;padding-bottom: 15px;'>Redirecting in few seconds or Click <a href='index.html'>here</a></div>";  
                  setTimeout(() => {
                     window.location.href  = 'survey';
                  }, 5000);
    //  }else{
    //     alert('Error Saving');
    //  }
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
completingSurvey: "",
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
if (confirm("Do you want to cancel the survey?")) {
//you code here
alert("Stop Survey!!!")
}
}

cancelBtn.innerHTML = "Cancel";
cancelBtn.className = "btn btn-red"

footer.appendChild(cancelBtn);



});
