
import Foundation












public extension PlatformClient.Catalog {
    
    
    
}



public extension PlatformClient.ApplicationClient.Catalog {
    
    
    
}















public extension PlatformClient.Content {
    
    
    
}



public extension PlatformClient.ApplicationClient.Content {
    
    
    
}













public extension PlatformClient.Lead {
    
    
    /*
        Enum: TicketAssetTypeEnum
        Used By: Lead
    */
    enum TicketAssetTypeEnum: String, Codable {
        
        case image = "image"
        
        case video = "video"
        
        case file = "file"
        
        case youtube = "youtube"
        
        case product = "product"
        
        case collection = "collection"
        
        case brand = "brand"
        
        case shipment = "shipment"
        
        case order = "order"
        
    }

    
    
    /*
        Enum: PriorityEnum
        Used By: Lead
    */
    enum PriorityEnum: String, Codable {
        
        case high = "high"
        
        case low = "low"
        
        case medium = "medium"
        
        case urgent = "urgent"
        
    }

    
    
    /*
        Enum: HistoryTypeEnum
        Used By: Lead
    */
    enum HistoryTypeEnum: String, Codable {
        
        case rating = "rating"
        
        case log = "log"
        
        case comment = "comment"
        
        case diff = "diff"
        
        case thread = "thread"
        
    }

    
    
    /*
        Enum: TicketSourceEnum
        Used By: Lead
    */
    enum TicketSourceEnum: String, Codable {
        
        case platformPanel = "platform_panel"
        
        case salesChannel = "sales_channel"
        
        case partnerPanel = "partner_panel"
        
    }

    
}



public extension PlatformClient.ApplicationClient.Lead {
    
    
    /*
        Enum: TicketAssetTypeEnum
        Used By: Lead
    */
    enum TicketAssetTypeEnum: String, Codable {
        
        case image = "image"
        
        case video = "video"
        
        case file = "file"
        
        case youtube = "youtube"
        
        case product = "product"
        
        case collection = "collection"
        
        case brand = "brand"
        
        case shipment = "shipment"
        
        case order = "order"
        
    }

    
    
    /*
        Enum: PriorityEnum
        Used By: Lead
    */
    enum PriorityEnum: String, Codable {
        
        case high = "high"
        
        case low = "low"
        
        case medium = "medium"
        
        case urgent = "urgent"
        
    }

    
    
    /*
        Enum: HistoryTypeEnum
        Used By: Lead
    */
    enum HistoryTypeEnum: String, Codable {
        
        case rating = "rating"
        
        case log = "log"
        
        case comment = "comment"
        
        case diff = "diff"
        
        case thread = "thread"
        
    }

    
    
    /*
        Enum: TicketSourceEnum
        Used By: Lead
    */
    enum TicketSourceEnum: String, Codable {
        
        case platformPanel = "platform_panel"
        
        case salesChannel = "sales_channel"
        
        case partnerPanel = "partner_panel"
        
    }

    
}



















public extension PlatformClient.Theme {
    
    
    
}



public extension PlatformClient.ApplicationClient.Theme {
    
    
    
}









public extension PlatformClient.Webhook {
    
    
    /*
        Enum: SubscriberStatus
        Used By: Webhook
    */
    enum SubscriberStatus: String, Codable {
        
        case active = "active"
        
        case inactive = "inactive"
        
    }

    
}





