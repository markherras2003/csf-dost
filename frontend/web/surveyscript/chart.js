//var mainurl = 'http://192.168.1.222/nstw-new/nstw/';
var mainurl = 'http://localhost/nstw/';
//var mainurl = 'http://localhost/nstw/nstw/';
$(".refresh-overlay").addClass('visible');




//alert('load');
//Gender Charts
      $.ajax({
        type: "POST",
        url: mainurl+"getcharts.php",
        data: { type : 'Gender'},
        dataType: "json",
        crossDomain: true,
        cache: false,
        beforeSend: function() { 
        },
        success: function (data) {
            //xgenders = JSON.stringify(data);
            	$.each(data, function(i, field) {
                localStorage["malecount"] = field.malecount;
                localStorage["femalecount"] = field.femalecount;
				});
            Highcharts.chart('genderChart', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'pie'
                },
                title: {
                    text: 'Gender Chart'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b>: {point.percentage:.1f}% Total of {point.y} Customer',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    name: 'Gender',
                    colorByPoint: true,
                    data: [{
                        name: 'Male',
                        y: parseFloat(localStorage["malecount"]),
                        },{
                        name: 'Female',
                        y: parseFloat(localStorage["femalecount"])
                    }]
                }]
            });
        }
    });
//Organization Charts    
      $.ajax({
        type: "POST",
        url: mainurl+"getcharts.php",
        data: { type : 'Organization'},
        dataType: "json",
        crossDomain: true,
        cache: false,
        beforeSend: function() { 
        },
        success: function (data) {
            //xgenders = JSON.stringify(data);
            	$.each(data, function(i, field) {
                localStorage["academe"] = field.academe;
                localStorage["govtagency"] = field.govtagency;
                localStorage["industry"] = field.industry;
                localStorage["peoplesorg"] = field.peoplesorg;
                localStorage["individual"] = field.individual;
				});
            Highcharts.chart('organizationChart', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'column'
                },
                title: {
                    text: 'Organization Chart'
                },
                tooltip: {
                    pointFormat: '{series.name}</b>'
                },
                plotOptions: {
                    column: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b>',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    name: 'Organization',
                    data: [{
                        name: 'Academe',
                        y: parseFloat(localStorage["academe"]),
                        color: '#c0392b',
                        },{
                        name: 'Government Agency',
                        y: parseFloat(localStorage["govtagency"]),
                        color: '#2c3e50 ',
                        },{
                        name: 'Industry',
                        y: parseFloat(localStorage["industry"]),
                        color: '#16a085',
                    },{
                        name: 'People`s Organization',
                        y: parseFloat(localStorage["peoplesorg"]),
                        color: '#c0392b',
                    },{
                        name: 'Individual',
                        y: parseFloat(localStorage["individual"]),
                        color: '#c0392b',
                    }
                ]
                }]
                
            });
        }
    });
//Event Charts
      $.ajax({
        type: "POST",
        url: mainurl+"getcharts.php",
        data: { type : 'Event'},
        dataType: "json",
        crossDomain: true,
        cache: false,
        beforeSend: function() { 
        },
        success: function (data) {
            //xgenders = JSON.stringify(data);
            	$.each(data, function(i, field) {
                localStorage["tv"] = field.tv;
                localStorage["radio"] = field.radio;
                localStorage["newspaper"] = field.newspaper;
                localStorage["socialmedia"] = field.socialmedia;
                localStorage["ads"] = field.ads;
                localStorage["wom"] = field.wom;
                localStorage["invitation"] = field.invitation;
				});
            Highcharts.chart('eventChart', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'bar'
                },
                title: {
                    text: 'Event Chart'
                },
                tooltip: {
                    pointFormat: '{series.name}</b>'
                },
                plotOptions: {
                    bar: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b> - {point.y}',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    name: 'Event',
                    data: [{
                        name: 'TV',
                        y: parseInt(localStorage["tv"]),
                        color: '#c0392b',
                        },{
                        name: 'Radio',
                        y: parseInt(localStorage["radio"]),
                        color: '#2ecc71',
                        },{
                        name: 'Newspaper',
                        y: parseInt(localStorage["newspaper"]),
                        color: '#3498db',
                        },{
                        name: 'Social Media',
                        y: parseInt(localStorage["socialmedia"]),
                        color: '#9b59b6',
                        },{
                        name: 'Ads',
                        y: parseInt(localStorage["ads"]),
                        color: '#2c3e50',
                        }
                        ,{
                        name: 'Word of Mouth',
                        y: parseInt(localStorage["wom"]),
                        color: '#f39c12',
                        }
                        ,{
                        name: 'Invitation',
                        y: parseInt(localStorage["invitation"]),
                        color: '#c0392b',
                        }
                ]
                }]
                
            });
        }
});

//Marketplace

$.ajax({
    type: "POST",
    url: mainurl+"getcharts.php",
    data: { type : 'Marketplace'},
    dataType: "json",
    crossDomain: true,
    cache: false,
    beforeSend: function() { 
    },
    success: function (data) {
        //xgenders = JSON.stringify(data);
            $.each(data, function(i, field) {
            localStorage["tv"] = field.tv;
            localStorage["radio"] = field.radio;
            localStorage["newspaper"] = field.newspaper;
            localStorage["socialmedia"] = field.socialmedia;
            localStorage["ads"] = field.ads;
            localStorage["wom"] = field.wom;
            localStorage["invitation"] = field.invitation;
            });
        Highcharts.chart('marketplaceChart', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'bar'
            },
            title: {
                text: 'Marketplace Chart'
            },
            tooltip: {
                pointFormat: '{series.name}</b>'
            },
            plotOptions: {
                bar: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b> - {point.y}',
                        style: {
                            color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                        }
                    }
                }
            },
            series: [{
                name: 'Event',
                data: [{
                    name: 'TV',
                    y: parseInt(localStorage["tv"]),
                    color: '#c0392b',
                    },{
                    name: 'Radio',
                    y: parseInt(localStorage["radio"]),
                    color: '#2ecc71',
                    },{
                    name: 'Newspaper',
                    y: parseInt(localStorage["newspaper"]),
                    color: '#3498db',
                    },{
                    name: 'Social Media',
                    y: parseInt(localStorage["socialmedia"]),
                    color: '#9b59b6',
                    },{
                    name: 'Ads',
                    y: parseInt(localStorage["ads"]),
                    color: '#2c3e50',
                    }
                    ,{
                    name: 'Word of Mouth',
                    y: parseInt(localStorage["wom"]),
                    color: '#f39c12',
                    }
                    ,{
                    name: 'Invitation',
                    y: parseInt(localStorage["invitation"]),
                    color: '#c0392b',
                    }
            ]
            }]
            
        });
    }
});

//Transaction
      $.ajax({
        type: "POST",
        url: mainurl+"getcharts.php",
        data: { type : 'Transaction'},
        dataType: "json",
        crossDomain: true,
        cache: false,
        beforeSend: function() { 
        },
        success: function (data) {
            //xgenders = JSON.stringify(data);
            	$.each(data, function(i, field) {
                localStorage["notsatisfied"] = field.notsatisfied;
                localStorage["somewhatsatisfied"] = field.somewhatsatisfied;
                localStorage["neutral"] = field.neutral;
                localStorage["satisfied"] = field.satisfied;
                localStorage["verysatisfied"] = field.verysatisfied;
                localStorage["respondents"] = field.respondents;
				});
            Highcharts.chart('transactionChart', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'bar'
                },
                title: {
                    text: 'Transaction Chart'
                },
                tooltip: {
                    pointFormat: '{series.name}</b>'
                },
                plotOptions: {
                    bar: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b> - {point.y}%',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    name: 'How satisfied are you with our modes of transaction?'+ '  #Respondents:' +localStorage["respondents"],
                    data: [{
                        name: 'Not Satisfied',
                        y: parseInt(localStorage["notsatisfied"]),
                        color: '#c0392b',
                        },{
                        name: 'Somewhat Satisfied',
                        y: parseInt(localStorage["somewhatsatisfied"]),
                        color: '#f1c40f',
                        }, {
                        name: 'Neutral',
                        y: parseInt(localStorage["neutral"]),
                        color: '#f1c40f',
                        },{
                        name: 'Satisfied',
                        y: parseInt(localStorage["satisfied"]),
                        color: '#8e44ad',
                        },{
                        name: 'Very Satisfied',
                        y: parseInt(localStorage["verysatisfied"]),
                        color: '#27ae60',
                        },
                ]
                }]
                
            });
        }
    });
//Pricing
      $.ajax({
        type: "POST",
        url: mainurl+"getcharts.php",
        data: { type : 'Pricing'},
        dataType: "json",
        crossDomain: true,
        cache: false,
        beforeSend: function() { 
        },
        success: function (data) {
            //xgenders = JSON.stringify(data);
            	$.each(data, function(i, field) {
                localStorage["notsatisfied"] = field.notsatisfied;
                localStorage["somewhatsatisfied"] = field.somewhatsatisfied;
                localStorage["neutral"] = field.neutral;
                localStorage["satisfied"] = field.satisfied;
                localStorage["verysatisfied"] = field.verysatisfied;
                localStorage["respondents"] = field.respondents;
				});
            Highcharts.chart('pricingChart', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'line'
                },
                title: {
                    text: 'Pricing Chart'
                },

                tooltip: {
                    pointFormat: '{series.name}</b>'
                },
                plotOptions: {
                    line: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b> - {point.y}%',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    name: 'How satisfied are you with the price vis-a-vis the product?'+ '  #Respondents:' +localStorage["respondents"],
                    data: [{
                        name: 'Not Satisfied',
                        y: parseInt(localStorage["notsatisfied"]),
                        color: '#c0392b',
                        },{
                        name: 'Somewhat Satisfied',
                        y: parseInt(localStorage["somewhatsatisfied"]),
                        color: '#f1c40f',
                        }, {
                        name: 'Satisfied',
                        y: parseInt(localStorage["neutral"]),
                        color: '#8e44ad',
                        },{
                        name: 'Satisfied',
                        y: parseInt(localStorage["satisfied"]),
                        color: '#8e44ad',
                        },{
                        name: 'Very Satisfied',
                        y: parseInt(localStorage["verysatisfied"]),
                        color: '#27ae60',
                        },
                ]
                }]
                
            });
        }
    });
//Relationship
      $.ajax({
        type: "POST",
        url: mainurl+"getcharts.php",
        data: { type : 'Relationship'},
        dataType: "json",
        crossDomain: true,
        cache: false,
        beforeSend: function() { 
        },
        success: function (data) {
            //xgenders = JSON.stringify(data);
            	$.each(data, function(i, field) {
                localStorage["notsatisfied"] = field.notsatisfied;
                localStorage["somewhatsatisfied"] = field.somewhatsatisfied;
                localStorage["neutral"] = field.neutral;
                localStorage["satisfied"] = field.satisfied;
                localStorage["verysatisfied"] = field.verysatisfied;
                localStorage["respondents"] = field.respondents;
				});
            Highcharts.chart('relationshipChart', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'area'
                },
                title: {
                    text: 'Relationship Chart'
                },

                tooltip: {
                    pointFormat: '{series.name}</b>'
                },
                plotOptions: {
                    area: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b> - {point.y}%',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    name: 'How satisfied are you with the level of customer service we provide?'+ '  #Respondents:' +localStorage["respondents"],
                    data: [{
                        name: 'Not Satisfied',
                        y: parseInt(localStorage["notsatisfied"]),
                        color: '#c0392b',
                        },{
                        name: 'Somewhat Satisfied',
                        y: parseInt(localStorage["somewhatsatisfied"]),
                        color: '#f1c40f',
                        },{
                        name: 'Neutral',
                        y: parseInt(localStorage["neutral"]),
                        color: '#f1c40f',
                        },{
                        name: 'Satisfied',
                        y: parseInt(localStorage["satisfied"]),
                        color: '#8e44ad',
                        },{
                        name: 'Very Satisfied',
                        y: parseInt(localStorage["verysatisfied"]),
                        color: '#27ae60',
                        },
                ]
                }]
                
            });
        }
});
// Overall 
$.ajax({
        type: "POST",
        url: mainurl+"getcharts.php",
        data: { type : 'Overall'},
        dataType: "json",
        crossDomain: true,
        cache: false,
        beforeSend: function() { 
        },
        success: function (data) {
            //xgenders = JSON.stringify(data);
            	$.each(data, function(i, field) {
                localStorage["notsatisfied"] = field.notsatisfied;
                localStorage["somewhatsatisfied"] = field.somewhatsatisfied;
                localStorage["satisfied"] = field.satisfied;
                localStorage["neutral"] = field.neutral;
                localStorage["verysatisfied"] = field.verysatisfied;
                localStorage["respondents"] = field.respondents;
				});
            Highcharts.chart('overallChart', {
                chart: {
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false,
                    type: 'column'
                },
                title: {
                    text: 'Overall Chart'
                },

                tooltip: {
                    pointFormat: '{series.name}</b>'
                },
                plotOptions: {
                    column: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: true,
                            format: '<b>{point.name}</b> - {point.y}%',
                            style: {
                                color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                            }
                        }
                    }
                },
                series: [{
                    name: 'How will you rate your overall experience in the marketplace?'+ '  #Respondents:' +localStorage["respondents"],
                    data: [{
                        name: 'Not Satisfied',
                        y: parseInt(localStorage["notsatisfied"]),
                        color: '#c0392b',
                        },{
                        name: 'Somewhat Satisfied',
                        y: parseInt(localStorage["somewhatsatisfied"]),
                        color: '#f1c40f',
                        },{
                        name: 'Neutral',
                        y: parseInt(localStorage["neutral"]),
                        color: '#f1c40f',
                        },{
                        name: 'Satisfied',
                        y: parseInt(localStorage["satisfied"]),
                        color: '#8e44ad',
                        },{
                        name: 'Very Satisfied',
                        y: parseInt(localStorage["verysatisfied"]),
                        color: '#27ae60',
                        },
                ]
                }]
                
            });
        }
});

//$('.refresh-overlay').removeClass('visible');
setTimeout(() => {
    $(".refresh-overlay").removeClass('visible'); 
}, 1000);


function startTimer(duration, display) {
    var timer = duration, minutes, seconds;

    setInterval(function () {
        var label = 'seconds';
        minutes = parseInt(timer / 60, 10)
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;
        if (duration < 60) {
            label = 'seconds';
        } else {
            label = 'minutes';
        }
        display.text(minutes + ":" + seconds + ' ' + label);
  
        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
    setInterval(function () {
        var tabs = $('.nav-tabs > li');
        var active = tabs.filter('.active');
        var next = active.next('li').length ? active.next('li').find('a') : tabs.filter(':first-child').find('a');
         next.tab('show');
    }, 10000);
    d = new Date();
    utc = d.getTime() + (d.getTimezoneOffset() * - 60000);
    var dt = new Date(utc);
    var utcDate = dt.toUTCString();
    $('#dates').html(utcDate);
}

jQuery(function ($) {
    var fiveMinutes = 60*2 ,
        display = $('#time');
    startTimer(fiveMinutes, display);
});




//Gender Charts
$.ajax({
    type: "POST",
    url: mainurl+"getcharts.php",
    data: { type : 'Thumbs'},
    dataType: "json",
    crossDomain: true,
    cache: false,
    beforeSend: function() { 
    },
    success: function (data) {
        //xgenders = JSON.stringify(data);
    
            $.each(data, function(i, field) {
            localStorage["like"] = field.Like;
            localStorage["dislike"] = field.Dislike;
            localStorage["respondents"] = field.respondents;   localStorage["respondents"] = field.respondents;
            });
        Highcharts.chart('thumbsChart', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: 'Thumbs Up Chart'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b>: {point.percentage:.1f}% Total of {point.y} Thumbs #Respondents:' +localStorage["respondents"],
                        style: {
                            color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                        }
                    } 
                }
            },
            series: [{
                name: 'Thumbs',
                colorByPoint: true,
                data: [{
                    name: 'Like',
                    y: parseFloat(localStorage["like"]),
                    color: '#8e44ad',
                    },{
                    name: 'Dislike',
                    y: parseFloat(localStorage["dislike"]),
                    color: '#212121',
                    
                }]
            }]
        });
    }
});




//Relationship
$.ajax({
    type: "POST",
    url: mainurl+"getcharts.php",
    data: { type : 'Attended'},
    dataType: "json",
    crossDomain: true,
    cache: false,
    beforeSend: function() { 
    },
    success: function (data) {
        //xgenders = JSON.stringify(data);
            $.each(data, function(i, field) {
            localStorage["attended"] = field.attended;
            localStorage["notattended"] = field.notattended;
            localStorage["respondents"] = field.respondents;
            });
        Highcharts.chart('attendedChart', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'area'
            },
            title: {
                text: 'Last Year NSTW Attended Chart'
            },

            tooltip: {
                pointFormat: '{series.name}</b>'
            },
            plotOptions: {
                area: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b> - {point.y}%',
                        style: {
                            color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                        }
                    }
                }
            },
            series: [{
                name: 'Last Year NSTW Attended'+ '  #Respondents:' +localStorage["respondents"],
                data: [{
                    name: 'Attended',
                    y: parseInt(localStorage["attended"]),
                    color: '#c0392b',
                    },{
                    name: 'NotAttended',
                    y: parseInt(localStorage["notattended"]),
                    color: '#f1c40f',
                    }
            ]
            }]
            
        });
    }
});



//Purchase
$.ajax({
    type: "POST",
    url: mainurl+"getcharts.php",
    data: { type : 'Purchase'},
    dataType: "json",
    crossDomain: true,
    cache: false,
    beforeSend: function() { 
    },
    success: function (data) {
        //xgenders = JSON.stringify(data);
        $.each(data, function (i, field) {
            localStorage["purchase"] = field.purchase;
            localStorage["nopurchase"] = field.nopurchase;
            localStorage["respondents"] = field.respondents;
        });
        Highcharts.chart('purchaseChart', {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'bar'
            },
            title: {
                text: 'Purchased Product at OneStore MarketPlace Chart'
            },
            tooltip: {
                pointFormat: '{series.name}</b>'
            },
            plotOptions: {
                bar: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b> - {point.y}%',
                        style: {
                            color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                        }
                    }
                }
            },
            series: [{
                name: 'List of Who Purchase at OneStore MarketPlace Chart a Total of ?'+ '  #Respondents:' +localStorage["respondents"],
                data: [{
                    name: 'Yes',
                    y: parseInt(localStorage["purchase"]),
                    color: '#c0392b',
                    },{
                    name: 'No',
                    y: parseInt(localStorage["nopurchase"]),
                    color: '#f1c40f',
                    }, 
            ]
            }]
            
        });
    }
});



//Purchase
$.ajax({
    type: "POST",
    url: mainurl+"getcharts.php",
    data: { type : 'Reactions'},
    dataType: "json",
    crossDomain: true,
    cache: false,
    beforeSend: function() { 
    },
    success: function (data) {
        //xgenders = JSON.stringify(data);
        $.each(data, function (i, field) {
            var full_name = field.full_name;
            var reactions = field.reactions;
            var markup = "<tr><td>" + full_name + "<td>" + reactions + "</td><td>";
            $("table#mysuggestion tbody").append(markup);
        });
    }
}); 