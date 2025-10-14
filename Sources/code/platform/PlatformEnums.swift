
import Foundation












public extension PlatformClient.Catalog {
    
    
    /*
        Enum: TaxStatusEnum
        Used By: Catalog
    */
    enum TaxStatusEnum: String, Codable {
        
        case active = "ACTIVE"
        
        case inactive = "INACTIVE"
        
        case deleted = "DELETED"
        
    }

    
    
    /*
        Enum: HsTypeEnum
        Used By: Catalog
    */
    enum HsTypeEnum: String, Codable {
        
        case hs = "HS"
        
        case sac = "SAC"
        
    }

    
    
    
}



public extension PlatformClient.ApplicationClient.Catalog {
    
    
    /*
        Enum: TaxStatusEnum
        Used By: Catalog
    */
    enum TaxStatusEnum: String, Codable {
        
        case active = "ACTIVE"
        
        case inactive = "INACTIVE"
        
        case deleted = "DELETED"
        
    }

    
    
    /*
        Enum: HsTypeEnum
        Used By: Catalog
    */
    enum HsTypeEnum: String, Codable {
        
        case hs = "HS"
        
        case sac = "SAC"
        
    }

    
    
    
}















public extension PlatformClient.Content {
    
    
    /*
        Enum: GenerationEntityType
        Used By: Content
    */
    enum GenerationEntityType: String, Codable {
        
        case title = "title"
        
        case description = "description"
        
    }

    
    
    
}



public extension PlatformClient.ApplicationClient.Content {
    
    
    /*
        Enum: GenerationEntityType
        Used By: Content
    */
    enum GenerationEntityType: String, Codable {
        
        case title = "title"
        
        case description = "description"
        
    }

    
    
    
}











public extension PlatformClient.Lead {
    
    
    /*
        Enum: PriorityEnum
        Used By: Lead
    */
    enum PriorityEnum: String, Codable {
        
        case low = "low"
        
        case medium = "medium"
        
        case high = "high"
        
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
        
        case thread = "thread"
        
    }

    
    
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
        Enum: TicketSourceEnum
        Used By: Lead
    */
    enum TicketSourceEnum: String, Codable {
        
        case platformPanel = "platform_panel"
        
        case salesChannel = "sales_channel"
        
    }

    
}



public extension PlatformClient.ApplicationClient.Lead {
    
    
    /*
        Enum: PriorityEnum
        Used By: Lead
    */
    enum PriorityEnum: String, Codable {
        
        case low = "low"
        
        case medium = "medium"
        
        case high = "high"
        
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
        
        case thread = "thread"
        
    }

    
    
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
        Enum: TicketSourceEnum
        Used By: Lead
    */
    enum TicketSourceEnum: String, Codable {
        
        case platformPanel = "platform_panel"
        
        case salesChannel = "sales_channel"
        
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





