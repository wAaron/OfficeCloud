$(document).ready(function() { 	

	var divElement = $('div');
    if (divElement.hasClass('PurchaseItemGraph')) {
	$(function () {
	    $.plot($(".PurchaseItemGraph"), Purchasedata, 
		{
			series: {
				pie: { 
					show: true,
					innerRadius: 0.4,
					highlight: {
						opacity: 0.1
					},
					radius: 1,
					stroke: {
						color: '#fff',
						width: 8
					},
					startAngle: 2,
				    combine: {
	                    color: '#353535',
	                    threshold: 0.05
	                },
	                label: {
	                    show: true,
	                    radius: 1,
	                    formatter: function(label, series){
	                        return '<div class="pie-chart-label">'+label+'&nbsp;'+Math.round(series.percent)+'%</div>';
	                    }
	                }
				},
				grow: {	active: false}
			},
			legend:{show:false},
			grid: {
	            hoverable: true,
	            clickable: true
	        },
	        tooltip: true,
			tooltipOpts: {
				content: "%s : %y"+"",
				shifts: {
					x: -30,
					y: -50
				}
			}
		});
	});
	}

    if (divElement.hasClass('SaleItemGraph')) {
	$(function () {
	    $.plot($(".SaleItemGraph"), Saledata, 
		{
			series: {
				pie: { 
					show: true,
					innerRadius: 0.4,
					highlight: {
						opacity: 0.1
					},
					radius: 1,
					stroke: {
						color: '#fff',
						width: 8
					},
					startAngle: 2,
				    combine: {
	                    color: '#353535',
	                    threshold: 0.05
	                },
	                label: {
	                    show: true,
	                    radius: 1,
	                    formatter: function(label, series){
	                        return '<div class="pie-chart-label">'+label+'&nbsp;'+Math.round(series.percent)+'%</div>';
	                    }
	                }
				},
				grow: {	active: false}
			},
			legend:{show:false},
			grid: {
	            hoverable: true,
	            clickable: true
	        },
	        tooltip: true,
			tooltipOpts: {
				content: "%s : %y"+"",
				shifts: {
					x: -30,
					y: -50
				}
			}
		});
	});
	}

	
    if (divElement.hasClass('lines-chart')) {
	$(function () {
		var placeholder = $(".lines-chart");
		var options = {
				grid: {
					show: true,
				    aboveData: true,
				    color: "#3f3f3f" ,
				    labelMargin: 5,
				    axisMargin: 0, 
				    borderWidth: 0,
				    borderColor:null,
				    minBorderMargin: 5 ,
				    clickable: true, 
				    hoverable: true,
				    autoHighlight: true,
				    mouseActiveRadius: 20
				},
		        series: {
		        	grow: {active:false},
		            lines: {
	            		show: true,
	            		fill: false,
	            		lineWidth: 2,
	            		steps: false
		            	},
		            points: {show:false}
		        },
		        legend: { position: "se" },
		        yaxis: { min: 0 },
		        xaxis : { ticks: labelcontent},
				colors: chartColours,
		        shadowSize:1,
		        tooltip: true,
				tooltipOpts: {
					content: "%s : %y.0",
					shifts: {
						x: -30,
						y: -50
					}
				}
		    };   
        	$.plot(placeholder, [ 
        		{
        			label: "Income", 
        			data: d1,
        			lines: {fillColor: "#f2f7f9"},
        			points: {fillColor: "#88bbc8"}
        		}, 
        		{	
        			label: "Expense", 
        			data: d2,
        			lines: {fillColor: "#fff8f2"},
        			points: {fillColor: "#ed7a53"}
        		} 

        	], options);
	});
	}	
	
	
    if (divElement.hasClass('BillingTypeChart')) {
	$(function () {
		var placeholder = $(".BillingTypeChart");
		var options = {
				grid: {
					show: true,
				    aboveData: true,
				    color: "#3f3f3f" ,
				    labelMargin: 5,
				    axisMargin: 0, 
				    borderWidth: 0,
				    borderColor:null,
				    minBorderMargin: 5 ,
				    clickable: true, 
				    hoverable: true,
				    autoHighlight: true,
				    mouseActiveRadius: 20
				},
		        series: {
		        	grow: {active:false},
		            lines: {
	            		show: true,
	            		fill: false,
	            		lineWidth: 2,
	            		steps: false
		            	},
		            points: {show:false}
		        },
		        legend: { position: "se" },
		        yaxis: { min: 0 },
		        xaxis : { ticks: BillingTypeLabelContent},
				colors: chartColours,
		        shadowSize:1,
		        tooltip: true,
				tooltipOpts: {
					content: "%s : %y.0",
					shifts: {
						x: -30,
						y: -50
					}
				}
		    };   
        	$.plot(placeholder, [ 
        		{
        			label: "Sale", 
        			data: s1,
        			lines: {fillColor: "#f2f7f9"},
        			points: {fillColor: "#88bbc8"}
        		}, 
        		{	
        			label: "Purchase", 
        			data: s2,
        			lines: {fillColor: "#fff8f2"},
        			points: {fillColor: "#ed7a53"}
        		}, 
        		{	
        			label: "Estimate", 
        			data: s3,
        			lines: {fillColor: "#88bbc8"},
        			points: {fillColor: "#2c7282"}
        		}, 
        		{	
        			label: "CustomerReplace", 
        			data: s4,
        			lines: {fillColor: "#9FC569"},
        			points: {fillColor: "#5a8022"}
        		}, 
        		{	
        			label: "SupplierReplace", 
        			data: s5,
        			lines: {fillColor: "#bbdce3"},
        			points: {fillColor: "#9a3b1b"}
        		}

        	], options);
	});
	}	
	
});