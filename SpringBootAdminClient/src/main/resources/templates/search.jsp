<style type="text/css">
.white-pink {
   max-width: 1030px;
    height:100px;
    padding: 40px 30px 20px 60px;
    box-shadow: rgba(187,187,187, 1) 0 0px 10px -2px;
    -webkit-box-shadow: rgba(187, 187, 187, 1) 0 0px 10px -1px;
    font: 12px Arial, Helvetica, small-caps;
    border-radius: 10px;
   -webkit-border-radius: 10px;
}

*{
	font-size:12px;
}
.content {width:450px;}
.content1 {width:600px;}
.row {overflow:hidden;margin:5px 0;}
.row label {float:left;text-align:right;width:80px;margin-right:5px;}
.row input {float:left;}
.lrow {float:left;}
.rrow {float:right}
.large {width:336px;}
.mediam {width:150px;}
.small {width:100px;}


	#fm{
		margin:0;
		padding:10px 30px;
	}
	.ftitle{
		font-size:14px;
		font-weight:bold;
		color:#666;
		padding:5px 0;
		margin-bottom:10px;
		border-bottom:1px solid #ccc;
	}
	.fitem{
		margin-bottom:5px;
	}
	.fitem label{
		display:inline-block;
		width:80px;
	}
	.datagrid-header-rownumber{
            width:60px;
        }
        .datagrid-cell-rownumber{
            width:60px;
        }
	/* .datagrid-row-over,
		.datagrid-header td.datagrid-header-over {
		  background: #0A99A9;
		  color: #0A99A9;
		  cursor: default;
		}
		.datagrid-row-selected {
		  background: #ffe48d;
		  color: #000000;
		} */
		
		
		.body {
  overflow: auto
}
   </style>
	<script type="text/javascript">
	
	/* $('#divTxnSearch').hide();
	$('#paymentTxnSearch').hide();
	$('#dgTxnSearch').hide();
	$('#dgpaymentSearch').hide();
	 
	 */
	
	
	 function txnSearch(){
		 var fromDate = $('#fromDate').datetimebox('getValue');
		 var toDate = $('#toDate').datetimebox('getValue');
		  var txninfo= ""+$('#transactionType').combobox('getValues');
		  var mspId1=""+$("#mspId").combobox('getValues');
		  var RmobileNumber=$('#remittorMobileNumber').val();
		  var RAccountNumber=$('#remittorAccountNumber').val();
		  var requestId=$("#requestId").val();
		  var RRN= $('#rrn').val();
		  var BatchId = $('#batchId').val();
		  var transactionStatus= $('#transactionStatus').val();
          var financialType= $('#financialType').val();
          var payments="0"; 
		  if(fromDate != '' && toDate != ''){
			 var dateAr = fromDate.split(':');
	         var dateAr1 = dateAr[0].split('-');
	         var dateAr2 = dateAr[1].split('');
	         var newDate = dateAr1[2] + '-' + dateAr1[1] + '-' + dateAr1[0];
	         var date =newDate.split(' ');
	         var finalDate = date[0]+'-'+ dateAr1[1]+'-'+dateAr1[0];
	         var dateA = toDate.split(':');
	         var dateA1 = dateA[0].split('-');
	         var dateA2 = dateA[1].split('');
	         var newDt = dateA1[2] + '-' + dateA1[1] + '-' + dateA1[0];
	         var date1 =newDt.split(' ');
	         var finalDt = date1[0]+'-'+ dateA1[1]+'-'+dateA1[0];
			 var date1 = new Date(finalDate);
			 var date2 = new Date(finalDt); //less than 1
			 var start = Math.floor(date1.getTime() / (3600 * 24 * 1000)); //days as integer from..
			 var end = Math.floor(date2.getTime() / (3600 * 24 * 1000)); //days as integer from..
			 var daysDiff = end - start; // exact dates
	          if(daysDiff > 31){
	                  alert("Please select Dates below 31 days");
		    		  return true;
	         }  
			 }
			if(RmobileNumber != ''){
				if(RRN != '' && BatchId != '' && requestId != ''){
				}else if(RRN != ''){
				}else if(BatchId != ''){
				}else if(requestId != ''){
				}else if($('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''){
										
							alert('Please Select FromDate and ToDate');
							return true;
						}else if($('#toDate').datetimebox('getValue')==''){
						      
							alert('Please Select End Date');
							return true;
						} 

			}else if(RAccountNumber != ''){
			     
         if(RRN != '' && BatchId != '' && requestId != ''){
					
					
				}else if(RRN != ''){
					
					
				}else if(BatchId != ''){
					
					
				}else if(requestId != ''){
					
				
					
				}else if($('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''){
										
							alert('Please Select FromDate and ToDate');
							return true;
						}else if($('#toDate').datetimebox('getValue')==''){
						      
							alert('Please Select End Date');
							return true;
						} 
		 
			}else if(mspId1!=''){
			     
            if(RRN != '' && BatchId != '' && requestId != ''){
					
					
				}else if(RRN != ''){
					
					
				}else if(BatchId != ''){
					
					
				}else if(requestId != ''){
					
				
					
				}else if($('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''){
										
							alert('Please Select FromDate and ToDate');
							return true;
						}else if($('#toDate').datetimebox('getValue')==''){
						      
							alert('Please Select End Date');
							return true;
						} 
		 
			}else if(transactionStatus!=''){
			     
	            if(RRN != '' && BatchId != '' && requestId != ''){
						
						
					}else if(RRN != ''){
						
						
					}else if(BatchId != ''){
						
						
					}else if(requestId != ''){
						
					
						
					}else if($('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''){
											
								alert('Please Select FromDate and ToDate');
								return true;
							}else if($('#toDate').datetimebox('getValue')==''){
							      
								alert('Please Select End Date');
								return true;
							} 
			 
				}else if(financialType!=''){
				     
		            if(RRN != '' && BatchId != '' && requestId != ''){
							
							
						}else if(RRN != ''){
							
							
						}else if(BatchId != ''){
							
							
						}else if(requestId != ''){
							
						
							
						}else if($('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''){
												
									alert('Please Select FromDate and ToDate');
									return true;
								}else if($('#toDate').datetimebox('getValue')==''){
								      
									alert('Please Select End Date');
									return true;
								} 
				 
					}else if(RmobileNumber != '' && RAccountNumber != ''  && mspId1!='' ){
			     
				  if($('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''){
					alert('Please Select FromDate and ToDate');
					return true;
				}else if($('#toDate').datetimebox('getValue')==''){
				      
					alert('Please Select End Date');
					return true;
				} 
		 
			}
			

	    $('#dgTxnSearch').datagrid('load',{  
            fromDate: $('#fromDate').datebox('getValue'),
            toDate: $('#toDate').datebox('getValue'),
            remittorMobileNumber: $('#remittorMobileNumber').val(),
            remittorAccountNumber: $('#remittorAccountNumber').val(),
            transactionStatus: $('#transactionStatus').val(),
            financialType: $('#financialType').val(),
            transactionType: txninfo,
            requestId:$("#requestId").val(),
            mspId:mspId1,
            rrn: $('#rrn').val(),
            batchId: $('#batchId').val(),
            payments: payments
            
        }); 
	  }	 
		
	  $('#dgTxnSearch').datagrid({
	    	onLoadSuccess:function(data){
		    	console.log(data);
	    	    if(data.total == 0){
	    	    	$.messager.alert({
						title: 'Alert',
						msg:'No Records Found'
					});
	    	    }
	    	}	
	  });
	  
	  
	  
	  
	  
	  
	  
	  function paymentloadsearch(){ 
		  
			  var fromDate = $('#fromDate').datetimebox('getValue');
			  var toDate = $('#toDate').datetimebox('getValue');
			  var txninfo= ""+$('#transactionType').combobox('getValues');
			  var mspId1=""+$("#mspId").combobox('getValues');
			  var RmobileNumber=$('#remittorMobileNumber').val();
			  var RAccountNumber=$('#remittorAccountNumber').val();
			  var requestId=$("#requestId").val();
			  var RRN= $('#rrn').val();
			  var BatchId = $('#batchId').val();
			  var transactionStatus= $('#transactionStatus').val();
	          var financialType= $('#financialType').val();
	          
	          $("#payments").val("1");
			  if(fromDate != '' && toDate != ''){
					 
					var payments="1"; 	         
		         //var fromDate = $('#fromDate').datetimebox('getValue');
				 var dateAr = fromDate.split(':');
		         var dateAr1 = dateAr[0].split('-');
		         var dateAr2 = dateAr[1].split('');
		         var newDate = dateAr1[2] + '-' + dateAr1[1] + '-' + dateAr1[0];
		         var date =newDate.split(' ');
		         var finalDate = date[0]+'-'+ dateAr1[1]+'-'+dateAr1[0];
		         
		         
		         
		        // var toDate = $('#toDate').datetimebox('getValue');
		         var dateA = toDate.split(':');
		         var dateA1 = dateA[0].split('-');
		         var dateA2 = dateA[1].split('');
		         var newDt = dateA1[2] + '-' + dateA1[1] + '-' + dateA1[0];
		         var date1 =newDt.split(' ');
		         var finalDt = date1[0]+'-'+ dateA1[1]+'-'+dateA1[0];
		         
		         
		         
				 var date1 = new Date(finalDate);
				 var date2 = new Date(finalDt); //less than 1
				 var start = Math.floor(date1.getTime() / (3600 * 24 * 1000)); //days as integer from..
				 var end = Math.floor(date2.getTime() / (3600 * 24 * 1000)); //days as integer from..
				 var daysDiff = end - start; // exact dates
				 
				  
		          if(daysDiff > 31){
		                  alert("Please select Dates below 31 days");
			    		  return true;
		         }  

		         // return true;
				 
				 }
			  
			  
			  if(RRN != ''){
				  
				  alert("THIS WILL NOT PRESENT IN InitialRejectiontxns"); 
				  
				  return true;
				  
			  }else if(RmobileNumber != ''){
				  
				  alert("THIS WILL NOT PRESENT IN InitialRejectiontxns"); 
				  
				  return true;
				  
			  }else if(RAccountNumber != ''){
				  
				  alert("THIS WILL NOT PRESENT IN InitialRejectiontxns"); 
				  
				  return true;
				  
			  }else if(mspId1 != ''){
				  
				  alert("THIS WILL NOT PRESENT IN InitialRejectiontxns"); 
				  
				  return true;
				  
			  }else if(RRN != '' && RmobileNumber != '' && RAccountNumber != '' &&  mspId1 != '' ){
				  alert("THIS WILL NOT PRESENT IN InitialLevelRejectiontxns");
				  return true;
				  
			  }

			
				if(RmobileNumber != ''){
					if(RRN != '' && BatchId != '' && requestId != ''){
					}else if(RRN != ''){
					}else if(BatchId != ''){
					}else if(requestId != ''){
						
					
						
					}else if($('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''){
											
								alert('Please Select FromDate and ToDate');
								return true;
							}else if($('#toDate').datetimebox('getValue')==''){
							      
								alert('Please Select End Date');
								return true;
							} 

				}else if(RAccountNumber != ''){
				     
	         if(RRN != '' && BatchId != '' && requestId != ''){
						
						
					}else if(RRN != ''){
						
						
					}else if(BatchId != ''){
						
						
					}else if(requestId != ''){
						
					
						
					}else if($('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''){
											
								alert('Please Select FromDate and ToDate');
								return true;
							}else if($('#toDate').datetimebox('getValue')==''){
							      
								alert('Please Select End Date');
								return true;
							} 
			 
				}else if(mspId1!=''){
				     
	            if(RRN != '' && BatchId != '' && requestId != ''){
						
						
					}else if(RRN != ''){
						
						
					}else if(BatchId != ''){
						
						
					}else if(requestId != ''){
						
					
						
					}else if($('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''){
											
								alert('Please Select FromDate and ToDate');
								return true;
							}else if($('#toDate').datetimebox('getValue')==''){
							      
								alert('Please Select End Date');
								return true;
							} 
			 
				}else if(transactionStatus!=''){
				     
		            if(RRN != '' && BatchId != '' && requestId != ''){
							
							
						}else if(RRN != ''){
							
							
						}else if(BatchId != ''){
							
							
						}else if(requestId != ''){
							
						
							
						}else if($('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''){
												
									alert('Please Select FromDate and ToDate');
									return true;
								}else if($('#toDate').datetimebox('getValue')==''){
								      
									alert('Please Select End Date');
									return true;
								} 
				 
					}else if(financialType!=''){
					     
			            if(RRN != '' && BatchId != '' && requestId != ''){
								
								
							}else if(RRN != ''){
								
								
							}else if(BatchId != ''){
								
								
							}else if(requestId != ''){
								
							
								
							}else if($('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''){
													
										alert('Please Select FromDate and ToDate');
										return true;
									}else if($('#toDate').datetimebox('getValue')==''){
									      
										alert('Please Select End Date');
										return true;
									} 
					 
						}else if(RmobileNumber != '' && RAccountNumber != ''  && mspId1!='' ){
				     
					  if($('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''){
						alert('Please Select FromDate and ToDate');
						return true;
					}else if($('#toDate').datetimebox('getValue')==''){
					      
						alert('Please Select End Date');
						return true;
					} 
			 
				}
				
			
		    $('#dgTxnSearch').datagrid('load',{  
	            fromDate: $('#fromDate').datebox('getValue'),
	            toDate: $('#toDate').datebox('getValue'),
	            remittorMobileNumber: $('#remittorMobileNumber').val(),
	            remittorAccountNumber: $('#remittorAccountNumber').val(),
	            transactionStatus: $('#transactionStatus').val(),
	            financialType: $('#financialType').val(),
	            transactionType: txninfo,
	            requestId:$("#requestId").val(),
	            mspId:mspId1,
	            rrn: $('#rrn').val(),
	            batchId: $('#batchId').val(),
	            payments: payments
	            
	        }); 
		  }	 
			
		  $('#dgTxnSearch').datagrid({
		    	onLoadSuccess:function(data){
			    	console.log(data);
		    	    if(data.total == 0){
		    	    	$.messager.alert({
							title: 'Alert',
							msg:'No Records Found'
						});
		    	    }
		    	}	
		  });
		  
		 /*  function exportToCSVP(){	
			  var txninfo= ""+$('#transactionType').combobox('getValues');
			  var txnStatus=$('#transactionStatus').val();
			 var  payments= $('#payments').val();
			  
			  var requestId=$("#requestId").val();
				  var mspId1=""+$("#mspId").combobox('getValues');
				  var batchId = $("#batchId").val();
				 if($('#rrn').val()=='' && ($('#fromDate').datetimebox('getValue')=='' || $('#toDate').datetimebox('getValue')=='')  && $('#remittorMobileNumber').val()=='' &&  $('#remittorAccountNumber').val()=='' && mspId1=='' && requestId=='' && batchId == ''){
			    	  alert("Please select Search Criteria");
			  		return false;
			  	}
				
				if($('#rrn').val()!=''){
					
					if(($('#fromDate').datetimebox('getValue')=='' || $('#toDate').datetimebox('getValue')=='') && $('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''  && requestId=='' && batchId == '' ){
						
						alert("THIS WILL NOT PRESENT IN InitialRejectiontxns");
						
						return false;
						
					}
					
				}
				
				
         if($('#remittorMobileNumber').val()!=''){
					
					if(($('#fromDate').datetimebox('getValue')=='' || $('#toDate').datetimebox('getValue')=='') && $('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''  && requestId=='' && batchId == '' ){
						
						alert("THIS WILL NOT PRESENT IN InitialRejectiontxns");
						
						return false;
						
					}
					
				}
         
         
         if($('#mspId1').val()!=''){
				
				if(($('#fromDate').datetimebox('getValue')=='' || $('#toDate').datetimebox('getValue')=='') && $('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''  && requestId=='' && batchId == '' ){
					
					alert("THIS WILL NOT PRESENT IN InitialRejectiontxns");
					
					return false;
					
				}
				
			}
				
				window.location.href="${pageContext.request.contextPath}/transactions/paymentexcelTxns1.action?rrn="+$("#rrn").val()+"&"+"remittorAccountNumber="+$('#remittorAccountNumber').val()+"&"+"remittorMobileNumber="+$('#remittorMobileNumber').val()+"&"+"fromDate="+$('#fromDate').datebox('getValue')+"&"+"toDate="+$('#toDate').datebox('getValue')+"&"+"mspId="+mspId1+"&"+"transactionType="+$('#transactionType').combobox('getValues')+"&"+"transactionStatus="+txnStatus+"&"+"requestId="+requestId+"&"+"batchId="+batchId;
			
	         }
	   */
	  
	  
	  
	  function exportToCSV(){	
		  var txninfo= ""+$('#transactionType').combobox('getValues');
		  var txnStatus=$('#transactionStatus').val();
		  var requestId=$("#requestId").val();
			  var mspId1=""+$("#mspId").combobox('getValues');
			  var batchId = $("#batchId").val();
			  
           var  payments= $('#payments').val();
			  
			 if($('#rrn').val()=='' && ($('#fromDate').datetimebox('getValue')=='' || $('#toDate').datetimebox('getValue')=='')  && $('#remittorMobileNumber').val()=='' &&  $('#remittorAccountNumber').val()=='' && mspId1=='' && requestId=='' && batchId == ''){
		    	  alert("Please select Search Criteria");
		  		return false;
		  	}
			 
			 if($('#payments').val()=='1'){
				 if($('#rrn').val()!=''){
						
						if(($('#fromDate').datetimebox('getValue')=='' || $('#toDate').datetimebox('getValue')=='') && $('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''  && requestId=='' && batchId == '' ){
							
							alert("THIS WILL NOT PRESENT IN InitialRejectiontxns");
							
							return false;
							
						}
						
					}
					
					
	         if($('#remittorMobileNumber').val()!=''){
						
						if(($('#fromDate').datetimebox('getValue')=='' || $('#toDate').datetimebox('getValue')=='') && $('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''  && requestId=='' && batchId == '' ){
							
							alert("THIS WILL NOT PRESENT IN InitialRejectiontxns");
							
							return false;
							
						}
						
					}
	         
	         
	         if($('#mspId1').val()!=''){
					
					if(($('#fromDate').datetimebox('getValue')=='' || $('#toDate').datetimebox('getValue')=='') && $('#fromDate').datetimebox('getValue')=='' && $('#toDate').datetimebox('getValue')==''  && requestId=='' && batchId == '' ){
						
						alert("THIS WILL NOT PRESENT IN InitialRejectiontxns");
						
						return false;
						
					}
					
				}
					
					window.location.href="${pageContext.request.contextPath}/transactions/paymentexcelTxns1.action?rrn="+$("#rrn").val()+"&"+"remittorAccountNumber="+$('#remittorAccountNumber').val()+"&"+"remittorMobileNumber="+$('#remittorMobileNumber').val()+"&"+"fromDate="+$('#fromDate').datebox('getValue')+"&"+"toDate="+$('#toDate').datebox('getValue')+"&"+"mspId="+mspId1+"&"+"transactionType="+$('#transactionType').combobox('getValues')+"&"+"transactionStatus="+txnStatus+"&"+"requestId="+requestId+"&"+"batchId="+batchId;
					}else{
						
			window.location.href="${pageContext.request.contextPath}/transactions/downloadTxns.action?rrn="+$("#rrn").val()+"&"+"remittorAccountNumber="+$('#remittorAccountNumber').val()+"&"+"remittorMobileNumber="+$('#remittorMobileNumber').val()+"&"+"fromDate="+$('#fromDate').datebox('getValue')+"&"+"toDate="+$('#toDate').datebox('getValue')+"&"+"mspId="+mspId1+"&"+"transactionType="+$('#transactionType').combobox('getValues')+"&"+"transactionStatus="+txnStatus+"&"+"requestId="+requestId+"&"+"batchId="+batchId;
			
					}
         }
	  
	  
        function cleartxnForm(){  
            $('#fmtxns').form('clear');
            $('#dgTxnSearch').datagrid('loadData',[]);  
        	
        }
		 function afterLoad(data){
           for(var i=0;i<data.rows.length;i++){
              if(data.rows[i].checked){
                 $(this).datagrid('checkRow',i);
              }
            }
        }
        
		
	</script>
	
	
	  <div  class="easyui-layout"  fit="true">  
        <div data-options="region:'north',title:'Search Transactions'" style="height:190px;background-color:#E4EAEE;">
           <form id="fmtxns" method="post" novalidate >  
        <table cellspacing="8px">  
        	<tr>  
                <td>From&nbsp;Date:</td> 
              <td><input class="easyui-datetimebox" id="fromDate" name="fromDate"></td>
                <td>To&nbsp;Date:</td>  
                <td><input class="easyui-datetimebox" id="toDate" name="toDate" ></td>
<!--                 <td><input name="startDate" id="startDate"  onFocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"  style="width:135px;"/></td>
 -->               <!--  <td>Posting&nbsp;Date:</td>  
                <td><input class="easyui-datebox" id="postingDate" name="postingDate"></td> -->  
                 <td>RRN:</td>  
                <td><input class="easyui-validatebox textbox" id="rrn" name="rrn"  onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" maxlength="12" style="height: 20px; margin-left: -215px "></td>
                </tr>
                <tr>
                <td>Remittor Mobile Number:</td>  
                <td><input class="easyui-validatebox textbox" id="remittorMobileNumber" name="remittorMobileNumber" style="height: 20px;" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" maxlength="12"></td>
                <td>Remittor Account Number:</td>  
                <td><input class="easyui-validatebox textbox" id="remittorAccountNumber" name="remittorAccountNumber" style="height: 20px;" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" validType="accChk" maxlength="19"></td>
              <td>Batch_ID:</td>  
                <td><input class="easyui-validatebox textbox" id="batchId" name="batchId"   maxlength="12" style="height: 20px; margin-left: -215px"></td>
                  <td></td> 
                 <td><input  type="textbox" id="payments" name="payments" hidden="true"  maxlength="12" style="height: 20px;"></td>
              
              
               
                
            </tr>
            <tr>  
             <td>Transaction Info:</td> 
                <td>
            <input class="easyui-combobox"   
            name="transactionType"  id="transactionType" 
            data-options="  
                    valueField:'value',  
                    textField:'name',  
                    multiple:true, 
                    panelHeight:'auto',  
       data: [
              {name: 'P2PU',value: 'P2PU'},
              {name: 'P2PI',value: 'P2PI'},
              {name: 'P2PO',value: 'P2PO'},
           
              {name: 'P2AU',value: 'P2AU'},
              {name: 'P2AI',value: 'P2AI'},
              {name: 'P2AO',value: 'P2AO'},
           
              {name: 'CIPU',value: 'CIPU'},
              {name: 'CIPI',value: 'CIPI'},
              {name: 'CIPO',value: 'CIPO'},
           
              {name: 'MIPU',value: 'MIPU'},
              {name: 'MIPI',value: 'MIPI'},
              {name: 'MIPO',value: 'MIPO'}
       ]" />
                </td> 
                
                
                <td>Transaction Status:</td>  
                <td><select id="transactionStatus" name='transactionStatus'  >
                		<option value='0'>ALL</option>  
                        <option value='S'>Success</option>
                        <option value='F'>Failure</option>
                          
                   </select>
                </td>  
                <td>Request ID:</td>  
                <td><input class="easyui-validatebox textbox" id="requestId" name="requestId"   maxlength="12" style="height: 20px; margin-left: -215px"></td>
                </tr>
                <tr>
                <td>Financial Type:</td>  
                <td><select id="financialType" name='financialType' >
                		<option value='0'>ALL</option>  
                        <option value='F'>Financial</option>
                        <option value='N'>Non-Financial</option>
                   </select>
                </td>
                 <td>Service Provider:</td> 
				<td><select name="mspId" id="mspId" class="easyui-combobox" panelHeight="auto" editable="true" style="width:140px; margin-left:-215px"  data-options="  
	          						  valueField: 'mspId',  
	           						 textField: 'mspId',  
	            					url: '${pageContext.request.contextPath}/serviceProviderController/msplist.action'" >
	            					</select></td>
	            					
              <!--   <td>Batch_ID</td>  
                <td><input class="easyui-validatebox textbox" id="batchId" name="batchId"   maxlength="12" style="height: 20px;"></td> -->
               <!--  <td>Settlement Date:</td>  
                <td><input id="settlementDate" class="easyui-datebox" name="settlementDate"></td> -->
                <td style="padding: 0px 0px 0px 20px;"><a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-search'" onclick="txnSearch()">Search</a>
                &nbsp;<a href="javascript:void(0)" data-options="iconCls:'icon-cancelicon'" class="easyui-linkbutton" onclick="cleartxnForm()">Clear</a>
                 &nbsp;<a href="javascript:void(0)"  data-options="iconCls:'icon-search'" class="easyui-linkbutton" onclick="paymentloadsearch()">InitialRejectiontxns</a></td>
            </tr>  
        </table>  
        </form>
        </div>  
        
        
        <div  id ="divTxnSearch" data-options="region:'center',title:'Transactions'">
        <table id="dgTxnSearch" class="easyui-datagrid"  style=" overflow:auto; width:4500px ;height:450px" 
               url="${pageContext.request.contextPath}/transactions/searchTxns.action"
               data-options="onLoadSuccess:function nodata(data){
               alert(data);
               if(data=''){
               alert('no data');
               }
               }" 
			   toolbar="#toolbar_trans" pagination="true" 
			   rownumbers="true" fitColumns="true" singleSelect="true" remoteSort="false">
		<thead>
			<tr>
			  <th field="rrn"  sortable="true">IMPS Reference No</th>
                <th field="requestId" width="100" sortable="true">Request Id</th>
                <th field="messageReceivedDate" width="100">Transaction date</th>
                <th field="tranType" width="100">Transaction Type</th>
                <th field="tranInfo" width="100">Transaction Info</th>
                <th field="remittorMobNumber" width="100">Remitter Mobile Number</th>
                <th field="remittorMMID" width="100">Remitter MMID</th>
                <th field="remittorName" width="100">Remitter Name</th>
                <th field="beneName" width="100">Beneficiary Name</th>
                <th field="mobileNumber" width="100">Beneficiary Mobile Number</th>
                <th field="beneficiaryMMID" width="100">Beneficiary MMID</th>
                <th field="paymentRefNumber" width="100">Remarks</th>
                <th field="mcc" width="100">MCC</th>
                <th field="amount" width="100">Amount</th>
                <th field="debitAccountNumber" width="100">Debit Account Number</th>
                <th field="creditAccountNumber" width="100">Credit Account Number</th>
                <th field="status" width="100">Status</th>
                <th field="mspId" width="100">MSP ID</th>
                <th field="failureCode" width="100">ResponseCode</th>
                <th field="failureReason" width="100">Failure Reason</th>
                <th field="isP2MReversed" width="100">Reversal Flag</th>
                <th field="remitterAccountNumber" width="100">Remitter Account Number</th>
                <th field="beneAccountNumber" width="100">Bene Account Number</th>
                <th field="beneIfsc" width="100">Bene IFSC</th>
                <th field="currency" width="100">Transaction Currency</th>
                <th field="txnid" width="100">TxnId</th>
                <th field="AUXRC" width="100">AUXRC</th>
                <th field="AUXRRN" width="100">AUXRRN</th>
                <th field="POSTINGSTATUS" width="100">Posting Status</th>
                <th field="CHANNEL" width="100">Channel</th>
                <th field="batchId" width="100">BatchId</th>
                <th field="FileBeneName" width="100">File Bene Name</th>
                <th field="payments"  hidden="true"></th>
			</tr>
		</thead>
	</table>
	
	<div id="toolbar_trans">
		<a href="#" class="easyui-linkbutton" iconCls="icon-exdnd" plain="false"  onclick="exportToCSV()">Export To Excel</a>
 	 </div>
 	 
	</div>

   </div>  
</body>