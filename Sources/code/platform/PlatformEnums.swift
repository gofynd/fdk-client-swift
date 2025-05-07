
import Foundation












public extension PlatformClient.Catalog {
    
    
    
    
    /*
        Enum: CurrencyCodeEnum
        Used By: Catalog
    */
    enum CurrencyCodeEnum: String, Codable {
        
        case inr = "INR"
        
        case usd = "USD"
        
        case eur = "EUR"
        
    }

    
}



public extension PlatformClient.ApplicationClient.Catalog {
    
    
    
    
    /*
        Enum: CurrencyCodeEnum
        Used By: Catalog
    */
    enum CurrencyCodeEnum: String, Codable {
        
        case inr = "INR"
        
        case usd = "USD"
        
        case eur = "EUR"
        
    }

    
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













public extension PlatformClient.Payment {
    
    
    /*
        Enum: StatusSchema
        Used By: Payment
    */
    enum StatusSchema: String, Codable {
        
        case started = "started"
        
        case completed = "completed"
        
        case partialPaid = "partial_paid"
        
        case failed = "failed"
        
        case pending = "pending"
        
        case refundDone = "refund_done"
        
        case refundInitiated = "refund_initiated"
        
        case partialRefund = "partial_refund"
        
        case refundFailed = "refund_failed"
        
        case refundPending = "refund_pending"
        
        case refundAcknowledge = "refund_acknowledge"
        
    }

    
    
    /*
        Enum: DeviceTypeSchema
        Used By: Payment
    */
    enum DeviceTypeSchema: String, Codable {
        
        case android = "android"
        
        case ios = "ios"
        
        case desktop = "desktop"
        
        case iosPos = "ios-pos"
        
        case androidPos = "android-pos"
        
        case desktopPaymentLink = "desktop-payment_link"
        
    }

    
    
    /*
        Enum: TransactionTypeSchema
        Used By: Payment
    */
    enum TransactionTypeSchema: String, Codable {
        
        case forward = "FORWARD"
        
        case refund = "REFUND"
        
        case autoRefund = "AUTO_REFUND"
        
    }

    
}



public extension PlatformClient.ApplicationClient.Payment {
    
    
    /*
        Enum: StatusSchema
        Used By: Payment
    */
    enum StatusSchema: String, Codable {
        
        case started = "started"
        
        case completed = "completed"
        
        case partialPaid = "partial_paid"
        
        case failed = "failed"
        
        case pending = "pending"
        
        case refundDone = "refund_done"
        
        case refundInitiated = "refund_initiated"
        
        case partialRefund = "partial_refund"
        
        case refundFailed = "refund_failed"
        
        case refundPending = "refund_pending"
        
        case refundAcknowledge = "refund_acknowledge"
        
    }

    
    
    /*
        Enum: DeviceTypeSchema
        Used By: Payment
    */
    enum DeviceTypeSchema: String, Codable {
        
        case android = "android"
        
        case ios = "ios"
        
        case desktop = "desktop"
        
        case iosPos = "ios-pos"
        
        case androidPos = "android-pos"
        
        case desktopPaymentLink = "desktop-payment_link"
        
    }

    
    
    /*
        Enum: TransactionTypeSchema
        Used By: Payment
    */
    enum TransactionTypeSchema: String, Codable {
        
        case forward = "FORWARD"
        
        case refund = "REFUND"
        
        case autoRefund = "AUTO_REFUND"
        
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





