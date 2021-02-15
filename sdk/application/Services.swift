

    
public class Lead {
    var config: Setup

    public init(config: Setup) {
        self.config = config;
    }
    
    /**
    *
    * Summary: Get Ticket with the specific id
    * Description:  Get Ticket with the specific id, this is used to view the ticket details
    **/
    public func getTicket(
        id: String,  
        opts: [String: Any]?,
        onResponse: @escaping (_ response: Ticket?, _ error: [String: Any]?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: config,
            method: "get",
            url: config.domain.appendAsPath("/services/application/lead/v1.0/ticket/\(id)"),
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let _ = error, let data = responseData {
                    let errorResponse = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    onResponse(nil, errorResponse, responseCode)
                } else if let data = responseData {
                    let response = Utility.decode(Ticket.self, from: data)
                    onResponse(response, nil, responseCode)
                } else {
                    onResponse(nil, nil, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Create history for specific Ticket
    * Description:  Create history for specific Ticket, this history is seen on ticket detail page, this can be comment, log or rating.
    **/
    public func createHistoryForTicket(
        ticketId: String,  
        opts: [String: Any]?,
        onResponse: @escaping (_ response: TicketHistory?, _ error: [String: Any]?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: config,
            method: "post",
            url: config.domain.appendAsPath("/services/application/lead/v1.0/ticket/\(ticketId)/history"),
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let _ = error, let data = responseData {
                    let errorResponse = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    onResponse(nil, errorResponse, responseCode)
                } else if let data = responseData {
                    let response = Utility.decode(TicketHistory.self, from: data)
                    onResponse(response, nil, responseCode)
                } else {
                    onResponse(nil, nil, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Create Ticket
    * Description:  This is used to Create Ticket.
    **/
    public func createTicket(
         
        opts: [String: Any]?,
        onResponse: @escaping (_ response: Ticket?, _ error: [String: Any]?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: config,
            method: "post",
            url: config.domain.appendAsPath("/services/application/lead/v1.0/ticket/"),
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let _ = error, let data = responseData {
                    let errorResponse = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    onResponse(nil, errorResponse, responseCode)
                } else if let data = responseData {
                    let response = Utility.decode(Ticket.self, from: data)
                    onResponse(response, nil, responseCode)
                } else {
                    onResponse(nil, nil, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get specific Custom Form using it's slug
    * Description:  Get specific Custom Form using it's slug, this is used to view the form.
    **/
    public func getCustomForm(
        slug: String,  
        opts: [String: Any]?,
        onResponse: @escaping (_ response: CustomForm?, _ error: [String: Any]?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: config,
            method: "get",
            url: config.domain.appendAsPath("/services/application/lead/v1.0/form/\(slug)"),
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let _ = error, let data = responseData {
                    let errorResponse = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    onResponse(nil, errorResponse, responseCode)
                } else if let data = responseData {
                    let response = Utility.decode(CustomForm.self, from: data)
                    onResponse(response, nil, responseCode)
                } else {
                    onResponse(nil, nil, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Submit Response for a specific Custom Form using it's slug
    * Description:  Submit Response for a specific Custom Form using it's slug, this response is then used to create a ticket on behalf of the user.
    **/
    public func submitCustomForm(
        slug: String,  
        opts: [String: Any]?,
        onResponse: @escaping (_ response: [String: Any]?, _ error: [String: Any]?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: config,
            method: "post",
            url: config.domain.appendAsPath("/services/application/lead/v1.0/form/\(slug)/submit"),
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let _ = error, let data = responseData {
                    let errorResponse = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    onResponse(nil, errorResponse, responseCode)
                } else if let data = responseData {
                    let response = Utility.decode([String: Any].self, from: data)
                    onResponse(response, nil, responseCode)
                } else {
                    onResponse(nil, nil, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get participants of a specific Video Room using it's unique name
    * Description:  Get participants of a specific Video Room using it's unique name, this can be used to check if people are already there in the room and also to show their names.
    **/
    public func getParticipantsInsideVideoRoom(
        uniqueName: String,  
        opts: [String: Any]?,
        onResponse: @escaping (_ response: [String: Any]?, _ error: [String: Any]?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: config,
            method: "get",
            url: config.domain.appendAsPath("/services/application/lead/v1.0/video/room/\(uniqueName)/participants"),
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let _ = error, let data = responseData {
                    let errorResponse = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    onResponse(nil, errorResponse, responseCode)
                } else if let data = responseData {
                    let response = Utility.decode([String: Any].self, from: data)
                    onResponse(response, nil, responseCode)
                } else {
                    onResponse(nil, nil, responseCode)
                }
        });
    }
    
    /**
    *
    * Summary: Get Token to join a specific Video Room using it's unqiue name
    * Description:  Get Token to join a specific Video Room using it's unqiue name, this Token is your ticket to Room and also creates your identity there.
    **/
    public func getTokenForVideoRoom(
        uniqueName: String,  
        opts: [String: Any]?,
        onResponse: @escaping (_ response: [String: Any]?, _ error: [String: Any]?, _ responseCode: Int?) -> Void
    ) {
        APIClient.execute(
            config: config,
            method: "get",
            url: config.domain.appendAsPath("/services/application/lead/v1.0/video/room/\(uniqueName)/token"),
            query: opts,
            body: nil,
            onResponse: { (responseData, error, responseCode) in
                if let _ = error, let data = responseData {
                    let errorResponse = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
                    onResponse(nil, errorResponse, responseCode)
                } else if let data = responseData {
                    let response = Utility.decode([String: Any].self, from: data)
                    onResponse(response, nil, responseCode)
                } else {
                    onResponse(nil, nil, responseCode)
                }
        });
    }
    
}

