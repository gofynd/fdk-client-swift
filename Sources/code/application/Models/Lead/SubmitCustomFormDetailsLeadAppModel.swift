

import Foundation
public extension ApplicationClient.Lead {
    /*
        Model: SubmitCustomFormDetails
        Used By: Lead
    */
    class SubmitCustomFormDetails: Codable {
        
        public var message: String
        
        public var ticket: Ticket?
        
        public var response: FormFieldDetails?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case ticket = "ticket"
            
            case response = "response"
            
        }

        public init(message: String, response: FormFieldDetails? = nil, ticket: Ticket? = nil) {
            
            self.message = message
            
            self.ticket = ticket
            
            self.response = response
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            do {
                ticket = try container.decode(Ticket.self, forKey: .ticket)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                response = try container.decode(FormFieldDetails.self, forKey: .response)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(ticket, forKey: .ticket)
            
            
            
            try? container.encodeIfPresent(response, forKey: .response)
            
            
        }
        
    }
}
