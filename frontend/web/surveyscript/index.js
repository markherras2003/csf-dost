
jQuery(document).ready(function ($) {
    var mainurl = 'http://csf.local/site/';
    
    Survey.Survey.cssType = "bootstrap";
    Survey.showQuestionNumbers = "off";
    Survey.requiredError = "",
    Survey.defaultBootstrapCss.navigationButton = "btn btn-green";

    var dd = localStorage["myJson"];






     var json = {
    
        pages: [
     
            {
                questions: [
                    
                    {
                        "type": "imagepicker",
                        "name": "q1",
                        "isRequired": true,
                        "title": localStorage["q1"],
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
                    "title":  localStorage["q2"],
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
                    "title": localStorage["q3"],
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
                    "title":  localStorage["q4"],
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
               "title":  localStorage["q5"],
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
     
     ]};
     


  
    window.survey = new Survey.Model (json);
    survey.requiredText ="";
    survey.requiredError = "",
    survey.showQuestionNumbers = 'off';

    survey.onComplete.add(function(result) {  

        $.ajax({
           type: "POST",
           url:"../surveyscript/insert_record.php",
           data: { jsondata: JSON.stringify(result.data) , c1:localStorage["myJson"] },
           dataType: "text",
           crossDomain: true,
           cache: false,
           beforeSend: function() {
           },
           success: function (data) {
            if (data == 'success') {
                 document.querySelector('#surveyResult').innerHTML = "<div style='text-align: center;padding-bottom: 15px;color:#212121;'>Redirecting in few seconds or Click <a href='index.html'>here</a></div>";  
                 setTimeout(() => {
                    window.location.href  = 'survey';
                 }, 5000);
             }
           }
        });   
    
    });
    
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
    //footer.appendChild(cancelBtn);
    
    
    $( document ).on( "click", ".openmode", function () {
    var mdata = $( this ).data( 'id' );
    Swal.fire({
       title: "You Have Selected: " + mdata,
       text: "",
       icon: 'info',
       showCancelButton: false,
       confirmButtonColor: '#00FF00',
       cancelButtonColor: '#00FF00 ',
       confirmButtonText: 'Proceed'
    
     }).then((result) => {
       if (result.value) {
          localStorage["myJson"]=mdata; 
          $.ajax({
            type: "GET",
            url:"../surveyscript/get_record.php",
            data: {c1: mdata },
            dataType: "text",
            beforeSend: function() {
            },
            success: function (data) {
                var jsons =jQuery.parseJSON(data); 
                $.each(jsons, function(k, v) {
                    localStorage["unit_type"] = v.unit_type;
                    localStorage["q1"] = v.q1;
                    localStorage["q2"] = v.q2;
                    localStorage["q3"] = v.q3;
                    localStorage["q4"] = v.q4;
                    localStorage["q5"] = v.q5;
                });
            }
         });  

          window.location.href = 'startsurvey';
    
       }
     });
     
    });


    var mycustomSurveyStrings = {
        pagePrevText: "Previous",
        pageNextText: "Next",
        completeText: "Submit",
        otherItemText: "Other (describe)",
        progressText: "Page {0} of {1}",
        emptySurvey: "There is no visible page or question in the survey.",
        completingSurvey: "Thank you for Completing the Customer Feedback",
        loadingSurvey: "Survey is loading...",
        optionsCaption: "Choose...",
        requiredError: "Please rate to proceed.",
        requiredInAllRowsError: "Please answer   in all rows.",
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
    
    
    });