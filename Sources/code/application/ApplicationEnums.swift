
import Foundation


public extension ApplicationClient.Cart {
    
    
    /*
        Enum: OrderingSource
        Used By: Cart
    */
    enum OrderingSource: String, Codable {
        
        case storefront = "storefront"
        
        case storeOsPos = "store_os_pos"
        
        case kiosk = "kiosk"
        
        case scanGo = "scan_go"
        
        case smartTrolley = "smart_trolley"
        
        case marketplace = "marketplace"
        
        case socialCommerce = "social_commerce"
        
        case ondc = "ondc"
        
    }

    
}











public extension ApplicationClient.Content {
    
    
    
}







public extension ApplicationClient.Lead {
    
    
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













public extension ApplicationClient.Theme {
    
    
    
}





