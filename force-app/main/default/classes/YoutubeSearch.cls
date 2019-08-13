public with sharing class YoutubeSearch {
	
    public static final string key = 'AIzaSyDOjrz2-L_o0Wm1pCixV4962CsRbUKT6Kw';
    public static final string youtubeSearchURL = 'https://www.googleapis.com/youtube/v3/search?key=' + key + '&part=snippet';
    
    @AuraEnabled
    public static String search(String searchStr){
        Http h = new Http();
        // Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
        HttpRequest req = new HttpRequest();
        String url = youtubeSearchURL + '&q=' + EncodingUtil.urlencode(searchstr, 'UTF-8');
        req.setEndpoint(url);
        req.setMethod('GET');
        // Send the request, and return a response
        HttpResponse res = h.send(req);
        //system.debug('RESULTS..>>>' + YoutubeDataParser.parse(res.getBody()));
        //return YoutubeDataParser.parse(res.getBody());
        return res.getBody();
    }
}