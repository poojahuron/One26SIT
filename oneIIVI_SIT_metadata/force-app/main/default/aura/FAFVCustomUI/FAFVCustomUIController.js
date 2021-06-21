({
    doInit : function(component, event, helper) {
         var myPageRef = component.get("v.pageReference");
        var recids = myPageRef.state.c__recID;
        var action = component.get("c.getSONumber");
        action.setParams({"orderlineId": recids});
        action.setCallback(this, function(response) {
             var state = response.getState();
            if (state === "SUCCESS"){
                component.set("v.soNumber", response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
        console.log('test!!!!!');
       
        var childCmp = component.find('childCmp1');
        childCmp.getRecID(recids);
        
    },
    closeUi : function(component, event,helper){
        window.close();
    },
    openFVFA : function(component, event,helper){
        component.find('childCmp1').OpenFVFAPopUp();
    },
    cloneFVFA : function(component, event,helper){
        component.find('childCmp1').CloneFAFV();
    },
})