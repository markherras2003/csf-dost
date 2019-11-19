
jQuery(document).ready(function ($) {
    var mainurl = 'http://csf.local/site/';
    
    Survey.Survey.cssType = "bootstrap";
    Survey.showQuestionNumbers = "off";
    Survey.defaultBootstrapCss.navigationButton = "btn btn-green";
    if (localStorage["myJson"]=="HUMAN RESOURCES") {
    
    var json = {
    
       pages: [
    
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
    
    ]};
    
    
    }
    if (localStorage["myJson"]=="ACCOUNTING") {
    
        var json = {
        
           pages: [
        
               {
                   questions: [
                       
                       {
                           "type": "imagepicker",
                           "name": "q1",
                           "isRequired": true,
                           "title": "Quality of Service",
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
                       "title": "Efficiency Service",
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
                       "title": "Timeliness of Delivery",
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
                       "title": "Attitude of staff providing service",
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
        
        ]};
        
        
    }
    if (localStorage["myJson"]=="CASHIERING") {
    
            var json = {
            
               pages: [
            
                   {
                       questions: [
                           
                           {
                               "type": "imagepicker",
                               "name": "q1",
                               "isRequired": true,
                               "title": "Quality of Service",
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
                           "title": "Efficiency Service",
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
                           "title": "Timeliness of Delivery",
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
                           "title": "Attitude of staff providing service",
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
            
            ]};
            
            
    }
    if (localStorage["myJson"]=="SCHOLARSHIP") {
    
                var json = {
                
                   pages: [
                
                       {
                           questions: [
                               
                               {
                                   "type": "imagepicker",
                                   "name": "q1",
                                   "isRequired": true,
                                   "title": "Relevance of the Scholarship Policies to you",
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
                               "title": "Efficiency of S&T Scholarship Service",
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
                
                ]};
                
                
    }               
     if (localStorage["myJson"]=="MAINTENANCE") {
    
                    var json = {
                    
                       pages: [
                    
                           {
                               questions: [
                                   
                                   {
                                       "type": "imagepicker",
                                       "name": "q1",
                                       "isRequired": true,
                                       "title": "Quality of Maintenance Service",
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
                                   "title": "Safety of  equipment and users",
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
                                   "title": "Timeliness of Delivery",
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
                                   "title": "Attitude of staff providing maintenance services",
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
                    
                    ]};
                    
                    
    }                  
     if (localStorage["myJson"]=="PURCHASING") {
    
                        var json = {
                        
                           pages: [
                        
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
                        
                        ]};
                        
                        
    } 
    if (localStorage["myJson"]=="STIC") {
    
                            var json = {
                            
                               pages: [
                            
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
                            
                            ]};
                            
                            
    }                        
    if (localStorage["myJson"]=="FOS-ZC") {
    
                                var json = {
                                
                                   pages: [
                                
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
                                
                                ]};
                                
                                
    }
    if (localStorage["myJson"]=="PSTC-ZDS") {
    
                                    var json = {
                                    
                                       pages: [
                                    
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
                                    
                                    ]};
                                    
                                    
    }   
    if (localStorage["myJson"]=="PSTC-ZDN") {
    
        var json = {
        
           pages: [
        
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
        
        ]};
        
        
    }  
    if (localStorage["myJson"]=="PSTC-ZS") {
    
        var json = {
        
           pages: [
        
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
        
        ]};
        
        
    }      
    
    window.survey = new Survey.Model (json);
    
    survey.showQuestionNumbers = 'off';
    survey.requiredText ="";
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
          window.location.href = 'startsurvey';
    
       }
     });
     
    });
    
    
    });