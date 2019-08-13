({
	setSearchTerm : function(component, event) {
		var searchTerm = component.find('searchBox').getElement().value;
        console.log('searchTerm = ' + searchTerm);
        component.set("v.searchTerm", searchTerm);
        // create a one-time use instance of the search action in the server-side controller
		var action = component.get("c.search");
        action.setParams({
            searchStr : searchTerm
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state === "SUCCESS"){
                var youtubeRes = JSON.parse(response.getReturnValue());
                console.log('response.getReturnValue() = ' + response.getReturnValue());
                console.log('youtubeRes = ' + youtubeRes);
                component.set("v.data", youtubeRes);
            }
            else if(state === "INCOMPLETE"){
                // do something
            }
            else if(state === "ERROR"){
            	var error = response.getError();
                if(error){
                    if(error[0] && error[0].message){
                        console.log('Error message: ' + error[0].message);
                    }
                } else {
                    console.log("Unknown error");
                }
            }
        });
        $A.enqueueAction(action);
	}
})