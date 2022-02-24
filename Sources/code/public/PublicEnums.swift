
import Foundation
public extension PublicClient {
    
    
    
    
    /*
        Enum: SubscriberStatus
        Used By: Webhook
    */
    enum SubscriberStatus: String, Codable {
        
        case active = "active"
        
        case inactive = "inactive"
        
        case blocked = "blocked"
        
    }

    
}